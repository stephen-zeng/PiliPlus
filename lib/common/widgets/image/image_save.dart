import 'package:PiliPlus/common/style.dart';
import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/selection_text.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/pages/common/publish/publish_route.dart';
import 'package:PiliPlus/utils/image_utils.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:material_ui/material_ui.dart';

const _iconSize = 20.0;

void imageSaveDialog({
  required String? title,
  required String? cover,
  dynamic aid,
  String? bvid,
}) {
  Get.key.currentState!.push(
    PublishRoute(
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) {
        final colorScheme = ColorScheme.of(context);
        final imgWidth = MediaQuery.sizeOf(context).shortestSide - 16;
        final height = imgWidth / Style.aspectRatio16x9;
        return Center(
          child: Container(
            width: imgWidth,
            margin: const .symmetric(horizontal: Style.safeSpace),
            decoration: _ImageDecoration(
              imageHeight: height,
              color: colorScheme.surface,
              borderRadius: const .all(Style.imgRadius),
            ),
            child: Column(
              mainAxisSize: .min,
              children: [
                IgnorePointer(
                  child: NetworkImgLayer(
                    src: cover,
                    quality: 100,
                    width: imgWidth,
                    height: height,
                    borderRadius: const .vertical(top: Style.imgRadius),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  width: 30,
                  height: 30,
                  child: IconButton(
                    tooltip: 'image_save.close'.tr,
                    style: IconButton.styleFrom(
                      padding: .zero,
                      backgroundColor: Colors.black.withValues(alpha: 0.3),
                    ),
                    onPressed: SmartDialog.dismiss,
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 8, 10),
              child: Row(
                children: [
                  if (title != null)
                    Expanded(
                      child: SelectableText(
                        title,
                        style: theme.textTheme.titleSmall,
                      ),
                    )
                  else
                    const Spacer(),
                  if (aid != null || bvid != null)
                    iconButton(
                      iconSize: iconSize,
                      tooltip: 'image_save.watch_later'.tr,
                      onPressed: () => {
                        SmartDialog.dismiss(),
                        UserHttp.toViewLater(aid: aid, bvid: bvid),
                      },
                      icon: const Icon(Icons.watch_later_outlined),
                    ),
                  if (cover != null && cover.isNotEmpty) ...[
                    if (PlatformUtils.isMobile)
                      iconButton(
                        iconSize: iconSize,
                        tooltip: 'image_save.share'.tr,
                        onPressed: () {
                          SmartDialog.dismiss();
                          ImageUtils.onShareImg(cover);
                        },
                        icon: const Icon(Icons.share),
                      ),
                    iconButton(
                      iconSize: iconSize,
                      tooltip: 'image_save.save_cover'.tr,
                      onPressed: () async {
                        bool saveStatus = await ImageUtils.downloadImg([cover]);
                        if (saveStatus) {
                          SmartDialog.dismiss();
                        }
                      },
                      icon: const Icon(Icons.download),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

class _ImageDecoration extends Decoration {
  const _ImageDecoration({
    required this.color,
    required this.imageHeight,
    required this.borderRadius,
  });

  final Color color;
  final double imageHeight;
  final BorderRadius borderRadius;

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    return Path()..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is _ImageDecoration &&
        other.color == color &&
        other.borderRadius == borderRadius &&
        imageHeight == other.imageHeight;
  }

  @override
  int get hashCode => Object.hash(color, borderRadius, imageHeight);

  @override
  bool hitTest(Size size, Offset position, {TextDirection? textDirection}) {
    return position.dy >= imageHeight;
  }

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    assert(onChanged != null);
    return _ImageDecorationPainter(this, onChanged);
  }
}

class _ImageDecorationPainter extends BoxPainter {
  _ImageDecorationPainter(this._decoration, super.onChanged);

  final _ImageDecoration _decoration;

  Paint? _cachedBackgroundPaint;
  Paint _getBackgroundPaint(Rect rect) {
    if (_cachedBackgroundPaint == null) {
      final paint = Paint()..color = _decoration.color;
      _cachedBackgroundPaint = paint;
    }

    return _cachedBackgroundPaint!;
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;
    canvas.drawRRect(
      _decoration.borderRadius.toRRect(rect),
      _getBackgroundPaint(rect),
    );
  }

  @override
  String toString() {
    return '_ImagePainter for $_decoration';
  }
}
