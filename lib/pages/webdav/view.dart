import 'package:PiliPlus/common/style.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/webdav/webdav.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class WebDavSettingPage extends StatefulWidget {
  const WebDavSettingPage({
    super.key,
    this.showAppBar = true,
  });

  final bool showAppBar;

  @override
  State<WebDavSettingPage> createState() => _WebDavSettingPageState();
}

class _WebDavSettingPageState extends State<WebDavSettingPage> {
  final _uriCtr = TextEditingController(text: Pref.webdavUri);
  final _usernameCtr = TextEditingController(text: Pref.webdavUsername);
  final _passwordCtr = TextEditingController(text: Pref.webdavPassword);
  final _directoryCtr = TextEditingController(text: Pref.webdavDirectory);
  bool _obscureText = true;

  @override
  void dispose() {
    _uriCtr.dispose();
    _usernameCtr.dispose();
    _passwordCtr.dispose();
    _directoryCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showAppBar = widget.showAppBar;
    final padding = MediaQuery.viewPaddingOf(context);
    return Scaffold(
      appBar: showAppBar ? AppBar(title: Text('setting.webdav.title'.tr)) : null,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView(
            padding: padding.copyWith(
              top: 20,
              left: 20 + (showAppBar ? padding.left : 0),
              right: 20 + (showAppBar ? padding.right : 0),
              bottom: padding.bottom + 100,
            ),
            children: [
              TextField(
                controller: _uriCtr,
                decoration: InputDecoration(
                  labelText: 'webdav.address'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _usernameCtr,
                decoration: InputDecoration(
                  labelText: 'search.user'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordCtr,
                autofillHints: const [AutofillHints.password],
                decoration: InputDecoration(
                  labelText: 'login.password_label'.tr,
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        setState(() => _obscureText = !_obscureText),
                    icon: _obscureText
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                obscureText: _obscureText,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _directoryCtr,
                decoration: InputDecoration(
                  labelText: 'webdav.path'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: FilledButton.tonal(
                      style: FilledButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: Style.mdRadius,
                        ),
                      ),
                      onPressed: WebDav().backup,
                      child: Text('webdav.backup_settings'.tr),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: FilledButton.tonal(
                      style: FilledButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: Style.mdRadius,
                        ),
                      ),
                      onPressed: WebDav().restore,
                      child: Text('webdav.restore_settings'.tr),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right:
                kFloatingActionButtonMargin + (showAppBar ? padding.right : 0),
            bottom: kFloatingActionButtonMargin + padding.bottom,
            child: FloatingActionButton(
              child: const Icon(Icons.save),
              onPressed: () async {
                await GStorage.setting.putAll({
                  SettingBoxKey.webdavUri: _uriCtr.text,
                  SettingBoxKey.webdavUsername: _usernameCtr.text,
                  SettingBoxKey.webdavPassword: _passwordCtr.text,
                  SettingBoxKey.webdavDirectory: _directoryCtr.text,
                });
                if (_uriCtr.text.isEmpty) {
                  return;
                }
                try {
                  final res = await WebDav().init();
                  if (res.first) {
                    SmartDialog.showToast('webdav.configuration_successful'.tr);
                  } else {
                    SmartDialog.showToast('webdav.configuration_failed_1'.trParams({'var0': (res.second).toString()}));
                  }
                } catch (e) {
                  SmartDialog.showToast('webdav.configuration_failed_1'.trParams({'var0': (e.toString()).toString()}));
                  return;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
