#!/usr/bin/env python3
"""Apply the framework and UI package patches used by the iOS CI build."""

import json
import os
from pathlib import Path
import re
import shutil
import subprocess
from urllib.parse import unquote, urlparse


ROOT = Path(__file__).resolve().parents[1]
SDK_PATCHES = (
    "ModalBarrier", "TextSelection", "MouseCursor", "ImageAnim", "LayoutBuilder",
    "NavigationDrawer", "PopupMenu", "FAB", "NullSafetySelectableRegion",
    "SelectableRegion", "EditableText", "TextField", "ScrollPosition",
    "Scrollable", "ScrollableGesture", "DraggableScrollableSheet", "Scaffold",
    "Text", "TextPainter", "Sliver", "RefreshIndicator", "ScrollView",
    "BottomSheetIOSFlutter", "Navigator",
)
MATERIAL_PATCHES = (
    "ModalBarrierPatchMaterial", "NavigationDrawerPatchMaterial",
    "PopupMenuPatchMaterial", "FABPatchMaterial", "TextFieldPatchMaterial",
    "ScaffoldPatchMaterial", "RefreshIndicatorPatchMaterial", "TabsPatchMaterial",
    "BottomSheetIOSFlutterMaterialPatchMaterial",
)


def apply_patch(directory: Path, patch: Path) -> None:
    command = ["git", "apply"]
    check = subprocess.run(
        command + ["--check", str(patch)], cwd=directory,
        capture_output=True, text=True,
    )
    if check.returncode == 0:
        subprocess.run(command + [str(patch)], cwd=directory, check=True)
        print(f"Applied {patch.relative_to(ROOT)}", flush=True)
        return
    reverse = subprocess.run(
        command + ["--reverse", "--check", str(patch)], cwd=directory,
        capture_output=True, text=True,
    )
    if reverse.returncode == 0:
        print(f"Already applied: {patch.relative_to(ROOT)}", flush=True)
        return
    raise RuntimeError(f"Cannot apply {patch} in {directory}:\n{check.stderr}")


def main() -> None:
    flutter = shutil.which("flutter")
    if flutter is None:
        raise RuntimeError("Add the Flutter SDK specified by .fvmrc to PATH first.")
    sdk = Path(os.environ.get("FLUTTER_ROOT", Path(flutter).resolve().parent.parent))
    if not (sdk / "packages/flutter/lib").is_dir():
        raise RuntimeError("Set FLUTTER_ROOT to the Flutter SDK directory.")

    subprocess.run([flutter, "pub", "get"], cwd=ROOT, check=True)
    # Read filenames from the existing CI recipe to keep both build paths aligned.
    recipe = (ROOT / "lib/scripts/patch.ps1").read_text()
    patches = dict(re.findall(r'\$(\w+)\s*=\s*"(lib/scripts/[^"\n]+\.patch)"', recipe))
    for name in SDK_PATCHES:
        apply_patch(sdk, ROOT / patches[name + "Patch"])

    config_path = ROOT / ".dart_tool/package_config.json"
    packages = json.loads(config_path.read_text())["packages"]
    for name, patch_names in (
        ("material_ui", MATERIAL_PATCHES),
        ("cupertino_ui", ("BottomSheetIOSFlutterPatchCupertino",)),
    ):
        package = next(p for p in packages if p["name"] == name)
        uri = urlparse(package["rootUri"])
        directory = Path(unquote(uri.path))
        if not uri.scheme:
            directory = (config_path.parent / directory).resolve()
        for patch_name in patch_names:
            apply_patch(directory, ROOT / patches[patch_name])


if __name__ == "__main__":
    main()
