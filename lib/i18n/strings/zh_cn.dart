// 简体中文 (zh_CN)
// 键名规范：'模块.含义'，插值用 @name 占位（配合 .trParams）。
const Map<String, String> zhCN = {
  // ===== common =====
  'common.confirm': '确定',
  'common.cancel': '取消',
  'common.tip': '提示',
  'common.loading': '加载中...',
  'common.success': '操作成功',
  'common.fail': '操作失败',
  'common.reset': '重置',
  'common.set_success': '设置成功',
  'common.reboot_effect': '重启生效',
  'common.set_success_reboot': '设置成功，重启生效',
  'common.reset_success_reboot': '重置成功，重启生效',

  // ===== about =====
  'about.title': '关于',
  'about.app_desc': '使用Flutter开发的B站第三方客户端',
  'about.app_semantics': '与你一起，发现不一样的世界',
  'about.a11y': '无障碍适配',
  'about.current_version': '当前版本',
  'about.open_supported_links': '打开受支持的链接',
  'about.feedback': '问题反馈',
  'about.error_log': '错误日志',
  'about.clear_log_hint': '长按清除日志',
  'about.clear_cache_confirm': '该操作将清除图片及网络请求缓存数据，确认清除？',
  'about.clearing': '正在清除...',
  'about.clear_success': '清除成功',
  'about.clear_cache': '清除缓存',
  'about.cache_size': '图片及网络缓存 @size',
  'about.import_export_login': '导入/导出登录信息',
  'about.login_info': '登录信息',
  'about.import_export_setting': '导入/导出设置',
  'about.setting': '设置',
  'about.reset_all': '重置所有设置',
  'about.reset_all_confirm': '是否重置所有设置？',
  'about.reset_exportable': '重置可导出的设置',
  'about.reset_success': '重置成功',
  'about.reset_all_data': '重置所有数据（含登录信息）',

  // ===== setting / language =====
  'setting.language.title': '语言',
  'setting.language.system': '跟随系统',
  'setting.language.subtitle': '切换应用界面语言',

  // ===== setting / main =====
  'setting.title': '设置',
  'setting.search': '搜索',
  'setting.switch_account': '切换账号',
  'setting.logout': '退出登录',
  'setting.logout_select': '选择要登出的账号uid',
  'setting.logout_confirm': '确认要退出以下账号登录吗\n\n@list',
  'setting.logout_misclick': '点错了',
  'setting.logout_only': '仅登出',
  // section titles
  'setting.privacy.title': '隐私设置',
  'setting.recommend.title': '推荐流设置',
  'setting.video.title': '音视频设置',
  'setting.play.title': '播放器设置',
  'setting.style.title': '外观设置',
  'setting.extra.title': '其它设置',
  'setting.webdav.title': 'WebDAV 设置',
  // section subtitles
  'setting.privacy.subtitle': '黑名单',
  'setting.recommend.subtitle': '推荐来源（web/app）、刷新保留内容、过滤器',
  'setting.video.subtitle': '画质、音质、解码、缓冲、音频输出等',
  'setting.play.subtitle': '双击/长按、全屏、后台播放、弹幕、字幕、底部进度条等',
  'setting.style.subtitle': '横屏适配（平板）、侧栏、列宽、首页、动态红点、主题、字号、图片、帧率等',
  'setting.extra.subtitle': '震动、搜索、收藏、ai、评论、动态、代理、更新检查等',

  // ===== setting / privacy =====
  'setting.privacy.login_to_view': '登录后查看',
  'setting.privacy.blocklist_mgmt': '黑名单管理',
  'setting.privacy.blocked_users': '已拉黑用户',
  'setting.privacy.account_mode_detail': '账号模式详情',
  'setting.privacy.learn_account_mode': '了解账号模式',
  'setting.privacy.account_mode_desc': '查看各个账号模式作用的API列表',

  // ===== setting / recommend =====
  'setting.recommend.app_rcmd': '首页使用app端推荐',
  'setting.recommend.app_rcmd_desc': '若web端推荐不太符合预期，可尝试切换至app端推荐',
  'setting.recommend.save_refresh': '保留首页推荐刷新',
  'setting.recommend.save_refresh_desc': '下拉刷新时保留上次内容',
  'setting.recommend.show_last_pos': '显示上次看到位置提示',
  'setting.recommend.show_last_pos_desc': '保留上次推荐时，在上次刷新位置显示提示',
  'setting.recommend.like_ratio': '点赞率',
  'setting.recommend.title_kw_filter': '标题关键词过滤',
  'setting.recommend.zone_kw_filter': 'App推荐/热门/排行榜: 视频分区关键词过滤',
  'setting.recommend.duration': '视频时长',
  'setting.recommend.play_count': '播放量',
  'setting.recommend.exempt_followed': '已关注UP豁免推荐过滤',
  'setting.recommend.exempt_followed_desc': '推荐中已关注用户发布的内容不会被过滤',
  'setting.recommend.filter_related': '过滤器也应用于相关视频',
  'setting.recommend.filter_related_desc': '视频详情页的相关视频也进行过滤¹',
  'setting.recommend.footnote':
      '¹ 由于接口未提供关注信息，无法豁免相关视频中的已关注Up。\n\n'
          '* 其它（如热门视频、手动搜索、链接跳转等）均不受过滤器影响。\n'
          '* 设定较严苛的条件可导致推荐项数锐减或多次请求，请酌情选择。\n'
          '* 后续可能会增加更多过滤条件，敬请期待。',

  // ===== setting / video =====
  'setting.video.enable_ha': '开启硬解',
  'setting.video.enable_ha_desc': '以较低功耗播放视频，若异常卡死请关闭',
  'setting.video.p1080': '免登录1080P',
  'setting.video.p1080_desc': '免登录查看1080P视频',
  'setting.video.bili_data': 'B站定向流量支持',
  'setting.video.bili_data_desc': '若套餐含B站定向流量，则会自动使用。可查阅运营商的流量记录确认。',
  'setting.video.cdn': 'CDN 设置',
  'setting.video.cdn_cur': '当前使用：@desc，部分 CDN 可能失效，如无法播放请尝试切换',
  'setting.video.cdn_default': '默认',
  'setting.video.live_cdn': '直播 CDN 设置',
  'setting.video.live_cdn_cur': '当前使用：@url',
  'setting.video.input_cdn_host': '输入CDN host',
  'setting.video.cdn_speed_test': 'CDN 测速',
  'setting.video.cdn_speed_test_desc': '测速通过模拟加载视频实现，注意流量消耗，结果仅供参考',
  'setting.video.audio_no_cdn': '音频不跟随 CDN 设置',
  'setting.video.audio_no_cdn_desc': '直接采用备用 URL，可解决部分视频无声',
  'setting.video.default_qa': '默认画质',
  'setting.video.cellular_qa': '蜂窝网络画质',
  'setting.video.cur_qa': '当前画质：@desc',
  'setting.video.default_audio_qa': '默认音质',
  'setting.video.cellular_audio_qa': '蜂窝网络音质',
  'setting.video.cur_audio_qa': '当前音质：@desc',
  'setting.video.live_default_qa': '直播默认画质',
  'setting.video.live_cellular_qa': '蜂窝网络直播默认画质',
  'setting.video.decode_first': '首选解码格式',
  'setting.video.decode_first_desc': '首选解码格式：@fmt，请根据设备支持情况与需求调整',
  'setting.video.decode_second': '次选解码格式',
  'setting.video.decode_second_desc': '非杜比视频次选：@fmt，仍无则选择首个提供的解码格式',
  'setting.video.decode_default_title': '默认解码格式',
  'setting.video.audio_output': '音频输出设备',
  'setting.video.audio_output_cur': '当前：@val',
  'setting.video.buffer_size': '缓冲大小',
  'setting.video.buffer_size_desc':
      '当前：@size。同时为前向和后向缓冲区大小。对于直播流，无后向缓冲大小，全部转给前向（此选项即mpv的--demuxer-max-bytes，--demuxer-max-back-bytes）',
  'setting.video.buffer_sec': '缓冲时长',
  'setting.video.buffer_sec_desc':
      '当前：@sec。实际缓冲为二者最小值。对于直播流，该选项无效（此选项即mpv的--cache-secs）',
  'setting.video.autosync': '自动同步',
  'setting.video.autosync_desc': '当前：@val（此项即mpv的--autosync）',
  'setting.video.video_sync': '视频同步',
  'setting.video.video_sync_desc': '当前：@val（此项即mpv的--video-sync）',
  'setting.video.hwdec': '硬解模式',
  'setting.video.hwdec_desc': '当前：@val（此项即mpv的--hwdec）',

  // ===== setting / play =====
  'setting.play.dm_switch': '弹幕开关',
  'setting.play.dm_switch_desc': '是否展示弹幕',
  'setting.play.tap_dm': '启用点击弹幕',
  'setting.play.tap_dm_desc': '点击弹幕悬停，支持点赞、复制、举报操作',
  'setting.play.speed': '倍速设置',
  'setting.play.speed_desc': '设置视频播放速度',
  'setting.play.cover_preview': '封面悬停预览',
  'setting.play.cover_preview_desc': '点击设置触发时长(s)',
  'setting.play.cover_preview_trigger': '封面悬停预览触发时长',
  'setting.play.trigger_dur': '触发时长',
  'setting.play.angle': '倾斜角度阈值',
  'setting.play.angle_cur': '当前:「@deg°」',
  'setting.play.autoplay': '自动播放',
  'setting.play.autoplay_desc': '进入详情页自动播放',
  'setting.play.fs_lock_btn': '全屏显示锁定按钮',
  'setting.play.fs_screenshot_btn': '全屏显示截图按钮',
  'setting.play.fs_battery': '全屏显示电池电量',
  'setting.play.double_tap_seek': '双击快退/快进',
  'setting.play.double_tap_seek_desc': '左侧双击快退/右侧双击快进，关闭则双击均为暂停/播放',
  'setting.play.slide_brightness_volume': '左右侧滑动调节亮度/音量',
  'setting.play.system_brightness': '调节系统亮度',
  'setting.play.slide_fs': '中间滑动进入/退出全屏',
  'setting.play.player_volume': '播放器音量',
  'setting.play.max_volume': '最高音量',
  'setting.play.volume_cur': '当前:「@val%」',
  'setting.play.double_tap_dur': '双击快进/快退时长',
  'setting.play.slide_relative': '滑动快进/快退使用相对时长',
  'setting.play.slide_dur': '滑动快进/快退时长',
  'setting.play.slide_dur_desc': '从播放器一端滑到另一端的快进/快退时长',
  'setting.play.auto_subtitle': '自动启用字幕',
  'setting.play.subtitle_cur': '当前选择偏好：@desc',
  'setting.play.subtitle_pref': '字幕选择偏好',
  'setting.play.pause_on_min': '最小化时暂停/还原时播放',
  'setting.play.keyboard': '启用键盘控制',
  'setting.play.superchat_type': 'SuperChat (醒目留言) 显示类型',
  'setting.play.superchat_cur': '当前:「@val」',
  'setting.play.fs_sc_size': '全屏 SC 大小',
  'setting.play.fs_sc_size_desc': 'SuperChat (醒目留言) 大小设置',
  'setting.play.vertical_expand': '竖屏扩大展示',
  'setting.play.vertical_expand_desc':
      '小屏竖屏视频宽高比由16:9扩大至1:1（不支持收起）；横屏适配时，扩大至9:16',
  'setting.play.auto_fs': '自动全屏',
  'setting.play.auto_fs_desc': '视频开始播放时进入全屏',
  'setting.play.auto_exit_fs': '自动退出全屏',
  'setting.play.auto_exit_fs_desc': '视频结束播放时退出全屏',
  'setting.play.long_show_control': '延长播放控件显示时间',
  'setting.play.long_show_control_desc': '开启后延长至30秒，便于屏幕阅读器滑动切换控件焦点',
  'setting.play.bg_play': '后台播放',
  'setting.play.bg_play_desc': '进入后台时继续播放',
  'setting.play.bg_pip': '后台画中画',
  'setting.play.bg_pip_desc': '进入后台时以小窗形式（PiP）播放',
  'setting.play.suggest_bg_audio': '建议开启后台音频服务',
  'setting.play.pip_no_dm': '画中画不加载弹幕',
  'setting.play.pip_no_dm_desc': '当弹幕开关开启时，小窗屏蔽弹幕以获得较好的体验',
  'setting.play.fs_gesture_reverse': '全屏手势反向',
  'setting.play.fs_gesture_reverse_desc':
      '默认播放器中部向上滑动进入全屏，向下退出\n开启后向下全屏，向上退出',
  'setting.play.fs_action_items': '全屏展示点赞/投币/收藏等操作按钮',
  'setting.play.online_total': '观看人数',
  'setting.play.online_total_desc': '展示同时在看人数',
  'setting.play.fs_orientation': '默认全屏方向',
  'setting.play.fs_orientation_cur': '当前全屏方向：@desc',
  'setting.play.btm_progress': '底部进度条展示',
  'setting.play.btm_progress_cur': '当前展示方式：@desc',
  'setting.play.bg_audio_service': '后台音频服务',
  'setting.play.bg_audio_service_desc': '避免画中画没有播放暂停功能',
  'setting.play.play_order': '播放顺序',
  'setting.play.temp_player_conf': '播放器设置仅对当前生效',
  'setting.play.temp_player_conf_desc': '弹幕、字幕及部分设置中没有的设置除外',

  // ===== common / actions =====
  'common.save': '保存',
  'common.saved': '已保存',
  'common.copy': '复制',
  'common.copied': '复制成功',
  'common.clear': '清空',
  'common.cleared': '已清空',
  'common.add': '添加',
  'common.send': '发送',
  'common.share': '分享',
  'common.close': '关闭',
  'common.delete': '删除',
  'common.default': '默认',
  'common.custom': '自定义',
  'common.edit': '编辑',
  'common.expand': '展开',
  'common.collapse': '收起',
  'common.enabled': '开启',
  'common.disabled': '关闭',
  'common.enable': '开启',
  'common.disable': '关闭',
  'common.unlimited': '无限',
  'common.auto': '自动',
  'common.current': '当前：@value',
  'common.copied_to_clipboard': '已将 @value 复制至剪贴板',
  'common.copy_link': '复制链接',
  'common.save_image': '保存图片',
  'common.save_all': '保存全部',
  'common.save_all_images': '保存全部图片',
  'common.save_video': '保存视频',
  'common.save_live_photo': '保存实况',
  'common.open_in_browser': '网页打开',
  'common.long_image': '长图',
  'common.image_semantics': '图片，第 @index 张，共 @count 张',
  'common.unselect': '取消选择',
  'common.video_cached': '视频已缓存完成',

  // ===== shutdown timer =====
  'shutdown.pause_video': '暂停视频',
  'shutdown.exit_app': '退出APP',
  'shutdown.cancel': '取消定时关闭',
  'shutdown.set': '设置 @duration 后定时关闭',
  'shutdown.time_up_paused': '定时时间已到，已暂停',
  'shutdown.minute_60': '60分钟',
  'shutdown.hour_minute': '@hour小时@minute分钟',
  'shutdown.hour': '@hour小时',
  'shutdown.minute': '@minute分钟',
  'shutdown.title': '定时关闭',
  'shutdown.disabled': '禁用',
  'shutdown.wait_until_complete': '额外等待视频播放完毕',
  'shutdown.countdown_end': '倒计时结束:',

  // ===== share / login =====
  'share.to': '分享给',
  'share.more': '更多',
  'share.say_something': '说说你的想法吧...',
  'share.select_user': '请选择分享的用户',
  'share.success': '分享成功',
  'share.failed': '分享失败',
  'share.partial_failed': '部分分享失败',
  'login.devices': '登录设备',
  'login.current_device': '(本机)',

  // ===== setting / shared widgets =====
  'setting.model.tap_to_add': '点击添加',
  'setting.model.ban_word_hint': '使用|隔开，如：尝试|测试',
  'setting.model.filter_title': '@title过滤',
  'setting.model.filter_subtitle': '过滤掉@title小于「@value」的视频',
  'setting.model.current_value': '当前@title:「@value」',
  'setting.model.select_filter': '选择@title（0即不过滤）',
  'setting.model.select_value': '选择@title',
  'setting.model.custom_title': '自定义@title',
  'setting.switch.disable_ssl_confirm': '确定禁用 SSL 证书验证？',
  'setting.switch.disable_ssl_warning': '禁用容易受到中间人攻击',
  'setting.select.video_stream_error': '无法获取视频流',
  'setting.select.cdn_timeout': '测速超时',
  'setting.select.cdn_unavailable': '此视频可能无法替换为该CDN',
  'setting.select.cdn_failed': '测速失败',

  // ===== setting / style =====
  'setting.style.window_title_bar': '显示窗口标题栏',
  'setting.style.tray_icon': '显示托盘图标',
  'setting.style.use_ssd': '使用SSD（Server-Side Decoration）',
  'setting.style.horizontal_screen': '横屏适配',
  'setting.style.horizontal_screen_desc': '启用横屏布局与逻辑，平板、折叠屏等可开启；建议全屏方向设为【不改变当前方向】',
  'setting.style.use_sidebar': '改用侧边栏',
  'setting.style.use_sidebar_desc': '开启后底栏与顶栏被替换，且相关设置失效',
  'setting.style.app_font_weight': 'App字体字重',
  'setting.style.tap_to_set': '点击设置',
  'setting.style.ui_scale': '界面缩放',
  'setting.style.ui_scale_cur': '当前缩放比例：@value',
  'setting.style.ui_scale_label': '缩放比例',
  'setting.style.page_transition': '页面过渡动画',
  'setting.style.page_transition_cur': '当前：@value',
  'setting.style.opt_tablet_nav': '优化平板导航栏',
  'setting.style.md3_nav_bar': 'MD3样式底栏',
  'setting.style.md3_nav_bar_desc': 'Material You设计规范底栏，关闭可变窄',
  'setting.style.floating_nav_bar': '悬浮底栏',
  'setting.style.list_width_limit': '列表宽度（dp）限制',
  'setting.style.list_width_cur': '当前: 主页@home dp 其他@other dp，屏幕宽度:@screen dp。宽度越小列数越多。',
  'setting.style.remove_safe_area': '播放页移除安全边距',
  'setting.style.dark_video_page': '视频播放页使用深色主题',
  'setting.style.dynamics_waterfall': '动态页启用瀑布流',
  'setting.style.dynamics_waterfall_desc': '关闭会显示为单列',
  'setting.style.up_panel_position': '动态页UP主显示位置',
  'setting.style.up_panel_cur': '当前：@value',
  'setting.style.dynamics_show_all_followed': '动态页显示所有已关注UP主',
  'setting.style.expand_dyn_live': '动态页展开正在直播UP列表',
  'setting.style.dynamic_badge': '动态未读标记',
  'setting.style.badge_cur': '当前标记样式：@value',
  'setting.style.msg_badge': '消息未读标记',
  'setting.style.msg_unread_type': '消息未读类型',
  'setting.style.msg_unread_cur': '当前消息类型：@value',
  'setting.style.bar_hide_type': '顶/底栏收起类型',
  'setting.style.hide_top_bar': '首页顶栏收起',
  'setting.style.hide_top_bar_desc': '首页列表滑动时，收起顶栏',
  'setting.style.hide_bottom_bar': '首页底栏收起',
  'setting.style.hide_bottom_bar_desc': '首页列表滑动时，收起底栏',
  'setting.style.image_quality': '图片质量',
  'setting.style.preview_quality': '查看大图质量',
  'setting.style.image_quality_desc': '选择合适的图片清晰度，上限100%',
  'setting.style.reduce_lux_color': '深色下图片颜色叠加',
  'setting.style.reduce_lux_color_desc': '显示颜色=图片原色x所选颜色，大图查看不受影响',
  'setting.style.toast_opacity': '气泡提示不透明度',
  'setting.style.toast_opacity_desc': '自定义气泡提示(Toast)不透明度',
  'setting.style.theme_mode': '主题模式',
  'setting.style.theme_mode_cur': '当前模式：@value',
  'setting.style.pure_black_theme': '纯黑主题',
  'setting.style.app_theme': '应用主题',
  'setting.style.app_theme_cur': '当前主题：@value',
  'setting.style.dynamic_color': '动态取色',
  'setting.style.specified_color': '指定颜色',
  'setting.style.default_home': '默认启动页',
  'setting.style.default_home_cur': '当前启动页：@value',
  'setting.style.spring_params': '滑动动画弹簧参数',
  'setting.style.spring_params_title': '弹簧参数',
  'setting.style.spring_duration': '滑动时间',
  'setting.style.spring_physical': '物理参数',
  'setting.style.font_size': '字体大小',
  'setting.style.home_tabs': '首页标签页',
  'setting.style.home_tabs_desc': '删除或调换首页标签页',
  'setting.style.navbar_edit': 'Navbar编辑',
  'setting.style.navbar_edit_desc': '删除或调换Navbar',
  'setting.style.direct_exit': '返回时直接退出',
  'setting.style.direct_exit_desc': '开启后在主页任意tab按返回键都直接退出，关闭则先回到Navbar的第一个tab',
  'setting.style.display_mode': '屏幕帧率',
  'setting.style.card_width_title': '列表最大列宽度（默认240dp）',
  'setting.style.home_rcmd_feed': '主页推荐流',
  'setting.style.other': '其他',
  'setting.style.confirm_color': '确认使用#@color？',
  'setting.style.dark_color_warning': '所选颜色过于昏暗，可能会影响图片观看',
  'setting.style.color_select_title': '选择应用主题',
  'setting.style.palette_style': '调色板风格',
  'setting.style.dynamic_color_unsupported': '设备可能不支持动态取色',
  'setting.style.font_size_cur': '当前字体大小:@value',
  'setting.style.font_size_small': '小',
  'setting.style.font_size_large': '大',
  'setting.style.display_mode_hint': '没有生效？重启app试试',
  'setting.style.system_suffix': '  [系统]',
  'setting.style.bar_edit_title': '@title编辑',
  'setting.style.reorder_hint': '*长按拖动排序',
  'setting.style.save_success_restart': '保存成功，下次启动时生效',
  'setting.style.reset_success_restart': '重置成功，下次启动时生效',

  // ===== setting / extra =====
  'setting.extra.minimize_on_exit': '退出时最小化',
  'setting.extra.download_path': '缓存路径',
  'setting.extra.sponsor_block': '空降助手',
  'setting.extra.click_config': '点击配置',
  'setting.extra.pgc_skip_type': '番剧片头/片尾跳过类型',
  'setting.extra.check_dynamic': '检查未读动态',
  'setting.extra.check_dynamic_desc': '点击设置检查周期(min)',
  'setting.extra.show_view_points': '显示视频分段信息',
  'setting.extra.show_related_video': '视频页显示相关视频',
  'setting.extra.show_video_reply': '显示视频评论',
  'setting.extra.show_bangumi_reply': '显示番剧评论',
  'setting.extra.expand_intro': '默认展开视频简介',
  'setting.extra.expand_intro_h': '横屏自动展开视频简介',
  'setting.extra.horizontal_season_panel': '横屏分P/合集列表显示在Tab栏',
  'setting.extra.horizontal_member_page': '横屏播放页在侧栏打开UP主页',
  'setting.extra.horizontal_preview': '横屏在侧栏打开图片预览',
  'setting.extra.reply_collapse_lines': '评论折叠行数',
  'setting.extra.reply_collapse_lines_desc': '0行为不折叠',
  'setting.extra.line_count': '@count行',
  'setting.extra.line_unit': '行',
  'setting.extra.dm_line_height': '弹幕行高',
  'setting.extra.default_1_6': '默认1.6',
  'setting.extra.show_argue_msg': '显示视频警告/争议信息',
  'setting.extra.show_dyn_dispute': '显示动态警告/争议信息',
  'setting.extra.reverse_from_first': '分P/合集：倒序播放从首集开始播放',
  'setting.extra.reverse_from_first_desc': '开启则自动切换为倒序首集，否则保持当前集',
  'setting.extra.disable_ssl': '禁用 SSL 证书验证',
  'setting.extra.disable_ssl_desc': '谨慎开启，禁用容易受到中间人攻击',
  'setting.extra.continue_playing_part': '显示继续播放分P提示',
  'setting.extra.reply_kw_filter': '评论关键词过滤',
  'setting.extra.dyn_kw_filter': '动态关键词过滤',
  'setting.extra.open_in_browser': '使用外部浏览器打开链接',
  'setting.extra.touch_slop_h': '横向滑动阈值',
  'setting.extra.touch_slop_h_cur': '当前:「@value」，系统默认值: @default',
  'setting.extra.refresh_drag': '刷新滑动距离',
  'setting.extra.refresh_drag_cur': '当前滑动距离: @value x',
  'setting.extra.refresh_displacement': '刷新指示器高度',
  'setting.extra.refresh_displacement_cur': '当前指示器高度: @value',
  'setting.extra.show_vip_dm': '显示会员彩色弹幕',
  'setting.extra.merge_danmaku': '合并弹幕',
  'setting.extra.merge_danmaku_desc': '合并一段时间内获取到的相同弹幕',
  'setting.extra.show_hot_rcmd': '显示热门推荐',
  'setting.extra.show_hot_rcmd_desc': '热门页面显示每周必看等推荐内容入口',
  'setting.extra.audio_norm': '音量均衡',
  'setting.extra.audio_norm_cur': '当前:「@value」@fallback',
  'setting.extra.audio_norm_fallback_cur': '，无参数时:「@value」',
  'setting.extra.audio_norm_fallback_title': '服务器无loudnorm配置时使用',
  'setting.extra.super_resolution': '超分辨率',
  'setting.extra.super_resolution_cur': '当前:「@value」\n默认设置对番剧生效, 其他视频默认关闭\n超分辨率需要启用硬件解码, 若启用硬件解码后仍然不生效, 尝试切换硬件解码器为 auto-copy',
  'setting.extra.preinit_player': '提前初始化播放器',
  'setting.extra.preinit_player_desc': '相对减少手动播放加载时间',
  'setting.extra.main_tab_animation': '首页切换页面动画',
  'setting.extra.search_suggestion': '搜索建议',
  'setting.extra.record_search_history': '记录搜索历史',
  'setting.extra.show_decorate': '展示头像/评论/动态装饰',
  'setting.extra.show_medal': '显示粉丝勋章',
  'setting.extra.preview_live_photo': '预览 Live Photo',
  'setting.extra.preview_live_photo_desc': '开启则以视频形式预览 Live Photo，否则预览静态图片',
  'setting.extra.show_seek_preview': '滑动跳转预览视频缩略图',
  'setting.extra.show_dm_chart': '显示高能进度条',
  'setting.extra.show_dm_chart_desc': '高能进度条反应了在时域上，单位时间内弹幕发送量的变化趋势',
  'setting.extra.save_reply': '记录评论',
  'setting.extra.comm_antifraud': '发评反诈',
  'setting.extra.comm_antifraud_desc': '发送评论后检查评论是否可见',
  'setting.extra.bili_comm_antifraud': '使用「哔哩发评反诈」检查评论',
  'setting.extra.create_dyn_antifraud': '发布/转发动态反诈',
  'setting.extra.create_dyn_antifraud_desc': '发布/转发动态后检查动态是否可见',
  'setting.extra.anti_goods_dyn': '屏蔽带货动态',
  'setting.extra.anti_goods_reply': '屏蔽带货评论',
  'setting.extra.slide_dismiss_reply': '侧滑关闭二级页面',
  'setting.extra.shrink_video': '启用双指缩小视频',
  'setting.extra.show_dyn_action_bar': '动态/专栏详情页展示底部操作栏',
  'setting.extra.drag_subtitle': '启用拖拽字幕调整底部边距',
  'setting.extra.pgc_timeline': '展示追番时间表',
  'setting.extra.silent_download_img': '静默下载图片',
  'setting.extra.silent_download_img_desc': '不显示下载 Loading 弹窗',
  'setting.extra.img_menu': '长按/右键显示图片菜单',
  'setting.extra.feedback': '震动反馈',
  'setting.extra.feedback_desc': '请确定手机设置中已开启震动反馈',
  'setting.extra.hot_search': '大家都在搜',
  'setting.extra.hot_search_desc': '是否展示「大家都在搜」',
  'setting.extra.search_rcmd': '搜索发现',
  'setting.extra.search_rcmd_desc': '是否展示「搜索发现」',
  'setting.extra.search_default_word': '搜索默认词',
  'setting.extra.search_default_word_desc': '是否展示搜索框默认词',
  'setting.extra.quick_fav': '快速收藏',
  'setting.extra.quick_fav_desc': '点击设置默认收藏夹\n点按收藏至默认，长按选择文件夹',
  'setting.extra.reply_word_search': '评论区搜索关键词',
  'setting.extra.reply_word_search_desc': '展示评论区搜索关键词',
  'setting.extra.ai_summary': '启用AI总结',
  'setting.extra.ai_summary_desc': '视频详情页开启AI总结',
  'setting.extra.disable_like_msg': '消息页禁用"收到的赞"功能',
  'setting.extra.disable_like_msg_desc': '禁止打开入口，降低网络社交依赖',
  'setting.extra.default_show_comment': '默认展示评论区',
  'setting.extra.default_show_comment_desc': '在视频详情页默认切换至评论区页（仅Tab型布局）',
  'setting.extra.enable_http2': '启用HTTP/2',
  'setting.extra.retry_count': '连接重试次数',
  'setting.extra.retry_count_desc': '为0时禁用',
  'setting.extra.retry_delay': '连接重试间隔',
  'setting.extra.retry_delay_desc': '实际间隔 = 间隔 * 第x次重试',
  'setting.extra.reply_display': '评论展示',
  'setting.extra.reply_display_cur': '当前优先展示「@value」',
  'setting.extra.dynamic_display': '动态展示',
  'setting.extra.dynamic_display_cur': '当前优先展示「@value」',
  'setting.extra.dyn_interaction': '显示动态互动内容',
  'setting.extra.dyn_interaction_desc': '开启后则在动态卡片底部显示互动内容（如关注的人点赞、热评等）',
  'setting.extra.member_default_tab': '用户页默认展示TAB',
  'setting.extra.member_default_tab_cur': '当前优先展示「@value」',
  'setting.extra.member_shop_tab': '显示UP主页小店TAB',
  'setting.extra.proxy': '设置代理',
  'setting.extra.proxy_desc': '设置代理 host:port',
  'setting.extra.auto_clear_cache': '自动清除缓存',
  'setting.extra.auto_clear_cache_desc': '每次启动时清除缓存',
  'setting.extra.max_cache_size': '最大缓存大小',
  'setting.extra.max_cache_size_cur': '当前最大缓存大小: 「@value」',
  'setting.extra.auto_update': '检查更新',
  'setting.extra.auto_update_desc': '每次启动时检查是否需要更新',
  'setting.extra.custom_param': '自定义参数',
  'setting.extra.audio_norm_custom_hint': '等同于 --lavfi-complex="[aid1] 参数 [ao]"',
  'setting.extra.set_new_path': '设置新路径',
  'setting.extra.dynamic_period': '检查周期',
  'setting.extra.select_default_fav': '选择默认收藏夹',
  'setting.extra.proxy_host_label': '请输入Host，使用 . 分割',
  'setting.extra.proxy_port_label': '请输入Port',

  // ===== setting / pages =====
  'setting.play_speed.set_default': '设置为默认倍速',
  'setting.play_speed.set_long_press': '设置为默认长按倍速',
  'setting.play_speed.delete_item': '删除该项',
  'setting.play_speed.add_title': '添加倍速',
  'setting.play_speed.custom_speed': '自定义倍速',
  'setting.play_speed.exists': '该倍速已存在',
  'setting.play_speed.cannot_delete_default': '不支持删除默认倍速',
  'setting.play_speed.hint': '点击下方按钮设置默认（长按）倍速',
  'setting.play_speed.default_speed': '默认倍速',
  'setting.play_speed.auto_long_press': '动态长按倍速',
  'setting.play_speed.auto_long_press_desc': '根据默认倍速长按时自动双倍',
  'setting.play_speed.default_long_press': '默认长按倍速',
  'setting.play_speed.speed_list': '倍速列表',
  'setting.logs.title': '日志',
  'setting.logs.trigger_error': '引发错误',
  'setting.logs.enable_status': '已@status，重启生效',
  'setting.logs.toggle_log': '@action日志',
  'setting.logs.copy_logs': '复制日志',
  'setting.logs.error_feedback': '错误反馈',
  'setting.logs.clear_logs': '清空日志',
  'setting.logs.related_info': '相关信息',
  'setting.logs.device_info': '设备信息',
  'setting.logs.app_info': '应用信息',
  'setting.logs.build_info': '编译信息',
  'setting.logs.error_detail': '错误详情',
  'setting.logs.stack_trace': '堆栈跟踪',

  // ===== enum labels =====
  'enum.theme.light': '浅色',
  'enum.theme.dark': '深色',
  'enum.theme.system': '跟随系统',
  'enum.nav.home': '首页',
  'enum.nav.dynamics': '动态',
  'enum.nav.mine': '我的',
  'enum.home.live': '直播',
  'enum.home.rcmd': '推荐',
  'enum.home.hot': '热门',
  'enum.home.rank': '分区',
  'enum.home.bangumi': '番剧',
  'enum.home.cinema': '影视',
  'enum.bar_hide.instant': '即时',
  'enum.bar_hide.sync': '同步',
  'enum.badge.hidden': '隐藏',
  'enum.badge.point': '红点',
  'enum.badge.number': '数字',
  'enum.up_panel.top': '顶部',
  'enum.up_panel.left_fixed': '左侧常驻',
  'enum.up_panel.right_fixed': '右侧常驻',
  'enum.up_panel.left_drawer': '左侧抽屉',
  'enum.up_panel.right_drawer': '右侧抽屉',
  'enum.msg_unread.pm': '私信',
  'enum.msg_unread.reply': '回复我的',
  'enum.msg_unread.at': '@我',
  'enum.msg_unread.like': '收到的赞',
  'enum.msg_unread.sys_msg': '系统通知',
  'enum.super_chat.valid': '有效时间内显示',
  'enum.super_chat.persist': '常驻显示',
  'enum.super_chat.disable': '不显示',
  'enum.skip.always': '总是跳过',
  'enum.skip.once': '跳过一次',
  'enum.skip.manual': '手动跳过',
  'enum.skip.show_only': '仅显示',
  'enum.skip.disable': '禁用',
  'enum.audio_norm.disable': '禁用',
  'enum.audio_norm.dynaudnorm': '预设 dynaudnorm',
  'enum.audio_norm.loudnorm': '预设 loudnorm',
  'enum.audio_norm.custom': '自定义参数',
  'enum.super_resolution.disable': '禁用',
  'enum.super_resolution.efficiency': '效率',
  'enum.super_resolution.quality': '画质',
  'enum.reply_sort.time_title': '最新评论',
  'enum.reply_sort.time_label': '最新',
  'enum.reply_sort.time_text': '按时间',
  'enum.reply_sort.hot_title': '最热评论',
  'enum.reply_sort.hot_label': '最热',
  'enum.reply_sort.hot_text': '按热度',
  'enum.reply_sort.select_title': '精选评论',
  'enum.reply_sort.select_label': '精选',
  'enum.dynamics_tab.all': '全部',
  'enum.dynamics_tab.video': '投稿',
  'enum.dynamics_tab.pgc': '番剧',
  'enum.dynamics_tab.article': '专栏',
  'enum.dynamics_tab.up': 'UP',
  'enum.member_tab.default': '默认',
  'enum.member_tab.home': '主页',
  'enum.member_tab.dynamic': '动态',
  'enum.member_tab.contribute': '投稿',
  'enum.member_tab.favorite': '收藏',
  'enum.member_tab.bangumi': '番剧',
  'enum.member_tab.cheese': '课堂',
  'enum.member_tab.shop': '小店',
  'enum.play_repeat.pause': '播完暂停',
  'enum.play_repeat.list_order': '顺序播放',
  'enum.play_repeat.single_cycle': '单个循环',
  'enum.play_repeat.list_cycle': '列表循环',
  'enum.play_repeat.auto_related': '自动连播',
  'enum.fullscreen.auto': '按视频方向（默认）',
  'enum.fullscreen.none': '不改变当前方向',
  'enum.fullscreen.vertical': '强制竖屏',
  'enum.fullscreen.horizontal': '强制横屏',
  'enum.fullscreen.ratio': '屏幕长宽比<@ratio或为竖屏视频时竖屏，否则横屏',
  'enum.fullscreen.gravity': '忽略系统方向锁定，强制按重力转屏（仅安卓）',
  'enum.btm_progress.always_show': '始终展示',
  'enum.btm_progress.always_hide': '始终隐藏',
  'enum.btm_progress.only_show_fullscreen': '仅全屏时展示',
  'enum.btm_progress.only_hide_fullscreen': '仅全屏时隐藏',
  'enum.subtitle_pref.off': '默认不显示字幕',
  'enum.subtitle_pref.on': '优先选择非自动生成(ai)字幕',
  'enum.subtitle_pref.without_ai': '跳过自动生成(ai)字幕，选择第一个可用字幕',
  'enum.subtitle_pref.auto': '静音时等同第二项，非静音时等同第三项',
  'enum.color.default_green': '默认绿',
  'enum.color.pink': '粉红色',
  'enum.color.red': '红色',
  'enum.color.orange': '橙色',
  'enum.color.amber': '琥珀色',
  'enum.color.yellow': '黄色',
  'enum.color.lime': '酸橙色',
  'enum.color.light_green': '浅绿色',
  'enum.color.green': '绿色',
  'enum.color.teal': '青色',
  'enum.color.cyan': '蓝绿色',
  'enum.color.light_blue': '浅蓝色',
  'enum.color.blue': '蓝色',
  'enum.color.indigo': '靛蓝色',
  'enum.color.purple': '紫色',
  'enum.color.deep_purple': '深紫色',
  'enum.color.blue_grey': '蓝灰色',
  'enum.color.brown': '棕色',
  'enum.color.grey': '灰色',

  // ===== enum / fav order =====
  'enum.fav_order.mtime': '最近收藏',
  'enum.fav_order.view': '最多播放',
  'enum.fav_order.pubtime': '最近投稿',

  // ===== enum / rank type =====
  'enum.rank.all': '全站',
  'enum.rank.anime': '番剧',
  'enum.rank.guochuang': '国创',
  'enum.rank.douga': '动画',
  'enum.rank.music': '音乐',
  'enum.rank.dance': '舞蹈',
  'enum.rank.game': '游戏',
  'enum.rank.knowledge': '知识',
  'enum.rank.tech': '科技',
  'enum.rank.sports': '运动',
  'enum.rank.car': '汽车',
  'enum.rank.food': '美食',
  'enum.rank.animal': '动物',
  'enum.rank.kichiku': '鬼畜',
  'enum.rank.fashion': '时尚',
  'enum.rank.ent': '娱乐',
  'enum.rank.cinephile': '影视',
  'enum.rank.documentary': '纪录',
  'enum.rank.movie': '电影',
  'enum.rank.tv': '剧集',
  'enum.rank.variety': '综艺',

  // ===== enum / dm block type =====
  'enum.dm_block.keyword': '关键词',
  'enum.dm_block.regex': '正则',
  'enum.dm_block.uid': '用户',

  // ===== enum / live quality =====
  'enum.live_quality.dolby': '杜比',
  'enum.live_quality.origin4k': '4K 原画',
  'enum.live_quality.super4k': '4K',
  'enum.live_quality.super2k': '2K',
  'enum.live_quality.origin': '原画',
  'enum.live_quality.blu_ray': '蓝光',
  'enum.live_quality.super_hd': '超清',
  'enum.live_quality.smooth': '高清',
  'enum.live_quality.fluent': '流畅',

  // ===== enum / reply option type =====
  'enum.reply_option.allow': '允许评论',
  'enum.reply_option.close': '关闭评论',
  'enum.reply_option.choose': '精选评论',

  // ===== enum / pgc review type =====
  'enum.pgc_review.long': '长评',
  'enum.pgc_review.short': '短评',
  'enum.pgc_review_sort.def': '默认',
  'enum.pgc_review_sort.latest': '最新',

  // ===== enum / fav tab type =====
  'enum.fav_tab.video': '视频',
  'enum.fav_tab.bangumi': '追番',
  'enum.fav_tab.cinema': '追剧',
  'enum.fav_tab.article': '专栏',
  'enum.fav_tab.note': '笔记',
  'enum.fav_tab.topic': '话题',
  'enum.fav_tab.cheese': '课堂',

  // ===== enum / hwdec type =====
  'enum.hwdec.no': '启用软解',
  'enum.hwdec.auto': '启用任意可用解码器',
  'enum.hwdec.auto_safe': '启用最佳解码器',
  'enum.hwdec.auto_copy': '启用带拷贝功能的最佳解码器',
  'enum.hwdec.d3d12va': 'DirectX 12 (Windows10 及以上)',
  'enum.hwdec.d3d12va_copy': 'DirectX 12 (Windows10 及以上) (非直通)',
  'enum.hwdec.d3d11va': 'DirectX 11 (Windows8 及以上)',
  'enum.hwdec.d3d11va_copy': 'DirectX 11 (Windows8 及以上) (非直通)',
  'enum.hwdec.dxva2': 'DXVA2 (Windows7 及以上)',
  'enum.hwdec.dxva2_copy': 'DXVA2 (Windows7 及以上) (非直通)',
  'enum.hwdec.videotoolbox': 'VideoToolbox (macOS / iOS)',
  'enum.hwdec.videotoolbox_copy': 'VideoToolbox (macOS / iOS) (非直通)',
  'enum.hwdec.vaapi': 'VAAPI (Linux)',
  'enum.hwdec.vaapi_copy': 'VAAPI (Linux) (非直通)',
  'enum.hwdec.nvdec': 'NVDEC (NVIDIA独占)',
  'enum.hwdec.nvdec_copy': 'NVDEC (NVIDIA独占) (非直通)',
  'enum.hwdec.drm': 'DRM (Linux)',
  'enum.hwdec.drm_copy': 'DRM (Linux) (非直通)',
  'enum.hwdec.vulkan': 'Vulkan (全平台) (实验性)',
  'enum.hwdec.vulkan_copy': 'Vulkan (全平台) (实验性) (非直通)',
  'enum.hwdec.vdpau': 'VDPAU (Linux)',
  'enum.hwdec.vdpau_copy': 'VDPAU (Linux) (非直通)',
  'enum.hwdec.mediacodec': 'MediaCodec (Android)',
  'enum.hwdec.mediacodec_copy': 'MediaCodec (Android) (非直通)',
  'enum.hwdec.cuda': 'CUDA (NVIDIA独占) (过时)',
  'enum.hwdec.cuda_copy': 'CUDA (NVIDIA独占) (过时) (非直通)',
  'enum.hwdec.crystalhd': 'CrystalHD (全平台) (过时)',
  'enum.hwdec.rkmpp': 'Rockchip MPP (仅部分Rockchip芯片)',
  'enum.hwdec.amf': 'AMF (AMD独占)',
  'enum.hwdec.amf_copy': 'AMF (AMD独占) (非直通)',
  'enum.hwdec.qsv': 'Quick Sync Video (Intel独占)',
  'enum.hwdec.qsv_copy': 'Quick Sync Video (Intel独占) (非直通)',

  // ===== enum / video fit type =====
  'enum.video_fit.fill': '拉伸',
  'enum.video_fit.contain': '自动',
  'enum.video_fit.cover': '裁剪',
  'enum.video_fit.fit_width': '等宽',
  'enum.video_fit.fit_height': '等高',
  'enum.video_fit.none': '原始',
  'enum.video_fit.scale_down': '限制',

  // ===== player =====
  'player.prev_ep': '上一集',
  'player.first_ep': '已经是第一集了',
  'player.next_ep': '下一集',
  'player.last_ep': '已经是最后一集了',
  'player.dm_chart': '高能进度条',
  'player.super_resolution': '超分辨率',
  'player.view_points': '分段信息',
  'player.episodes': '选集',
  'player.fit': '画面比例',
  'player.translate': '翻译',
  'player.disable_translate': '关闭翻译',
  'player.subtitle': '字幕',
  'player.disable_subtitle': '关闭字幕',
  'player.speed': '倍速',
  'player.quality': '画质',
  'player.quality_changed': '画质已变为：@desc',
  'player.exit_fullscreen': '退出全屏',
  'player.fullscreen': '全屏',
  'player.cancel_seek': '松开手指，取消进退',
  'player.speed_x': '@speed倍速中',
  'player.speed_semantics': '@speed倍速',
  'player.restore_screen': '还原屏幕',
  'player.unlock': '解锁',
  'player.lock': '锁定',
  'player.screenshot': '截图',
  'player.screenshotting': '截图中',
  'player.screenshot_hint': '点击弹窗保存截图',
  'player.screenshot_failed': '截图失败',
  'player.gif_screenshot': '动态截图',
  'player.select_quality': '选择画质',
  'player.webp_preset': 'webp预设',
  'player.transcode_hint': '*转码使用CPU，速度可能慢于播放，请不要选择过长的时间段或过高画质',
  'player.saving_gif': '正在保存，可能需要较长时间',
  'player.transcode_error': '转码出现错误或已取消',
  'player.pip_failed': '画中画启动失败',
  'player.pip_not_supported': '当前视频暂不支持 iOS 画中画',
  'player.url_open_failed': '视频链接打开失败，重试中',
  'player.decoder_load_failed': '无法加载解码器, @event，可能会切换至软解',

  // ===== image utils =====
  'image.downloading': '正在下载',
  'image.saving': '正在保存',
  'image.saved': ' 已保存 ',
  'image.save_failed': '保存失败',
  'image.save_failed_msg': '保存失败，@msg',
  'image.download_cancelled': '已取消下载',
  'image.downloading_original': '正在下载原图',
  'image.storage_permission': '存储权限未授权',
  'image.go_auth': '去授权',

  // ===== update =====
  'update.check_failed': '检查更新失败，GitHub接口未返回数据，请检查网络',
  'update.is_latest': '已是最新版本',
  'update.new_version': '🎉 发现新版本 ',
  'update.no_remind': '不再提醒',
  'update.view_full_changes': '点此查看完整更新(即commit)内容',

  // ===== login =====
  'login.success': 'main登录成功',
  'login.not_logged_in': '账号未登录',
  'login.failed': '登录失败，请检查cookie是否正确，@msg',

  // ===== common / appbar =====
  'appbar.selected_count': '已选: @count',
  'appbar.select_all': '全选',
  'appbar.remove': '移除',

  // ===== video card =====
  'video.dynamic_tag': '动态',
  'video.followed_tag': '已关注',

  // ===== fav visibility =====
  'fav.public': '公开',
  'fav.private': '私密',

  // ===== dialog / export import =====
  'dialog.import_export.parse_json_failed': '解析json失败：@e',
  'dialog.import_export.import_confirm': '是否导入如下@title？',
  'dialog.import_export.import_success': '导入成功',
  'dialog.import_export.import_failed': '导入失败：@e',
  'dialog.import_export.clipboard_empty': '剪贴板无数据',
  'dialog.import_export.input_title': '输入@title',
  'dialog.import_export.title': '导入/导出@title',
  'dialog.import_export.export_clipboard': '导出至剪贴板',
  'dialog.import_export.export_file': '导出文件至本地',
  'dialog.import_export.input': '输入',
  'dialog.import_export.import_clipboard': '从剪贴板导入',
  'dialog.import_export.import_file': '从本地文件导入',

  // ===== dialog / report =====
  'report.title': '举报',
  'report.select_reason': '请选择举报的理由：',
  'report.additional_info': '为帮助审核人员更快处理，请补充问题类型和出现位置等详细信息',
  'report.reason_empty': '理由不能为空',
  'report.block_user': '拉黑该用户',
  'report.success': '举报成功',
  'report.submit_failed': '提交失败：@e',

  // ===== dialog / report member =====
  'report.member.title': '举报: @name',
  'report.member.required_header': '举报内容（必选，可多选）',
  'report.member.optional_header': '举报理由（单选，非必选）',
  'report.member.at_least_one': '至少选择一项作为举报内容',
  'report.member.avatar_violation': '头像违规',
  'report.member.nickname_violation': '昵称违规',
  'report.member.signature_violation': '签名违规',
  'report.member.porn': '色情低俗',
  'report.member.misinformation': '不实信息',
  'report.member.illegal': '违禁',
  'report.member.personal_attack': '人身攻击',
  'report.member.gambling': '赌博诈骗',
  'report.member.link_spam': '违规引流外链',

  // ===== dialog / general =====
  'dialog.mark_as': '标记为 @text',
  'dialog.pgc.watched': '看过',
  'dialog.pgc.watching': '在看',
  'dialog.pgc.plan_to_watch': '想看',
  'dialog.pgc.cancel': '取消@type',

  // ===== loading widget =====
  'loading.no_data': '没有数据',
  'loading.retry': '点击重试',

  // ===== video popup menu =====
  'video_menu.watch_later': '稍后再看',
  'video_menu.ai_summary': 'AI总结',
  'video_menu.visit_up': '访问：@name',
  'video_menu.not_interested': '不感兴趣',
  'video_menu.submitting': '正在提交',
  'video_menu.dislike_dialog_title': '我不想看',
  'video_menu.feedback': '反馈',
  'video_menu.dislike_success': '点踩成功',
  'video_menu.cancel_dislike': '取消踩',
  'video_menu.block_up': '拉黑：@name',
  'video_menu.block_confirm': '确定拉黑:@name(@mid)?\n\n注：被拉黑的Up可以在隐私设置-黑名单管理中解除',
  'video_menu.misclick': '点错了',
  'video_menu.incognito_enter': '进入无痕模式',
  'video_menu.incognito_exit': '退出无痕模式',
  'video_menu.re_login': '请退出账号后重新登录',
  'video_menu.undo': '撤销',
  'video_menu.dislike': '点踩',
  'video_menu.web_no_detail': 'web端暂不支持精细选择',

  // ===== dynamic skeleton =====
  'dynamic.forward': '转发',
  'dynamic.comment': '评论',
  'dynamic.like': '点赞',

  // ===== pendant avatar =====
  'pendant.live': '直播中',

  // ===== image save toolbar =====
  'image_save.close': '关闭',
  'image_save.watch_later': '稍后再看',
  'image_save.share': '分享',
  'image_save.save_cover': '保存封面图',

  // ===== account type =====
  'enum.account_type.main': '主账号',
  'enum.account_type.heartbeat': '记录观看',
  'enum.account_type.recommend': '推荐',
  'enum.account_type.video': '视频取流',

  // ===== avatar badge =====
  'enum.badge.vip': '大会员',
  'enum.badge.person': '认证个人',
  'enum.badge.institution': '认证机构',

  // ===== episode panel type =====
  'enum.episode.part': '分P',
  'enum.episode.season': '合集',
  'enum.episode.pgc': '剧集',

  // ===== follow order =====
  'enum.follow_order.def': '最近关注',
  'enum.follow_order.attention': '最常访问',

  // ===== later view =====
  'enum.later_view.all': '全部',
  'enum.later_view.unfinished': '未看完',

  // ===== live contribution rank =====
  'enum.live_rank.online': '在线榜',
  'enum.live_rank.daily': '日榜',
  'enum.live_rank.weekly': '周榜',
  'enum.live_rank.monthly': '月榜',

  // ===== archive order =====
  'enum.archive_order.pubdate': '最新发布',
  'enum.archive_order.click': '最多播放',
  'enum.archive_order.stow': '最多收藏',

  // ===== archive sort =====
  'enum.archive_sort.desc': '默认',
  'enum.archive_sort.asc': '倒序',

  // ===== user info type =====
  'enum.user_info.fan': '粉丝',
  'enum.user_info.follow': '关注',
  'enum.user_info.like': '获赞',

  // ===== search type =====
  'enum.search_type.video': '视频',
  'enum.search_type.media_bangumi': '番剧',
  'enum.search_type.media_ft': '影视',
  'enum.search_type.live_room': '直播间',
  'enum.search_type.bili_user': '用户',
  'enum.search_type.article': '专栏',

  // ===== stat type =====
  'enum.stat.view': '观看',
  'enum.stat.danmaku': '弹幕',
  'enum.stat.like': '点赞',
  'enum.stat.reply': '评论',
  'enum.stat.follow': '关注',
  'enum.stat.play': '播放',

  // ===== webview menu =====
  'enum.webview_menu.refresh': '刷新',
  'enum.webview_menu.copy': '复制链接',
  'enum.webview_menu.open_browser': '浏览器中打开',
  'enum.webview_menu.clear_cache': '清除缓存',
  'enum.webview_menu.reset_cookie': '重新设置Cookie',
  'enum.webview_menu.go_back': '返回',

  // ===== audio quality =====
  'enum.audio_quality.hi_res': 'Hi-Res无损',
  'enum.audio_quality.dolby': '杜比全景声',

  // ===== video quality =====
  'enum.video_quality.super8k': '8K 超高清',
  'enum.video_quality.dolby_vision': '杜比视界',
  'enum.video_quality.hdr': 'HDR 真彩',
  'enum.video_quality.super4k': '4K 超高清',
  'enum.video_quality.high1080_60': '1080P 60帧',
  'enum.video_quality.high1080_plus': '1080P 高码率',
  'enum.video_quality.high1080': '1080P 高清',
  'enum.video_quality.high720_60': '720P 60帧',
  'enum.video_quality.high720': '720P 准高清',
  'enum.video_quality.clear480': '480P 标清',
  'enum.video_quality.fluent360': '360P 流畅',
  'enum.video_quality.speed240': '240P 极速',

  // ===== video search filters =====
  'enum.video_pub_time.all': '不限',
  'enum.video_pub_time.day': '最近一天',
  'enum.video_pub_time.week': '最近一周',
  'enum.video_pub_time.half_year': '最近半年',
  'enum.video_duration.all': '全部时长',
  'enum.video_duration.10m': '0-10分钟',
  'enum.video_duration.30m': '10-30分钟',
  'enum.video_duration.60m': '30-60分钟',
  'enum.video_duration.60m_plus': '60分钟+',
  'enum.video_zone.all': '全部',
  'enum.video_zone.douga': '动画',
  'enum.video_zone.anime': '番剧',
  'enum.video_zone.guochuang': '国创',
  'enum.video_zone.music': '音乐',
  'enum.video_zone.dance': '舞蹈',
  'enum.video_zone.game': '游戏',
  'enum.video_zone.knowledge': '知识',
  'enum.video_zone.tech': '科技',
  'enum.video_zone.sports': '运动',
  'enum.video_zone.car': '汽车',
  'enum.video_zone.life': '生活',
  'enum.video_zone.food': '美食',
  'enum.video_zone.animal': '动物',
  'enum.video_zone.kichiku': '鬼畜',
  'enum.video_zone.fashion': '时尚',
  'enum.video_zone.info': '资讯',
  'enum.video_zone.ent': '娱乐',
  'enum.video_zone.cinephile': '影视',
  'enum.video_zone.documentary': '记录',
  'enum.video_zone.movie': '电影',
  'enum.video_zone.tv': '电视',
  'enum.archive_filter.totalrank': '默认排序',
  'enum.archive_filter.click': '播放多',
  'enum.archive_filter.pubdate': '新发布',
  'enum.archive_filter.dm': '弹幕多',
  'enum.archive_filter.stow': '收藏多',
  'enum.archive_filter.scores': '评论多',

  // ===== article search filters =====
  'enum.article_order.totalrank': '综合排序',
  'enum.article_order.pubdate': '最新发布',
  'enum.article_order.click': '最多点击',
  'enum.article_order.attention': '最多喜欢',
  'enum.article_order.scores': '最多评论',
  'enum.article_zone.all': '全部分区',
  'enum.article_zone.douga': '动画',
  'enum.article_zone.game': '游戏',
  'enum.article_zone.cinephile': '影视',
  'enum.article_zone.life': '生活',
  'enum.article_zone.interest': '兴趣',
  'enum.article_zone.novel': '轻小说',
  'enum.article_zone.tech': '科技',
  'enum.article_zone.note': '笔记',

  // ===== user search filters =====
  'enum.user_order.def': '默认排序',
  'enum.user_order.fans_desc': '粉丝数由高到低',
  'enum.user_order.fans_asc': '粉丝数由低到高',
  'enum.user_order.level_desc': 'Lv等级由高到低',
  'enum.user_order.level_asc': 'Lv等级由低到高',
  'enum.user_type.all': '全部用户',
  'enum.user_type.up': 'UP主',
  'enum.user_type.common': '普通用户',
  'enum.user_type.verified': '认证用户',

  // ===== sponsor block action =====
  'enum.sb_action.skip': '跳过',
  'enum.sb_action.mute': '静音',
  'enum.sb_action.full': '整个视频',
  'enum.sb_action.poi': '精彩时刻',

  // ===== sponsor block segment =====
  'enum.sb_segment.sponsor.title': '赞助/恰饭',
  'enum.sb_segment.sponsor.short': '赞助',
  'enum.sb_segment.sponsor.desc': '付费推广、推荐和直接广告。不是自我推广或免费提及他们喜欢的商品/创作者/网站/产品。',
  'enum.sb_segment.selfpromo.title': '无偿/自我推广',
  'enum.sb_segment.selfpromo.short': '推广',
  'enum.sb_segment.selfpromo.desc': '类似于 "赞助广告" ，但无报酬或是自我推广。包括有关商品、捐赠的部分或合作者的信息。',
  'enum.sb_segment.exclusive_access.title': '独家访问/抢先体验',
  'enum.sb_segment.exclusive_access.short': '品牌合作',
  'enum.sb_segment.exclusive_access.desc': '仅用于对整个视频进行标记。适用于展示UP主免费或获得补贴后使用的产品、服务或场地的视频。',
  'enum.sb_segment.interaction.title': '三连/互动提醒',
  'enum.sb_segment.interaction.short': '三连提醒',
  'enum.sb_segment.interaction.desc': '视频中间简短提醒观众来一键三连或关注。 如果片段较长，或是有具体内容，则应分类为自我推广。',
  'enum.sb_segment.poi_highlight.title': '精彩时刻/重点',
  'enum.sb_segment.poi_highlight.short': '精彩时刻',
  'enum.sb_segment.poi_highlight.desc': '大部分人都在寻找的空降时间。类似于"封面在12:34"的评论。',
  'enum.sb_segment.intro.title': '过场/开场动画',
  'enum.sb_segment.intro.short': '开场动画',
  'enum.sb_segment.intro.desc': '没有实际内容的间隔片段。可以是暂停、静态帧或重复动画。不适用于包含内容的过场。',
  'enum.sb_segment.outro.title': '鸣谢/结束画面',
  'enum.sb_segment.outro.short': '片尾',
  'enum.sb_segment.outro.desc': '致谢画面或片尾画面。不包含内容的结尾。',
  'enum.sb_segment.preview.title': '回顾/概要',
  'enum.sb_segment.preview.short': '预览',
  'enum.sb_segment.preview.desc': '展示此视频或同系列视频将出现的画面集锦，片段中所有内容都将在之后的正片中再次出现。',
  'enum.sb_segment.padding.title': '填充内容/前黑/后黑',
  'enum.sb_segment.padding.short': '填充内容',
  'enum.sb_segment.padding.desc': '搬运视频片头片尾的纯粹填充内容，如黑屏或无关画面，与视频主体内容无实际意义和关联。',
  'enum.sb_segment.filler.title': '离题闲聊/玩笑',
  'enum.sb_segment.filler.short': '离题',
  'enum.sb_segment.filler.desc': '仅作为填充内容或增添趣味而添加的离题片段，这些内容对理解视频的主要内容并非必需。',
  'enum.sb_segment.music_offtopic.title': '音乐:非音乐部分',
  'enum.sb_segment.music_offtopic.short': '非音乐',
  'enum.sb_segment.music_offtopic.desc': '仅用于音乐视频。此分类只能用于音乐视频中未包括于其他分类的部分。',

  // ===== http / toast =====
  'http.watch_later_success': 'yeah！稍后再看',
  'http.watch_later_remove': 'yeah！成功移除',
  'http.report_success': '举报成功',
  'http.report_failed': '举报失败',
  'http.no_data': '没有数据',
  'http.invalid_vote': '无效的投票id',
  'http.video_deleted': '视频不存在或已被删除',
  'http.charge_only': '当前视频可能是专属视频，可能需包月充电观看(@msg)',
  'http.error_code': '错误(@code): @msg',
  'http.risk_control': '风控校验失败，请检查登录状态',
  'http.search_risk': '触发风控',
  'http.server_error': '服务器错误',
  'http.no_result': '没有相关数据',
  'http.unexpected_response': '意料之外的响应',
  'http.bad_param': '参数错误',
  'http.sb_rejected': '被自动审核机制拒绝',
  'http.sb_not_found': '未找到数据',
  'http.sb_duplicate': '重复提交',
  'http.sb_rate_limit': '提交太快（触发速率控制）',
  'http.sb_server_error': '服务器无法获取信息',
  'http.fav_not_login': '账号未登录',

  // ===== player widgets =====
  'player.load_error': '视频加载错误, @event',
  'player.pause': '暂停',
  'player.play': '播放',
  'player.seek_back': '快退@seconds秒',
  'player.seek_forward': '快进@seconds秒',

  // ===== mpv convert webp presets =====
  'player.webp_none': '无',
  'player.webp_no_preset': '不使用预设',
  'player.webp_default': '默认',
  'player.webp_default_preset': '默认预设',
  'player.webp_photo': '图片',
  'player.webp_photo_desc': '数码照片，如人像、室内拍摄',
  'player.webp_picture': '照片',
  'player.webp_picture_desc': '户外摄影，自然光环境',
  'player.webp_drawing': '绘图',
  'player.webp_drawing_desc': '手绘或线稿，高对比度细节',
  'player.webp_icon': '图标',
  'player.webp_icon_desc': '小型彩色图像',
  'player.webp_text': '文本',
  'player.webp_text_desc': '文字类',

  // ===== utils / request =====
  'request.new_group': '新建分组',
  'request.create_success': '创建成功',
  'request.follow_success': '关注成功',
  'request.unfollow_success': '取消关注成功',
  'request.unfollow': '取消关注',
  'request.remove_special': '移除特别关注',
  'request.add_special': '加入特别关注',
  'request.op_success': '@text成功',
  'request.set_group': '设置分组',
  'request.like_success': '点赞成功',
  'request.cancel_like': '取消赞',
  'request.copy': '复制',
  'request.move': '移动',
  'request.copy_to': '复制到',
  'request.move_to': '移动到',
  'request.copy_success': '复制成功',
  'request.move_success': '移动成功',
  'request.close': '关闭',
  'request.appeal': '申诉',
  'request.dyn_check_title': '动态检查结果',
  'request.dyn_normal': '无账号状态下找到了你的动态，动态正常！',
  'request.dyn_banned': '你的动态被shadow ban（仅自己可见）！',
  'request.dyn_content': ' \n\n动态内容: @text',

  // ===== utils / reply =====
  'reply.check_title': '评论检查结果',
  'reply.appeal': '申诉',
  'reply.close': '关闭',
  'reply.get_error': '获取评论主列表时发生错误：@msg',
  'reply.normal': '无账号状态下找到了你的评论，评论正常！\n\n你的评论：@message',
  'reply.not_found': '无法找到你的评论。\n\n你的评论：@message',
  'reply.shadow_ban': '你的评论被shadow ban（仅自己可见）！\n\n你的评论: @message',
  'reply.invisible': '评论不可见(@err): @message',
  'reply.invisible_simple': '评论不可见: @message',
  'reply.suspicious': '你评论状态有点可疑，虽然无账号翻找评论区获取不到你的评论，但是无账号可通过\nhttps://api.bilibili.com/x/v2/reply/reply?oid=@oid&pn=1&ps=20&root=@id&type=@type\n获取你的评论，疑似评论区被戒严或者这是你的视频。\n\n你的评论：@message',

  // ===== utils / app scheme =====
  'scheme.loading': '资源获取中',
  'scheme.load_failed': '资源加载失败',
  'scheme.unknown_path': '未知路径:@uri，请截图反馈给开发者',
  'scheme.video_failed': 'video获取失败: @e',
  'scheme.rank': '排行榜',
  'scheme.playlist': '播放列表',
  'scheme.unsupported_type': '暂未支持的类型，请联系开发者',

  // ===== utils / account manager (network errors) =====
  'net.cert_error': '证书有误！',
  'net.server_error': '服务器异常，请稍后重试！',
  'net.request_cancelled': '请求已被取消，请重新请求',
  'net.connect_error': '连接错误，请检查网络设置',
  'net.connect_timeout': '网络连接超时，请检查网络设置',
  'net.response_timeout': '响应超时，请稍后重试！',
  'net.send_timeout': '发送请求超时，请检查网络设置',
  'net.error': '@desc网络异常 @error',
  'net.conn.bluetooth': '蓝牙',
  'net.conn.wifi': 'Wi-Fi',
  'net.conn.ethernet': '局域',
  'net.conn.mobile': '流量',
  'net.conn.none': '无',
  'net.conn.proxy': '代理',
  'net.conn.other': '其他',

  // ===== utils / three_dot (whisper/msg context menu) =====
  'msg.mark_all_read': '一键已读',
  'msg.clear_confirm': '是否清除全部新消息提醒？',
  'msg.clear_list': '清空列表',
  'msg.clear_warning': '清空后所有消息将被删除，无法恢复',

  // ===== page utils =====
  'page.loading': '获取中...',

  // ===== pip =====
  'player.pip_init_failed': '画中画初始化失败',

  // ===== dynamics pages =====
  'dyn.publish_dynamic': '发布动态',
  'dyn.edit_dynamic': '编辑动态',
  'dyn.save_dynamic': '保存动态',
  'dyn.share_dynamic': '分享动态',
  'dyn.share_to_msg': '分享至消息',
  'dyn.share_to_dynamic': '分享至动态',
  'dyn.repost_dynamic': '转发动态',
  'dyn.repost': '转发',
  'dyn.repost_now': '立即转发',
  'dyn.publish_now': '立即发布',
  'dyn.publish': '发布',
  'dyn.publishing': '正在发布',
  'dyn.publish_success': '发布成功',
  'dyn.repost_success': '转发成功',
  'dyn.delete_success': '删除成功',
  'dyn.delete_confirm': '确定删除该动态?',
  'dyn.check_dynamic': '检查动态',
  'dyn.input_hint': '说点什么吧',
  'dyn.title_hint': '标题，选填20字',
  'dyn.select_topic': '选择话题',
  'dyn.search_topic': '搜索话题',
  'dyn.timed_publish': '定时发布',
  'dyn.time_error_6min': '时间设置错误，至少选择6分钟之后',
  'dyn.time_error_5min': '至少选择5分钟之后',
  'dyn.live_reserve': '直播预约',
  'dyn.add_live_reserve': '添加直播预约',
  'dyn.add_reserve': '添加预约',
  'dyn.live_reserve_title': '直播预约: @title',
  'dyn.live_time': '@time 直播',
  'dyn.public_live': '公开直播',
  'dyn.captain_live': '大航海直播',
  'dyn.type': '类型',
  'dyn.time': '时间',
  'dyn.title_label': '标题',
  'dyn.title_hint_14': '请填写标题，最多14字',
  'dyn.visibility_public': '所有人可见',
  'dyn.visibility_private': '仅自己可见',
  'dyn.visibility_range': '可见范围',
  'dyn.set_top': '置顶',
  'dyn.cancel_top': '取消置顶',
  'dyn.interaction_settings': '互动设置',
  'dyn.start_featured_reply': '开启评论精选',
  'dyn.stop_featured_reply': '停止评论精选',
  'dyn.close_reply': '关闭评论',
  'dyn.restore_reply': '恢复评论',
  'dyn.temp_block': '临时屏蔽：@name',
  'dyn.temp_block_toast': '已临时屏蔽@name(@mid)，重启恢复',
  'dyn.liked': '已赞',
  'dyn.live_ended': '直播结束',
  'dyn.invalid': '已失效',
  'dyn.unsupported_type': '暂未支持的类型: \n@idStr\n@type',
  'dyn.all_dynamics': '全部动态',
  'dyn.me': '我',
  'dyn.play_count': '播放',
  'dyn.danmu_count': '弹幕',
  'dyn.copy_text': '文本',
  'dyn.expand': '展开',
  'dyn.goods_price_from': '起',
  'dyn.vote_join': '参与',
  'dyn.vote': '投票',
  'dyn.vote_options': '投票选项',
  'dyn.vote_ended': '已结束',
  'dyn.vote_completed': '已完成',
  'dyn.vote_initiate': '我发起了一个投票',
  'dyn.vote_colon': '投票：',
  'dyn.vote_type': '投票类型',
  'dyn.vote_title': '投票标题',
  'dyn.title_placeholder': '请填写标题',
  'dyn.vote_desc': '投票说明',
  'dyn.option_hint': '选项内容，最多20字',
  'dyn.add_option': '添加选项',
  'dyn.single_multi': '单选/多选',
  'dyn.single': '单选',
  'dyn.vote_deadline_label': '投票截止时间',
  'dyn.vote_deadline': '至 @time',
  'dyn.initiate_vote': '发起投票',
  'dyn.text_vote': '文字投票',
  'dyn.image_vote': '图片投票',
  'dyn.show_ratio': '显示比例',
  'dyn.anonymous': '匿名',
  'dyn.followee_votes': '关注的人的投票',
  'dyn.voted_for': ' 投给了',
  'dyn.join_count': '人参与',
  'dyn.join_topic': '参与话题',
  'dyn.topic': '话题',
  'dyn.topic_initiated_by': ' 发起',
  'dyn.topic_stats': '@view浏览 · @discuss讨论',
  'dyn.add_fav': '收藏',
  'dyn.cancel_fav': '取消收藏',
  'dyn.mention_hint': '输入你想@的人',
  'dyn.fans_count': '@count粉丝',
  'dyn.remove': '移除',
  'dyn.all_visible': '所有用户可见',

  // ===== home =====
  'home.search_semantics': '搜索',
  'home.mine_semantics': '我的',
  'home.login_tooltip': '点击登录',
  'home.msg_tooltip': '消息',

  // ===== history =====
  'history.deleted': '已删除',
  'history.delete_confirm': '确认删除所选历史记录吗？',
  'history.requesting': '请求中',

  // ===== music =====
  'music.not_logged_in': '请先登录',
  'music.publish_date': '发行日期：@date',
  'music.original_artist': '原唱：@artist',
  'music.album': '专辑：@album',
  'music.source': '出处：@source',
  'music.watch_mv': '看MV',
  'music.hot_rank': '热歌榜排名',
  'music.heat': '热度',
  'music.total_play': '总播放量',
  'music.video_count': '使用稿件量',
  'music.heat_trend': '近@count日热度趋势',
  'music.video_total': '共@count条视频',

  // ===== whisper =====
  'whisper.chat_settings': '聊天设置',
  'whisper.receive_push': '接收消息推送',
  'whisper.receive_push_desc': '若关闭此开关，你将不再收到该账号的图文消息与稿件推送，但通知类消息不受影响',
  'whisper.pin_chat': '置顶聊天',
  'whisper.mute': '消息免打扰',
  'whisper.block': '加入黑名单',
  'whisper.disable_push_confirm': '确认关闭内容推送吗？',
  'whisper.block_confirm_title': '确认拉黑该用户',
  'whisper.block_confirm_desc': '加入黑名单后，将自动解除关注关系和对该用户的合集订阅关系，禁止该用户与我互动或查看我的空间',
  'whisper.block_word_title': '消息屏蔽词',
  'whisper.block_word_hint': '点击屏蔽词即可删除',
  'whisper.add_block_word': '添加消息屏蔽词',
  'whisper.no_block_word': '还未添加屏蔽词',
  'whisper.block_word_effect': '添加后，将不再接受包含屏蔽词的消息',
  'whisper.delete_block_word_title': '删除屏蔽词？',
  'whisper.delete_block_word_desc': '该屏蔽词将不再生效',
  'whisper.input_hint': '请输入',
  'whisper.add_success': '添加成功',
  'whisper.delete_success': '删除成功',

  // ===== video =====
  'video.watch_later': '稍后再看',
  'video.note': '查看笔记',
  'video.cache_video': '缓存视频',
  'video.save_cover': '保存封面',
  'video.listen_audio': '听音频',
  'video.report': '举报',
  'video.play': '播放',
  'video.back': '返回',
  'video.back_home': '返回主页',
  'video.related_videos': '相关视频',
  'video.offline_video': '离线视频',
  'video.introduction': '简介',
  'video.intro': '简介',
  'video.comments': '评论',
  'video.replies': '回复',
  'video.share': '分享',
  'video.like': '点赞',
  'video.coin': '投币',
  'video.favorite': '收藏',
  'video.danmaku': '弹幕',
  'video.subtitle': '字幕',
  'video.quality': '画质',
  'video.speed': '倍速',
  'video.setting': '设置',
  'video.fullscreen': '全屏',
  'video.pip': '小窗',
  'video.views': '播放',
  'video.danmaku_count': '弹幕',
  'video.reply_count': '评论',

  // ===== login (additions only) =====
  'login.username': '用户名/邮箱/手机号',
  'login.password': '密码',
  'login.forget_password': '忘记密码？',
  'login.signup': '注册账号',
  'login.qrcode_scan': '使用二维码登录',

  // ===== dynamics (additions only) =====
  'dynamic.vote': '投票',
  'dynamic.voting': '正在投票',
  'dynamic.voted': '已投票',
  'dynamic.vote_title': '投票标题',
  'dynamic.vote_option': '投票选项',
  'dynamic.add_option': '添加选项',
  'dynamic.create_dynamic': '创建动态',
  'dynamic.edit_dynamic': '编辑动态',
  'dynamic.input_title': '请填写标题',

  // ===== member =====
  'member.profile': '个人资料',
  'member.fans': '粉丝',
  'member.follow': '关注',
  'member.unfollow': '取消关注',
  'member.following': '已关注',
  'member.view_fans': '查看粉丝',
  'member.view_following': '查看关注',
  'member.medal': '勋章',
  'member.vip': 'VIP',
  'member.level': '等级',
  'member.sign': '签名',
  'member.birthday': '生日',
  'member.gender': '性别',
  'member.location': '地区',
  'member.videos': '视频',
  'member.articles': '专栏',
  'member.collections': '收藏夹',
  'member.charge': '充电',
  'member.send_message': '发私信',
  'member.block': '拉黑',
  'member.unblock': '取消拉黑',
  'member.report': '举报',
  'member.copy_uid': '复制UID',
  'member.copy_link': '复制链接',

  // ===== live =====
  'live.title': '直播',
  'live.following': '关注',
  'live.recommended': '推荐',
  'live.search': '搜索',
  'live.gift': '礼物',
  'live.share': '分享',
  'live.follow': '关注',
  'live.chat': '聊天',
  'live.danmaku': '弹幕',
  'live.gift_send': '送礼',
  'live.quality': '画质',
  'live.offline': '主播离线',
  'live.loading': '加载中...',
  'live.no_stream': '暂无直播流',
  'live.viewers': '人正在直播',
  'live.watch_later': '稍后再看',
  'live.download': '下载',

  // ===== download =====
  'download.title': '下载',
  'download.video': '视频',
  'download.audio': '音频',
  'download.cache': '缓存',
  'download.cached': '已缓存视频',
  'download.downloading': '下载中',
  'download.pause': '暂停',
  'download.resume': '继续',
  'download.delete': '删除',
  'download.clear': '清空',
  'download.all': '全选',
  'download.search': '搜索',
  'download.quality': '画质',
  'download.speed': '速度',
  'download.time_left': '剩余时间',
  'download.success': '下载成功',
  'download.failed': '下载失败',
  'download.update': '更新',
  'download.update_success': '更新成功',
  'download.update_failed': '更新失败',

  // ===== common widget/dialog =====
  'dialog.confirm': '确定',
  'dialog.cancel': '取消',
  'dialog.yes': '是',
  'dialog.no': '否',
  'dialog.ok': '好的',
  'dialog.close': '关闭',
  'dialog.delete': '删除',
  'dialog.delete_confirm': '确认删除？',
  'dialog.edit': '编辑',
  'dialog.save': '保存',
  'dialog.loading': '加载中...',
  'dialog.error': '错误',
  'dialog.warning': '警告',
  'dialog.info': '提示',
  'dialog.success': '成功',
  'dialog.failed': '失败',
  'dialog.retry': '重试',
  'dialog.copy': '复制',
  'dialog.copied': '已复制',
  'dialog.share': '分享',
  'dialog.more': '更多',
  'dialog.all': '全部',
  'dialog.none': '无',
  'dialog.select': '选择',
  'dialog.select_all': '全选',
  'dialog.deselect_all': '取消全选',
  'dialog.clear': '清空',
  'dialog.reset': '重置',
  'dialog.apply': '应用',
  'dialog.submit': '提交',

  // ===== search =====
  'search.title': '搜索',
  'search.input_hint': '搜索用户、视频...',
  'search.user': '用户',
  'search.video': '视频',
  'search.article': '专栏',
  'search.live': '直播',
  'search.result': '搜索结果',
  'search.no_result': '未找到相关结果',
  'search.history': '搜索历史',
  'search.clear_history': '清除历史',
  'search.trending': '热搜',
  'search.uid': 'UID搜索用户',
  'search.filter': '筛选',
  'search.sort': '排序',

  // ===== favorite =====
  'favorite.title': '收藏',
  'favorite.all': '全部收藏',
  'favorite.add': '添加收藏',
  'favorite.remove': '移出收藏',
  'favorite.create': '新建收藏夹',
  'favorite.edit': '编辑',
  'favorite.delete': '删除',
  'favorite.rename': '重命名',
  'favorite.select_all': '全选',
  'favorite.deselect_all': '取消全选',
  'favorite.public': '公开',
  'favorite.private': '私密',

  // ===== follow =====
  'follow.title': '关注',
  'follow.following': '已关注',
  'follow.fans': '粉丝',
  'follow.following_group': '关注分组',
  'follow.sort': '排序',
  'follow.sort_recent': '最近关注',
  'follow.mute_notice': '关闭通知',
  'follow.unmute_notice': '开启通知',
  'follow.remove': '取消关注',
  'follow.remove_confirm': '确认取消关注？',

  // ===== video (additional) =====
  'video.playlist': '播放列表',
  'video.play_url': '播放地址',
  'video.send_danmaku': '发弹幕',
  'video.exclusive_preview': '该视频为专属视频，仅提供试看',
  'video.preview': '试看',
  'video.resource_not_found': '视频资源不存在',
  'video.jump_failed': '跳转失败',
  'video.collection_no_reverse': '当前为播放全部，合集不支持倒序',
  'video.danmaku_style': '弹幕样式',
  'video.top': '顶部',
  'video.sequential': '顺序播放',
  'video.need_vip': '需要大会员',
  'video.limited_free': '限免',
  'video.preview_preview': '预览',
  'video.trailer': '预告',
  'video.comments_detail': '评论详情',
  'video.exclusive': '充电专属',

  // ===== common (additional) =====
  'common.no_more': '没有更多了',
  'common.search': '搜索',
  'common.send_success': '发送成功',
  'common.unfavorite': '取消收藏',
  'common.comments_detail': '评论详情',
  'common.like': '点赞',
  'common.coin': '投币',
  'common.repost': '转发',
  'common.no_comments': '还没有评论',
  'common.comment_deleted': '评论可能已被删除',
  'common.followed': '已关注',
  'common.watch_later': '再看',

  // ===== video (additional) =====
  'video.rating': '评分 @score',
  'video.go_to_dynamic': '转到动态',

  // ===== login (additional) =====
  'login.username_or_email': '邮箱/手机号',
  'login.phone_required': '手机号不能为空',
  'login.password_label': '密码',
  'login.code_required': '验证码不能为空',
  'login.code_expired': '验证码已过期，请重新获取',
  'login.verify_success': '验证成功',
  'login.saving': '正在保存身份信息',
  'login.account_switch': '账号切换',
  'login.account': '账号',
  'login.forget_password_label': '忘记密码',
  'login.code_label': '验证码',
  'login.select_country': '选择国际冠码，',
  'login.complete_verify': '请在弹出的新窗口中完成验证',
  'login.account_note': '账号密码仅用于该登录接口，不予保存；本地仅存储登录凭证。\n',
  'login.download_warning': '请务必在 @appName 开源仓库等可信渠道下载安装。',
  'common.report': '举报',
  'login.login': '登录',

  // ===== newly added =====
  'general.$_name的充电排行榜${_count==null?': '$_name的充电排行榜${_count == null ? ',
  'general.$_username的舰队${_count==null?': '$_userName的舰队${_count == null ? ',
  'general.$count人正在直播': '$count人正在直播',
  'general.$daydiff天前': '$dayDiff天前',
  'general.$days天': '$days天',
  'general.$diffinhours小时前': '$diffInHours小时前',
  'general.$diffinmins分钟前': '$diffInMins分钟前',
  'general.$hours小时': '$hours小时',
  'general.$level以下': '$level 以下',
  'general.$logtag===>tcp连接建立': '$logTag ===> TCP连接建立',
  'general.$logtag===>发送认证包': '$logTag ===> 发送认证包',
  'general.$logtag直播间信息流认证成功$hashcode': '$logTag 直播间信息流认证成功 $hashCode',
  'general.$minutes分钟': '$minutes分钟',
  'general.$minutes的生命': '($minutes 的生命)',
  'general.$months月': '$months月',
  'general.$name的关注': '$name的关注',
  'general.$name的粉丝': '$name的粉丝',
  'general.$textsmall围观': '$textSmall围观',
  'general.$tribename小站': '$tribeName小站',
  'general.$years年': '$years年',
  'general.${count==-1?0:numutils.numform': '${count == -1 ? 0 : NumUtils.numFormat(count)}条回复',
  'general.${dateformatutils.dateformatit': '${DateFormatUtils.dateFormat(item.updateTime)}更新',
  'general.${dateformatutils.longformatd.': '${DateFormatUtils.longFormatD.format(
                        DateTime.fromMillisecondsSinceEpoch(reserveCard.livePlanStartTime! * 1000),
                      )} 直播',
  'general.${durationutils.formatduration': '${DurationUtils.formatDuration(item.segment.$1 / 1000)} 至 ${DurationUtils.formatDuration(item.segment.$2 / 1000)}',
  'general.${e.price!}起': '${e.price!}起',
  'general.${introcontroller.total.value}': '${introController.total.value}人正在看',
  'general.${item.count}个内容·${item.ispubl': '${item.count}个内容 · ${item.isPublic == 1 ? ',
  'general.${item.mediacount}个内容': '${item.mediaCount}个内容',
  'general.${item.mediacount}个内容.${biliut': '${item.mediaCount}个内容 . ${BiliUtils.isPublicFavText(item.attr)}',
  'general.${item.mediacount}个内容·${biliut': '${item.mediaCount}个内容 · ${BiliUtils.isPublicFavText(item.attr)}',
  'general.${item.mediacount}个内容·${item.u': '${item.mediaCount}个内容 · ${item.upper?.name}',
  'general.${item.mediacount}个视频': '${item.mediaCount}个视频',
  'general.${item.reply}评论': '${item.reply}评论',
  'general.${item.segmenttype.shorttitle}': '${item.segmentType.shortTitle}片段跳过失败',
  'general.${item.view}浏览': '${item.view}浏览',
  'general.${numutils.numformatcount}条点评': '${NumUtils.numFormat(count)}条点评',
  'general.${numutils.numformate.total}人预': '${NumUtils.numFormat(e.total)}人预约',
  'general.${numutils.numformatinfo.viewc': '${NumUtils.numFormat(info.viewCount ?? info.cntInfo?.play)}次播放',
  'general.${numutils.numformatitem.artic': '${NumUtils.numFormat(item.articlesCount)}篇专栏',
  'general.${numutils.numformatitem.fans}': '${NumUtils.numFormat(item.fans)}粉丝',
  'general.${numutils.numformatitem.read}': '${NumUtils.numFormat(item.read)}次阅读',
  'general.${numutils.numformatitem.view}': '${NumUtils.numFormat(item.view)}浏览 · ${NumUtils.numFormat(item.discuss)}讨论',
  'general.${numutils.numformatitem.words': '${NumUtils.numFormat(item.words)}个字',
  'general.${numutils.numformatonline}围观': '${NumUtils.numFormat(online)}围观',
  'general.${numutils.numformatresponse.t': '${NumUtils.numFormat(response.topicItem!.view)}浏览 · ${NumUtils.numFormat(response.topicItem!.discuss)}讨论',
  'general.${numutils.numformatstat.danmu': '${NumUtils.numFormat(stat.danmu)}弹幕',
  'general.${numutils.numformatstat.play}': '${NumUtils.numFormat(stat.play)}播放',
  'general.${numutils.numformatuserstat.f': '${NumUtils.numFormat(userStat.follower)}粉丝    ${',
  'general.${numutils.numformatvote.joinn': '${NumUtils.numFormat(vote.joinNum)}人参与',
  'general.${opus.authorname}·${opus.stat': '${opus.authorName} · ${opus.statView ?? 0}阅读',
  'general.${pageinfo.entries.length}个视频': '${pageInfo.entries.length}个视频',
  'general.${speed}x播放': '${speed}x播放',
  'general.${vote.joinnum}人参与': '${vote.joinNum}人参与',
  'general.&&content.atnametomid.contains': ') &&
            content.atNameToMid.containsKey(name)) {
          // 处理@用户
          spanChildren.add(
            TextSpan(
              text: matchStr,
              style: TextStyle(color: theme.colorScheme.primary),
              recognizer: NoDeadlineTapGestureRecognizer()
                ..onTap = () =>
                    Get.toNamed(',
  'general.,,,],],,,;//商品case': ',
                    ),
                  ),
                ],
              ],
            ),
          ),
        );

      // 商品
      case ',
  'general.,,;break;//话题case': '),
              ),
            );
            break;
          // 话题
          case ',
  'general.,//http2adapter不会自动添加标头if!_ena': ', // Http2Adapter不会自动添加标头
        if (!_enableHttp2) ',
  'general.,//不改变当前方向none': '),
  // 不改变当前方向
  none(',
  'general.,//始终横屏horizontal': '),
  // 始终横屏
  horizontal(',
  'general.,//始终竖屏vertical': '),
  // 始终竖屏
  vertical(',
  'general.,//屏幕长宽比<kscreenratio或为竖屏视频时竖屏': '),
  // 屏幕长宽比 < kScreenRatio 或为竖屏视频时竖屏，否则横屏
  ratio(',
  'general.,//强制重力转屏（仅安卓）gravity': '),
  // 强制重力转屏（仅安卓）
  gravity(',
  'general.,;}}////发送私信//staticfuture<loa': ',
      );
    }
  }

  // // 发送私信
  // static Future<LoadingState<void>> sendMsg({
  //   required int senderUid,
  //   required int receiverId,
  //   int? msgType,
  //   dynamic content,
  // }) async {
  //   String csrf = Accounts.main.csrf;
  //   final devId = getDevId();
  //   final data = {
  //     ',
  'general.,casesensitive:false,;textspan': ',
    caseSensitive: false,
  );

  TextSpan buildContent(ThemeData theme, VideoDetailData content) {
    if (content.descV2.isNullOrEmpty) {
      return const TextSpan();
    }
    // type
    // 1 普通文本
    // 2 @用户
    final List<TextSpan> spanChildren = content.descV2!.map((currentDesc) {
      switch (currentDesc.type) {
        case 1:
          final List<InlineSpan> spanChildren = <InlineSpan>[];
          currentDesc.rawText?.splitMapJoin(
            urlRegExp,
            onMatch: (Match match) {
              final matchStr = match[0]!;
              final matchStrLowerCase = matchStr.toLowerCase();
              if (matchStrLowerCase.startsWith(',
  'general.,compactionstrategy:intentries': ',
        compactionStrategy: (int entries, int deletedEntries) {
          return deletedEntries > 4;
        },
      ).then((res) => localCache = res),
      // 设置
      Hive.openBox(',
  'general.,constdurationmilliseconds:20,': ',
        const Duration(milliseconds: 20),
        () {
          final double volume = clampDouble(
            plPlayerController.volume.value - event.localPanDelta.dy / level,
            0.0,
            plPlayerController.maxVolume,
          );
          plPlayerController.setVolume(volume);
        },
      );
    }
  }

  void _onPointerPanZoomEnd(PointerPanZoomEndEvent event) {
    plPlayerController.showPreview.value = false;
    if (plPlayerController.isSliderMoving.value) {
      plPlayerController
        ..seekTo(plPlayerController.sliderPosition, isSeek: false)
        ..onChangedSliderEnd();
    }
    _gestureType = null;
  }

  void _onPointerSignal(PointerSignalEvent event) {
    if (event is PointerScrollEvent) {
      final offset = -event.scrollDelta.dy / 4000;
      final volume = clampDouble(
        plPlayerController.volume.value + offset,
        0.0,
        plPlayerController.maxVolume,
      );
      plPlayerController.setVolume(volume);
    }
  }

  @override
  Widget build(BuildContext context) {
    maxWidth = widget.maxWidth;
    maxHeight = widget.maxHeight;
    final isFullScreen = this.isFullScreen;
    final primary = isFullScreen && colorScheme.isLight
        ? colorScheme.inversePrimary
        : colorScheme.primary;
    late final thumbGlowColor = primary.withAlpha(80);
    late final bufferedBarColor = primary.withValues(alpha: 0.4);
    const TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
    );
    final isLive = plPlayerController.isLive;

    final child = Stack(
      fit: StackFit.passthrough,
      key: _playerKey,
      children: <Widget>[
        _videoWidget,

        if (widget.danmuWidget case final danmaku?)
          Positioned.fill(top: 4, child: danmaku),

        if (!isLive)
          Positioned.fill(
            child: IgnorePointer(
              ignoring: !plPlayerController.enableDragSubtitle,
              child: Obx(
                () => SubtitleView(
                  controller: videoController,
                  configuration: plPlayerController.subtitleConfig.value,
                  enableDragSubtitle: plPlayerController.enableDragSubtitle,
                  onUpdatePadding: plPlayerController.onUpdatePadding,
                ),
              ),
            ),
          ),

        if (plPlayerController.enableTapDm)
          Obx(
            () {
              if (!plPlayerController.enableShowDanmaku.value) {
                return const SizedBox.shrink();
              }
              final dmOffset = _dmOffset.value;
              if (dmOffset != null && _suspendedDm != null) {
                return _buildDmAction(_suspendedDm!, dmOffset);
              }
              return const SizedBox.shrink();
            },
          ),

        /// 长按倍速 toast
        if (!isLive)
          IgnorePointer(
            ignoring: true,
            child: Align(
              alignment: Alignment.topCenter,
              child: FractionalTranslation(
                translation: isFullScreen
                    ? const Offset(0.0, 1.2)
                    : const Offset(0.0, 0.8),
                child: Obx(
                  () => AnimatedOpacity(
                    curve: Curves.easeInOut,
                    opacity: plPlayerController.longPressStatus.value
                        ? 1.0
                        : 0.0,
                    duration: const Duration(milliseconds: 150),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Color(0x88000000),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Obx(
                        () => Text(
                          ',
  'general.,maxlines:1,overflow:textoverf': ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    );
                  }),
                ];
              },
              child: SizedBox(
                width: widgetWidth,
                height: 30,
                child: val == 0
                    ? const Icon(
                        Icons.closed_caption_off_outlined,
                        size: 22,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.closed_caption_off_rounded,
                        size: 22,
                        color: Colors.white,
                      ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),

      /// 播放速度
      BottomControlType.speed => Obx(
        () => PopupMenuButton<double>(
          tooltip: ',
  'general.,page:=>constarticlepage,//历史记': ', page: () => const ArticlePage()),

    // 历史记录搜索
    GetPage(name: ',
  'general.,page:=>constatmepage,//收到的赞ge': ', page: () => const AtMePage()),
    // 收到的赞
    GetPage(name: ',
  'general.,page:=>constdynamicdetailpage': ', page: () => const DynamicDetailPage()),
    // 关注
    GetPage(name: ',
  'general.,page:=>constdynamicspage,//动态': ', page: () => const DynamicsPage()),
    // 动态详情
    GetPage(name: ',
  'general.,page:=>constfanspage,//直播详情ge': ', page: () => const FansPage()),
    // 直播详情
    GetPage(name: ',
  'general.,page:=>constfavdetailpage,//稍': ', page: () => const FavDetailPage()),
    // 稍后再看
    GetPage(name: ',
  'general.,page:=>constfollowpage,//粉丝ge': ', page: () => const FollowPage()),
    // 粉丝
    GetPage(name: ',
  'general.,page:=>constfollowsearchpage,': ', page: () => const FollowSearchPage()),
    // 消息页面
    GetPage(name: ',
  'general.,page:=>constfontsizeselectpag': ', page: () => const FontSizeSelectPage()),
    // 屏幕帧率
    GetPage(name: ',
  'general.,page:=>consthistorypage,//搜索页': ', page: () => const HistoryPage()),
    // 搜索页面
    GetPage(name: ',
  'general.,page:=>consthomepage,//热门getp': ', page: () => const HomePage()),
    // 热门
    GetPage(name: ',
  'general.,page:=>consthotpage,//视频详情get': ', page: () => const HotPage()),
    // 视频详情
    GetPage(name: ',
  'general.,page:=>constlaterpage,//历史记录g': ', page: () => const LaterPage()),
    // 历史记录
    GetPage(name: ',
  'general.,page:=>constlikemepage,//系统消息': ', page: () => const LikeMePage()),
    // 系统消息
    GetPage(name: ',
  'general.,page:=>constliveroompage,//用户': ', page: () => const LiveRoomPage()),
    // 用户中心
    GetPage(name: ',
  'general.,page:=>constloginpage,//用户动态g': ', page: () => const LoginPage()),
    // 用户动态
    GetPage(name: ',
  'general.,page:=>constlogspage,//订阅getp': ', page: () => const LogsPage()),
    // 订阅
    GetPage(name: ',
  'general.,page:=>constmainapp,//首页推荐get': ', page: () => const MainApp()),
    // 首页(推荐)
    GetPage(name: ',
  'general.,page:=>constmemberdynamicspag': ', page: () => const MemberDynamicsPage()),
    // 日志
    GetPage(name: ',
  'general.,page:=>constmembersearchpage,': ', page: () => const MemberSearchPage()),
    // 推荐流设置
    GetPage(name: ',
  'general.,page:=>constplaysetting,//外观设': ', page: () => const PlaySetting()),
    // 外观设置
    GetPage(name: ',
  'general.,page:=>constplayspeedpage,//收': ', page: () => const PlaySpeedPage()),
    // 收藏搜索
    GetPage(name: ',
  'general.,page:=>constprivacysetting,//': ', page: () => const PrivacySetting()),
    // 其它设置
    GetPage(name: ',
  'general.,page:=>constrecommendsetting,': ', page: () => const RecommendSetting()),
    // 音视频设置
    GetPage(name: ',
  'general.,page:=>constreplymepage,//我的g': ', page: () => const ReplyMePage()),
    // @我的
    GetPage(name: ',
  'general.,page:=>constsearchpage,//搜索结果': ', page: () => const SearchPage()),
    // 搜索结果
    GetPage(name: ',
  'general.,page:=>constsearchresultpage,': ', page: () => const SearchResultPage()),
    // 动态
    GetPage(name: ',
  'general.,page:=>constsetdisplaymode,//': ', page: () => const SetDisplayMode()),
    // 关于
    GetPage(name: ',
  'general.,page:=>conststylesetting,//隐私': ', page: () => const StyleSetting()),
    // 隐私设置
    GetPage(name: ',
  'general.,page:=>constsubdetailpage,//弹': ', page: () => const SubDetailPage()),
    // 弹幕屏蔽管理
    GetPage(name: ',
  'general.,page:=>constsubpage,//订阅详情get': ', page: () => const SubPage()),
    // 订阅详情
    GetPage(name: ',
  'general.,page:=>constsysmsgpage,//登录页面': ', page: () => const SysMsgPage()),
    // 登录页面
    GetPage(name: ',
  'general.,page:=>constvideosetting,//播放': ', page: () => const VideoSetting()),
    // 播放器设置
    GetPage(name: ',
  'general.,page:=>constwebviewpage,//设置g': ', page: () => const WebviewPage()),
    // 设置
    GetPage(name: ',
  'general.,page:=>constwhisperdetailpage': ', page: () => const WhisperDetailPage()),
    // 回复我的
    GetPage(name: ',
  'general.,page:=>constwhisperpage,//私信详': ', page: () => const WhisperPage()),
    // 私信详情
    GetPage(name: ',
  'general.,response;}}}else{//获取用户信息失败fi': ', response);
        }
      }
    } else {
      // 获取用户信息失败
      final errMsg = res.toString();
      if (errMsg == ',
  'general.,style:consttextstylefontsize:': ',
                          style: const TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        /// 亮度🌞 控制条展示
        IgnorePointer(
          ignoring: true,
          child: Align(
            alignment: Alignment.center,
            child: Obx(
              () => AnimatedOpacity(
                curve: Curves.easeInOut,
                opacity: _brightnessIndicator.value ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 150),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0x88000000),
                    borderRadius: BorderRadius.all(Radius.circular(64)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        _brightnessValue.value < 1.0 / 3.0
                            ? Icons.brightness_low
                            : _brightnessValue.value < 2.0 / 3.0
                            ? Icons.brightness_medium
                            : Icons.brightness_high,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        ',
  'general.,style:enabled?consttextstylec': ',
                      style: enabled
                          ? const TextStyle(color: Colors.white, fontSize: 13)
                          : const TextStyle(
                              color: Color(0x62FFFFFF),
                              fontSize: 13,
                            ),
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                currentVideoQa.shortDesc,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          );
        },
      ),

      /// 全屏
      BottomControlType.fullscreen => ComBtn(
        width: widgetWidth,
        height: 30,
        tooltip: isFullScreen ? ',
  'general.,style:style,recognizer:i.jump': ',
                  style: style,
                  recognizer: i.jumpUrl == null
                      ? null
                      : (NoDeadlineTapGestureRecognizer()
                          ..onTap = () => PageUtils.handleWebview(i.jumpUrl!)),
                ),
              );
            break;
          // 投稿
          case ',
  'general.,style:textstyle,obx{returntex': ', style: textStyle),
                          Obx(
                            () {
                              return Text(
                                DurationUtils.formatDuration(
                                  plPlayerController.duration.value.inSeconds,
                                ),
                                style: textStyle,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        /// 音量🔊 控制条展示
        IgnorePointer(
          ignoring: true,
          child: Align(
            alignment: Alignment.center,
            child: Obx(
              () {
                final volume = plPlayerController.volume.value;
                return AnimatedOpacity(
                  curve: Curves.easeInOut,
                  opacity: plPlayerController.volumeIndicator.value ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 150),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0x88000000),
                      borderRadius: BorderRadius.all(Radius.circular(64)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          volume == 0.0
                              ? Icons.volume_off
                              : volume < 0.5
                              ? Icons.volume_down
                              : Icons.volume_up,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        const SizedBox(width: 2.0),
                        Text(
                          ',
  'general.-哔哩哔哩专栏': '- 哔哩哔哩专栏',
  'general...badcertificatecallback=cert,': ')
              ..badCertificateCallback = (cert, host, port) => true
          : () => HttpClient()
              ..idleTimeout = const Duration(seconds: 15)
              ..autoUncompress = false, // Http2Adapter没有自动解压, 统一行为
    );

    final connectionManager = _enableHttp2
        ? ConnectionManager(
            idleTimeout: const Duration(seconds: 15),
            onClientCreate: enableSystemProxy
                ? (_, config) => config
                    ..proxy = Uri(
                      scheme: ',
  'general..thenres=>setting=res,//搜索历史hi': ').then((res) => setting = res),
      // 搜索历史
      Hive.openBox(
        ',
  'general.08ct（华为云，融合cdn）': '08ct（华为云，融合CDN）',
  'general.08c（华为云，融合cdn）': '08c（华为云，融合CDN）',
  'general.08h（华为云，融合cdn）': '08h（华为云，融合CDN）',
  'general.0分钟': '0分钟',
  'general.://#装扮/剧集点评/普通分享//case': ':
      // # 装扮/剧集点评/普通分享
      // case ',
  'general.://图文动态查看//case': ':
      // 图文动态查看
      // case ',
  'general.://文章case': ':
    // 文章
    case ',
  'general.://转发的动态//case': ':
      // 转发的动态
      // case ',
  'general.:1315873,//免登录查看1080piftrylook': ': 1315873,
      // 免登录查看1080p
      if (tryLook) ',
  'general.:2,//使用https': ': 2, //使用https
      ',
  'general.:accounts.heartbeat.csrf,},opt': ': Accounts.heartbeat.csrf,
      },
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
  }

  // 添加追番
  static Future<LoadingState<String>> pgcAdd({int? seasonId}) async {
    final res = await Request().post(
      Api.pgcAdd,
      data: {',
  'general.:accounts.heartbeat.csrf},opti': ': Accounts.heartbeat.csrf},
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
  }

  // 视频播放进度
  static Future<void> heartBeat({
    Object? aid,
    Object? bvid,
    required Object cid,
    required Object progress,
    Object? epid,
    Object? seasonId,
    Object? subType,
    required VideoType videoType,
  }) {
    final isPugv = videoType == VideoType.pugv;
    return Request().post(
      Api.heartBeat,
      data: {
        if (isPugv) ',
  'general.:awaitaccountmanager.dioerrore': ': await AccountManager.dioError(e),
        }, // 将自定义 Map 数据赋值给 Response 的 data 属性
        statusCode: e.response?.statusCode ?? -1,
        requestOptions: e.requestOptions,
      );
    }
  }

  /*
   * 下载文件
   */
  Future<Response> downloadFile(
    String urlPath,
    String savePath, {
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.download(
        urlPath,
        savePath,
        cancelToken: cancelToken,
        // onReceiveProgress: (int count, int total) {
        // 进度
        // if (kDebugMode) debugPrint(',
  'general.:constants.appname;//图片分享stati': '
      : Constants.appName;

  // 图片分享
  static Future<void> onShareImg(String url) async {
    try {
      SmartDialog.showLoading();
      final res = await CacheManager.manager.getSingleFile(
        url.http2https,
      );
      SmartDialog.dismiss();
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(res.path)],
          sharePositionOrigin: await ShareUtils.sharePositionOrigin,
        ),
      );
    } catch (e) {
      SmartDialog.showToast(e.toString());
    }
  }

  // 获取存储权限
  static Future<bool> requestPer() async {
    final status = Platform.isAndroid
        ? await Permission.storage.request()
        : await Permission.photos.request();
    if (status == PermissionStatus.denied ||
        status == PermissionStatus.permanentlyDenied) {
      SmartDialog.show(
        builder: (context) => AlertDialog(
          title: Text(',
  'general.:dynamicarchivemodelugcseason=': ':
        DynamicArchiveModel ugcSeason =
            item.modules.moduleDynamic!.major!.ugcSeason!;
        int aid = ugcSeason.aid!;
        String bvid = IdUtils.av2bv(aid);
        String cover = ugcSeason.cover!;
        final res = await SearchHttp.ab2cWithDimension(bvid: bvid);
        final cid = res?.cid;
        if (cid != null) {
          toVideoPage(
            aid: aid,
            bvid: bvid,
            cid: cid,
            cover: cover,
            dimension: res!.dimension,
          );
        }
        break;

      /// 番剧查看
      case ',
  'general.:finalarchive=item.modules.mod': ':
        final archive = item.modules.moduleDynamic!.major!.archive!;
        // pgc
        if (archive.type == 2) {
          // jumpUrl
          if (archive.jumpUrl case final jumpUrl?) {
            if (viewPgcFromUri(jumpUrl)) {
              return;
            }
          }
          // redirectUrl from intro
          final res = await VideoHttp.videoIntro(bvid: archive.bvid!);
          if (res.dataOrNull?.redirectUrl case final redirectUrl?) {
            if (viewPgcFromUri(redirectUrl)) {
              return;
            }
          }
          // redirectUrl from jumpUrl
          if (await UrlUtils.parseRedirectUrl(archive.jumpUrl.http2https, false)
              case final redirectUrl?) {
            if (viewPgcFromUri(redirectUrl)) {
              return;
            }
          }
        }

        try {
          String bvid = archive.bvid!;
          String cover = archive.cover!;
          final res = await SearchHttp.ab2cWithDimension(bvid: bvid);
          final cid = res?.cid;
          if (cid != null) {
            toVideoPage(
              bvid: bvid,
              cid: cid,
              cover: cover,
              dimension: res!.dimension,
            );
          }
        } catch (err) {
          SmartDialog.showToast(err.toString());
        }
        break;

      /// 专栏文章查看
      case ',
  'general.:finalhaslink=i.jumpurl?.isnot': ':
            final hasLink = i.jumpUrl?.isNotEmpty ?? false;
            if (!hasLink) {
              item.linkFolded = true;
            }
            spanChildren
              ..add(
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.link,
                    size: 20,
                    color: theme.colorScheme.primary,
                  ),
                ),
              )
              ..add(
                TextSpan(
                  text: i.text,
                  style: style,
                  recognizer: hasLink
                      ? (NoDeadlineTapGestureRecognizer()
                          ..onTap = () => PageUtils.handleWebview(i.jumpUrl!))
                      : null,
                ),
              );
            break;
          // 投票
          case ',
  'general.:i.origtext!.substring1,i.orig': ': i.origText!.substring(
                        1,
                        i.origText!.length - 1,
                      ),
                    },
                  ),
              ),
            );
            break;
          // 网页链接
          case ',
  'general.:id;finalrxboolisloaded=false.': ' : id;

  final RxBool isLoaded = false.obs;
  DynamicItemModel? opusData; // 标题信息从summary获取, 动态没有favorite
  ArticleViewData? articleData;
  final stats = Rxn<ModuleStatModel>();

  List<ArticleContentModel>? get opus =>
      opusData?.modules.moduleContent ?? articleData?.opus?.content;

  List<SourceModel>? _images;
  List<SourceModel> images() => _images ??= opus!
      .where((e) => e.paraType == 2 && e.pic != null)
      .map((e) => SourceModel(url: e.pic!.pics!.first.url!))
      .toList();

  @override
  void onInit() {
    super.onInit();
    final params = Get.parameters;
    id = params[',
  'general.:ifi.origtext==_linkfoldedtext': ':
            if (i.origText == _linkFoldedText) {
              item.linkFolded = true;
            }
            spanChildren.add(
              TextSpan(
                text: i.origText,
                style: const TextStyle(height: 1.65),
              ),
            );
            break;
          // @用户
          case ',
  'general.:int,//绑定记录是否锁定///}///todo:sho': ': int,      // 绑定记录是否锁定
  /// }
  /// TODO: show port video info dialog
  static Future<LoadingState<String>> getPortVideo({
    required String bvid,
    required int cid,
  }) async {
    final res = await Request().get(
      _api(SponsorBlockApi.portVideo),
      queryParameters: {
        ',
  'general.:int,//绑定记录的投票数///': ': int,       // 绑定记录的投票数
  ///   ',
  'general.:item,},;}}///点击评论action直接查看评论': ': item,
          },
        );
      }
    }

    /// 点击评论action 直接查看评论
    if (isPush) {
      push();
      return;
    }

    // if (kDebugMode) debugPrint(',
  'general.:key,};returnjsonencodemessage': ': key,
    };
    return jsonEncode(message);
  }
}

abstract class AbstractPackage<T> {
  PackageHeader header;
  T body;
  Uint8List marshal();
  AbstractPackage({required this.header, required this.body});
}

//认证包
class AuthPackage extends AbstractPackage<Message> {
  AuthPackage({required super.header, required super.body});

  @override
  Uint8List marshal() {
    final json = utf8.encode(body.toJsonStr());
    final buffer = BytesBuilder()
      ..add(header.toBytes(json.length))
      ..add(json);
    return buffer.toBytes();
  }
}

//心跳包
class HeartbeatPackage extends AbstractPackage<dynamic> {
  HeartbeatPackage({required super.header, super.body});

  @override
  Uint8List marshal() {
    return header.toBytes(0);
  }
}

class LiveMessageStream {
  String streamToken;
  int roomId, uid;
  List<String> servers;
  final List<void Function(dynamic obj)> _eventListeners = [];
  LiveMessageStream({
    required this.streamToken,
    required this.roomId,
    required this.uid,
    required this.servers,
  });

  bool _active = true;
  WebSocketChannel? _channel;
  StreamSubscription? _socketSubscription;
  Timer? _timer;
  final String logTag = ',
  'general.:liveplayinfolive=item.modules': ':
        LivePlayInfo live = item
            .modules
            .moduleDynamic!
            .major!
            .subscriptionNew!
            .liveRcmd!
            .content!
            .livePlayInfo!;
        toLiveRoom(live.roomId);
        break;

      /// 合集查看
      case ',
  'general.:matchstr,style:isvalid?textst': ' : matchStr,
              style: isValid
                  ? TextStyle(color: theme.colorScheme.primary)
                  : null,
              recognizer: isValid
                  ? (NoDeadlineTapGestureRecognizer()
                      ..onTap = () {
                        // 跳转到指定位置
                        try {
                          SmartDialog.showToast(',
  'general.:pageutils.viewpugvseasonid:it': ':
        PageUtils.viewPugv(
          seasonId: item.modules.moduleDynamic!.major!.courses!.id,
        );
        break;

      // 纯文字动态查看
      // case ',
  'general.:qn??80,//获取所有格式的视频': ': qn ?? 80,
      // 获取所有格式的视频
      ',
  'general.:returnconstsizedbox.shrink;//': ':
      return const SizedBox.shrink();
    // 视频
    case ',
  'general.:returnforwardpanelcontext,the': ':
      return forwardPanel(
        context,
        theme: theme,
        isSave: isSave,
        orig: item.orig!,
        isDetail: isDetail,
        floor: floor + 1,
      );
    // 直播
    case ',
  'general.:returnlivepanelcontext,theme:': ':
      return livePanel(
        context,
        theme: theme,
        item: item,
        floor: floor,
        isDetail: isDetail,
      );
    // 活动
    case ',
  'general.:returnlivercmdpanelcontext,th': ':
      return liveRcmdPanel(
        context,
        theme: theme,
        isDetail: isDetail,
        item: item,
        floor: floor,
      );
    // 直播
    case ',
  'general.:returnrowspacing:4,children:[': ':
      return Row(
        spacing: 4,
        children: [
          const Icon(FontAwesomeIcons.ghost, size: 14),
          Text(major!.none!.tips!),
        ],
      );
    // 图文
    case ',
  'general.:returnvideoseasonwidgetcontex': ':
      return videoSeasonWidget(
        context,
        theme: theme,
        item: item,
        floor: floor,
        isSave: isSave,
        isDetail: isDetail,
      );
    // 转发
    case ',
  'general.:sort+2,//2:按时间排序；3：按热度排序},opt': ': sort + 2, //2:按时间排序；3：按热度排序
            },
            options: !isLogin ? options : null,
          )
        : await Request().get(
            Api.replyList,
            queryParameters: {
              ',
  'general.:string,//b站视频bvid///': ': string,     // B站视频BVID
  ///   ',
  'general.:string,//youtube视频id///': ': string,    // YouTube视频ID
  ///   ',
  'general.:string,//绑定记录的uuid（不是视频中片段的uu': ': string,     // 绑定记录的UUID（不是视频中片段的UUID，是绑定记录本身的UUID）
  ///   ',
  'general.:string,//视频cid///': ': string,      // 视频CID
  ///   ',
  'general.:url,...?parameters,},off:off,': ': url,
        ...?parameters,
      },
      off: off,
    );
  }

  // 投稿跳转
  static Future<void> videoPush(
    int? aid,
    String? bvid, {
    bool showDialog = true,
    bool off = false,
    int? progress, // milliseconds
    String? part,
  }) async {
    try {
      aid ??= IdUtils.bv2av(bvid!);
      bvid ??= IdUtils.av2bv(aid);
      if (showDialog) {
        SmartDialog.showLoading<dynamic>(msg: ',
  'general.:url.title},;}else{pageutils.h': ': url.title},
                  );
                } else {
                  PageUtils.handleWebview(matchStr);
                }
              }
            },
        ),
      ];
      if (isCv) {
        spanChildren.insertAll(0, children);
      } else {
        spanChildren.addAll(children);
      }
    }

    // 分割文本并处理每个部分
    content.message.splitMapJoin(
      pattern,
      onMatch: (Match match) {
        String matchStr = match[0]!;
        late final name = matchStr.substring(1);
        late final topic = matchStr.substring(1, matchStr.length - 1);
        if (content.emotes.containsKey(matchStr)) {
          // 处理表情
          final emote = content.emotes[matchStr]!;
          final size = emote.size.toInt() * 20.0;
          spanChildren.add(
            WidgetSpan(
              child: NetworkImgLayer(
                src: emote.hasWebpUrl()
                    ? emote.webpUrl
                    : emote.hasGifUrl()
                    ? emote.gifUrl
                    : emote.url,
                type: ImageType.emote,
                width: size,
                height: size,
              ),
            ),
          );
        } else if (matchStr.startsWith(',
  'general.:varbvid=videoitem.bvid??iduti': ':
        var bvid = videoItem.bvid ?? IdUtils.av2bv(videoItem.aid!);
        var cid = videoItem.cid;
        bool isVertical = false;
        Dimension? dimension;
        if (videoItem is RcmdVideoItemAppModel) {
          if (videoItem.uri case final uri?) {
            isVertical = uri.isVerticalFromUri;
          }
        }
        if (cid == null) {
          if (await SearchHttp.ab2cWithDimension(aid: videoItem.aid, bvid: bvid)
              case final res?) {
            cid = res.cid;
            dimension = res.dimension;
          }
        }
        if (cid != null) {
          PageUtils.toVideoPage(
            aid: videoItem.aid,
            bvid: bvid,
            cid: cid,
            cover: videoItem.cover,
            title: videoItem.title,
            isVertical: isVertical,
            dimension: dimension,
          );
        }
        break;
      // 动态
      case ',
  'general.:videodetail.owner!.mid!.tostr': ': videoDetail.owner!.mid!.toString(),
                    },
                  );
                } catch (e) {
                  SmartDialog.showToast(e.toString());
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  // 查询关注状态
  Future<void> queryFollowStatus() async {
    final videoDetail = this.videoDetail.value;
    if (videoDetail.owner == null || videoDetail.staff?.isNotEmpty == true) {
      return;
    }
    final res = await UserHttp.userRelation(videoDetail.owner!.mid!);
    if (res case Success(:final response)) {
      if (response.special == 1) response.attribute = -10;
      followStatus.value = response;
    }
  }

  // 关注/取关up
  Future<void> actionRelationMod(BuildContext context) async {
    if (!isLogin) {
      SmartDialog.showToast(',
  'general.;///app端密码登录///username///pass': ';

  /// app端密码登录
  /// username
  /// password
  /// key
  /// salt
  static const String loginByPwdApi =
      ',
  'general.;///cookie转access_keystaticcon': ';

  /// cookie转access_key
  static const qrcodeConfirm =
      ',
  'general.;///typestrlogintelcheck///cod': ';

  /// type	str	loginTelCheck
  /// code	int	验证码内容
  /// tmp_code	str	验证标记代码	来自数据处理中的解析出的参数tmp_token
  /// request_id	str	验证请求标记	来自数据处理中的解析出的参数requestId
  /// captcha_key	str	验证秘钥	来自申请验证码的captcha_key（data->captcha_key）
  static const String safeCenterSmsVerify =
      ',
  'general.;///view层根据status判断渲染逻辑abstrac': ';

/// view层根据 status 判断渲染逻辑
abstract final class VideoHttp {
  static RegExp zoneRegExp = RegExp(Pref.banWordForZone, caseSensitive: false);
  static bool enableFilter = zoneRegExp.pattern.isNotEmpty;

  // 首页推荐视频
  static Future<LoadingState<List<RcmdVideoItemModel>>> rcmdVideoList({
    required int ps,
    required int freshIdx,
  }) async {
    final res = await Request().get(
      Api.recommendListWeb,
      queryParameters: await WbiSign.makSign({
        ',
  'general.;///主页-最近投币的视频///vmid///gaia_s': ';

  /// 主页 - 最近投币的视频
  /// vmid
  /// gaia_source = main_web
  /// web_location
  /// w_rid
  /// wts
  static const getRecentCoinVideoApi = ',
  'general.;///传入播放器控制器，监听播放进度，加载对应弹幕clas': ';

/// 传入播放器控制器，监听播放进度，加载对应弹幕
class PlDanmaku extends StatefulWidget {
  final int cid;
  final PlPlayerController playerController;
  final bool isPipMode;
  final bool isFullScreen;
  final bool isFileSource;
  final Size size;

  const PlDanmaku({
    super.key,
    required this.cid,
    required this.playerController,
    this.isPipMode = false,
    required this.isFullScreen,
    required this.isFileSource,
    required this.size,
  });

  @override
  State<PlDanmaku> createState() => _PlDanmakuState();

  bool get notFullscreen => !isFullScreen || isPipMode;
}

class _PlDanmakuState extends State<PlDanmaku> {
  PlPlayerController get playerController => widget.playerController;

  late final PlDanmakuController _plDanmakuController;
  DanmakuController<DanmakuExtra>? _controller;
  int latestAddedPosition = -1;

  @override
  void initState() {
    super.initState();
    _plDanmakuController = PlDanmakuController(
      widget.cid,
      playerController,
      widget.isFileSource,
    );
    if (playerController.enableShowDanmaku.value) {
      if (widget.isFileSource) {
        _plDanmakuController.initFileDmIfNeeded();
      } else {
        _plDanmakuController.queryDanmaku(
          PlDanmakuController.calcSegment(
            playerController.position.inMilliseconds,
          ),
        );
      }
    }
    playerController
      ..addStatusLister(playerListener)
      ..addPositionListener(videoPositionListen);
  }

  @override
  void didUpdateWidget(PlDanmaku oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.notFullscreen != widget.notFullscreen &&
        !DanmakuOptions.sameFontScale) {
      _controller?.updateOption(
        DanmakuOptions.get(notFullscreen: widget.notFullscreen),
      );
    }
  }

  // 播放器状态监听
  void playerListener(PlayerStatus status) {
    if (_controller case final controller?) {
      if (status.isPlaying) {
        controller.resume();
      } else {
        controller.pause();
      }
    }
  }

  @pragma(',
  'general.;///动态受限折叠staticconstfoldtypef': ');

  /// 动态受限折叠
  static const FoldType FoldTypeLimit =
      FoldType._(4, _omitEnumNames ? ',
  'general.;///发送私信staticconststringsendm': ';

  /// 发送私信
  static const String sendMsg = ',
  'general.;///取消订阅-播单staticconststringun': ';

  /// 取消订阅-播单
  static const String unfavFolder = ',
  'general.;///国创staticconstvideosubtypev': ');

  /// 国创
  static const VideoSubType VideoSubTypeDomestic =
      VideoSubType._(4, _omitEnumNames ? ',
  'general.;///密码加密密钥///disable_rcmd///lo': ';

  /// 密码加密密钥
  /// disable_rcmd
  /// local_id
  static const getWebKey = ',
  'general.;///密码登录时风控发送手机验证码///sms_types': ';

  /// 密码登录时风控发送手机验证码
  ///sms_type	str	loginTelCheck
  /// tmp_code	str	验证标记代码	来自数据处理中的解析出的参数tmp_token
  /// gee_challenge	str	极验id	申请人机验证时得到(data->gee_challenge)
  /// gee_seccode	str	极验key	人机验证后得到(result->geetest_seccode)
  /// gee_validate	str	极验result	人机验证后得到(result->geetest_validate)
  /// recaptcha_token	str	验证token	申请人机验证时得到(data->recaptcha_token)
  static const String safeCenterSmsCode =
      ',
  'general.;///密码登录时，提示“本次登录环境存在风险,需使用手机号': ';

  /// 密码登录时，提示“本次登录环境存在风险, 需使用手机号进行验证或绑定”
  /// 根据https://ivan.hanloth.cn/archives/530/流程进行手机号验证
  /// tmp_code
  static const String safeCenterGetInfo =
      ',
  'general.;///小视频staticconstmediatypemed': ');

  /// 小视频
  static const MediaType MediaTypeVCS =
      MediaType._(4, _omitEnumNames ? ',
  'general.;///我的订阅-合集详情staticconstfavsea': ';

  /// 我的订阅-合集详情
  static const favSeasonList = ',
  'general.;///我的订阅staticconstusersubfold': ';

  /// 我的订阅
  static const userSubFolder = ',
  'general.;///扫码登录（tv端）staticconstqrcode': ';

  ///扫码登录（TV端）
  static const qrcodePoll =
      ',
  'general.;///排行榜staticconststringgetran': ';

  /// 排行榜
  static const String getRankApi = ',
  'general.;///收藏夹详情///media_id当前收藏夹id搜索全': ';

  /// 收藏夹 详情
  /// media_id  当前收藏夹id 搜索全部时为默认收藏夹id
  /// pn int 当前页
  /// ps int pageSize
  /// keyword String 搜索词
  /// order String 排序方式 view 最多播放 mtime 最近收藏 pubtime 最近投稿
  /// tid int 分区id
  /// platform web
  /// type 0 当前收藏夹 1 全部收藏夹
  // https://api.bilibili.com/x/v3/fav/resource/list?media_id=76614671&pn=1&ps=20&keyword=&order=mtime&type=0&tid=0
  static const String favResourceList = ',
  'general.;///最近点赞的视频staticconstgetrecen': ';

  /// 最近点赞的视频
  static const getRecentLikeVideoApi = ',
  'general.;///标记已读post///talker_id:///se': ';

  /// 标记已读 POST
  /// talker_id:
  /// session_type: 1
  /// ack_seqno: 920224140918926
  /// build: 0
  /// mobi_app: web
  /// csrf_token:
  /// csrf:
  static const String ackSessionMsg =
      ',
  'general.;///激活buvid3staticconstactivat': ';

  /// 激活buvid3
  static const activateBuvidApi = ',
  'general.;///用户专栏staticconstgetmemberse': ';

  /// 用户专栏
  static const getMemberSeasonsApi = ',
  'general.;///用户动态主页staticconstdynamicsp': ';

  /// 用户动态主页
  static const dynamicSpmPrefix = ',
  'general.;///用户发布折叠staticconstfoldtypef': ');

  /// 用户发布折叠
  static const FoldType FoldTypePublish =
      FoldType._(1, _omitEnumNames ? ',
  'general.;///申请二维码tv端staticconstgettvco': ';

  /// 申请二维码(TV端)
  static const getTVCode =
      ',
  'general.;///电影staticconstvideosubtypev': ');

  /// 电影
  static const VideoSubType VideoSubTypeMovie =
      VideoSubType._(2, _omitEnumNames ? ',
  'general.;///电视剧staticconstvideosubtype': ');

  /// 电视剧
  static const VideoSubType VideoSubTypeTeleplay =
      VideoSubType._(5, _omitEnumNames ? ',
  'general.;///番剧staticconstvideosubtypev': ');

  /// 番剧
  static const VideoSubType VideoSubTypeBangumi =
      VideoSubType._(1, _omitEnumNames ? ',
  'general.;///直播staticconstmediatypemedi': ');

  /// 直播
  static const MediaType MediaTypeLive =
      MediaType._(3, _omitEnumNames ? ',
  'general.;///私聊///': ';

  /// 私聊
  ///  ',
  'general.;///私聊用户信息///uids///build=0&mo': ';

  /// 私聊用户信息
  /// uids
  /// build=0&mobi_app=web
  static const String sessionAccountList =
      ',
  'general.;///稍后再看&收藏夹视频列表staticconststr': ';

  /// 稍后再看&收藏夹视频列表
  static const String mediaList = ',
  'general.;///纪录片staticconstvideosubtype': ');

  /// 纪录片
  static const VideoSubType VideoSubTypeDocumentary =
      VideoSubType._(3, _omitEnumNames ? ',
  'general.;///置顶视频staticconstgettopvideo': ';

  /// 置顶视频
  static const getTopVideoApi = ',
  'general.;///联合投稿折叠staticconstfoldtypef': ');

  /// 联合投稿折叠
  static const FoldType FoldTypeUnite =
      FoldType._(3, _omitEnumNames ? ',
  'general.;///获取未读动态数staticconstgetunrea': ';

  /// 获取未读动态数
  static const getUnreadDynamic = ',
  'general.;///获赞数播放数///midstaticconstget': ';

  /// 获赞数 播放数
  /// mid
  static const getMemberViewApi = ',
  'general.;///转发超频折叠staticconstfoldtypef': ');

  /// 转发超频折叠
  static const FoldType FoldTypeFrequent =
      FoldType._(2, _omitEnumNames ? ',
  'general.;///验证绑定手机号前的人机验证staticconstst': ';

  /// 验证绑定手机号前的人机验证
  static const String preCapture =
      ',
  'general.;//27eb53fc9058f8c3移动端android/': ';

  // 27eb53fc9058f8c3  移动端 Android
  // 4409e2ce8ffd12b8  HD版
  static const String appKey = ',
  'general.;//59b43e04ad6965f34319062b478': ';
  // 59b43e04ad6965f34319062b478f83dd TV端
  static const String appSec = ',
  'general.;//ai总结///https://api.bilibili': ';

  // AI总结
  /// https://api.bilibili.com/x/web-interface/view/conclusion/get?
  /// bvid=BV1ju4y1s7kn&
  /// cid=1296086601&
  /// up_mid=4641697&
  /// w_rid=1607c6c5a4a35a1297e31992220900ae&
  /// wts=1697033079
  static const String aiConclusion = ',
  'general.;//app端不感兴趣、取消不感兴趣staticconsts': ';

  // APP端不感兴趣、取消不感兴趣
  static const String feedDislike = ',
  'general.;//app端短信验证码staticconststringa': ';

  // app端短信验证码
  static const String appSmsCode =
      ',
  'general.;//app端验证码登录staticconststringl': ';

  // app端验证码登录
  static const String logInByAppSms =
      ',
  'general.;//captcha验证码staticconststring': ';

  // captcha验证码
  static const String getCaptcha =
      ',
  'general.;//github获取最新版staticconststrin': ';

  // github 获取最新版
  static const String latestApp =
      ',
  'general.;//todorefaclassseasonpanelext': ';

// TODO refa
class SeasonPanel extends StatefulWidget {
  const SeasonPanel({
    super.key,
    required this.heroTag,
    required this.showEpisodes,
    this.canTap = true,
    required this.ugcIntroController,
  });
  final String heroTag;
  final Function showEpisodes;
  final bool canTap;
  final UgcIntroController ugcIntroController;

  @override
  State<SeasonPanel> createState() => _SeasonPanelState();
}

class _SeasonPanelState extends State<SeasonPanel> {
  RxInt currentIndex = 0.obs;
  late VideoDetailController _videoDetailController;
  StreamSubscription? _listener;
  List<EpisodeItem> episodes = <EpisodeItem>[];

  UgcIntroController get ugcIntroController => widget.ugcIntroController;
  VideoDetailData get videoDetail =>
      widget.ugcIntroController.videoDetail.value;

  @override
  void initState() {
    super.initState();
    _videoDetailController = Get.find<VideoDetailController>(
      tag: widget.heroTag,
    );

    _videoDetailController.seasonCid = ugcIntroController.cid.value != 0
        ? (videoDetail.pages?.isNotEmpty == true
              ? videoDetail.isPageReversed
                    ? videoDetail.pages!.last.cid
                    : videoDetail.pages!.first.cid
              : ugcIntroController.cid.value)
        : videoDetail.isPageReversed
        ? videoDetail.pages!.last.cid
        : videoDetail.pages!.first.cid;

    /// 根据 cid 找到对应集，找到对应 episodes
    /// 有多个episodes时，只显示其中一个
    _findEpisode();
    if (episodes.isEmpty) {
      return;
    }

    /// 取对应 season_id 的 episodes
    currentIndex.value = episodes.indexWhere(
      (EpisodeItem e) => e.cid == _videoDetailController.seasonCid,
    );
    _listener = _videoDetailController.cid.listen((int cid) {
      if (_videoDetailController.seasonCid != cid) {
        bool isPart =
            videoDetail.pages?.indexWhere((item) => item.cid == cid) != -1;
        if (!isPart) {
          _videoDetailController.seasonCid = cid;
        }
      }
      _findEpisode();
      currentIndex.value = episodes.indexWhere(
        (EpisodeItem e) => e.cid == _videoDetailController.seasonCid,
      );
    });
  }

  @override
  void dispose() {
    _listener?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (episodes.isEmpty) {
      return const SizedBox.shrink();
    }
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 2,
        right: 2,
      ),
      child: Material(
        color: theme.colorScheme.onInverseSurface,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          onTap: widget.canTap
              ? () => widget.showEpisodes(
                  _videoDetailController.seasonIndex.value,
                  videoDetail.ugcSeason,
                  null,
                  _videoDetailController.bvid,
                  null,
                  _videoDetailController.seasonCid,
                )
              : null,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    ',
  'general.;//up主分组staticconststringfollo': ';

  // up主分组
  static const String followUpTag = ',
  'general.;//web端短信验证码staticconststrings': ';

  // web端短信验证码
  static const String smsCode =
      ',
  'general.;//web端验证码登录//web端密码登录staticco': ';

  // web端验证码登录

  // web端密码登录
  static const String logInByWebPwd =
      ',
  'general.;//全部关注的up//vmid用户idpn页码ps每页个数': ';

  // 全部关注的up
  // vmid 用户id pn 页码 ps 每页个数，最大50 order: desc
  // order_type 排序规则 最近访问传空，最常访问传 attention
  static const String followings = ',
  'general.;//关注的up动态//https://api.bilibi': ';

  // 关注的up动态
  // https://api.bilibili.com/x/polymer/web-dynamic/v1/feed/all
  // https://api.bilibili.com/x/polymer/web-dynamic/v1/feed/all?timezone_offset=-480&type=video&page=1&features=itemOpusStyle
  // https://api.bilibili.com/x/polymer/web-dynamic/v1/feed/all?host_mid=548196587&offset=&page=1&features=itemOpusStyle
  static const String followDynamic = ',
  'general.;//分享视频（web端）post//https://api': ';

  // 分享视频 （Web端） POST
  // https://api.bilibili.com/x/web-interface/share/add
  // aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  // bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  // csrf	str	CSRF Token（位于cookie）	必要

  // 一键三连
  // https://api.bilibili.com/x/web-interface/archive/like/triple
  // aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  // bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  // csrf	str	CSRF Token（位于cookie）	必要
  static const String ugcTriple = ',
  'general.;//分类搜索staticconststringsearch': ';

  // 分类搜索
  static const String searchByType = ',
  'general.;//删除某条历史记录staticconststringde': ';

  // 删除某条历史记录
  static const String delHistory = ',
  'general.;//删除评论//https://github.com/so': ';

  // 删除评论
  // https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/comment/action.md
  static const String replyDel = ',
  'general.;//判断视频是否被投币（双端）get//access_ke': ';

  // 判断视频是否被投币（双端）GET
  // access_key	str	APP登录Token	APP方式必要
  /// aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  /// bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  /// https://api.bilibili.com/x/web-interface/archive/coins
  // static const String hasCoinVideo = ',
  'general.;//判断视频是否被收藏（双端）get///aid//htt': ';

  // 判断视频是否被收藏（双端）GET
  /// aid
  // https://api.bilibili.com/x/v2/fav/video/favoured
  // static const String hasFavVideo = ',
  'general.;//判断视频是否被点赞（双端）get//access_ke': ';
  //判断视频是否被点赞（双端）Get
  // access_key	str	APP登录Token	APP方式必要
  /// aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  /// bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  // https://api.bilibili.com/x/web-interface/archive/has/like
  // static const String hasLikeVideo = ',
  'general.;//动态点赞//staticconststringlike': ';

  // 动态点赞
  // static const String likeDynamic =
  //     ',
  'general.;//动态点赞newstaticconststringthu': ';

  // 动态点赞 new
  static const String thumbDynamic = ',
  'general.;//发表评论//https://github.com/so': ';

  // 发表评论
  // https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/comment/action.md
  static const String replyAdd = ',
  'general.;//发送视频弹幕//https://github.com/': ';

  // 发送视频弹幕
  //https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/danmaku/action.md
  static const String shootDanmaku = ',
  'general.;//取消追番staticconststringpgcdel': ';

  // 取消追番
  static const String pgcDel = ',
  'general.;//多少人在看//https://api.bilibili': ';

  // 多少人在看
  // https://api.bilibili.com/x/player/online/total?aid=913663681&cid=1203559746&bvid=BV1MM4y1s7NZ&ts=56427838
  static const String onlineTotal = ',
  'general.;//字幕//aid,cidstaticconststrin': ';

  // 字幕
  // aid, cid
  static const String playInfo = ',
  'general.;//实际为flv/mp4格式，但已被淘汰，这里仅做兜底处理': ';

        // 实际为FLV/MP4格式，但已被淘汰，这里仅做兜底处理
        final videoQuality = VideoQuality.fromCode(data.quality!);
        firstVideo = VideoItem(
          id: data.quality!,
          baseUrl: videoUrl,
          codecs: ',
  'general.;//弹幕屏蔽查询（get）staticconststrin': ';

  // 弹幕屏蔽查询（Get）
  static const String danmakuFilter = ',
  'general.;//弹幕屏蔽词删除（post）//表单内容：//ids:被': ';

  // 弹幕屏蔽词删除（Post）
  // 表单内容：
  // ids: 被删除条目编号
  // csrf
  static const String danmakuFilterDel = ',
  'general.;//弹幕屏蔽词添加（post）//表单内容：//type:': ';

  // 弹幕屏蔽词添加（Post）
  // 表单内容：
  // type: 0（关键词）1（正则）2（用户）
  // filter: 屏蔽内容
  // csrf
  static const String danmakuFilterAdd = ',
  'general.;//当前可播放的最高质量视频finalcurhighest': ');
      // 当前可播放的最高质量视频
      final curHighestVideoQa = videoList.first.quality.code;
      // 预设的画质为null，则当前可用的最高质量
      int targetVideoQa = curHighestVideoQa;
      if (data.acceptQuality?.isNotEmpty == true &&
          plPlayerController.cacheVideoQa! <= curHighestVideoQa) {
        // 如果预设的画质低于当前最高
        targetVideoQa = data.acceptQuality!.findClosestTarget(
          (e) => e <= plPlayerController.cacheVideoQa!,
          (a, b) => a > b ? a : b,
        );
      }
      currentVideoQa.value = VideoQuality.fromCode(targetVideoQa);

      /// 取出符合当前画质的videoList
      final List<VideoItem> videosList = videoList
          .where((e) => e.quality.code == targetVideoQa)
          .toList();

      /// 优先顺序 设置中指定解码格式 -> 当前可选的首个解码格式
      final List<FormatItem> supportFormats = data.supportFormats!;
      // 根据画质选编码格式
      final List<String> supportDecodeFormats = supportFormats
          .firstWhere(
            (e) => e.quality == targetVideoQa,
            orElse: () => supportFormats.first,
          )
          .codecs!;
      // 默认从设置中取AV1
      currentDecodeFormats = VideoDecodeFormatType.fromString(cacheDecode);
      VideoDecodeFormatType secondDecodeFormats =
          VideoDecodeFormatType.fromString(cacheSecondDecode);
      // 当前视频没有对应格式返回第一个
      int flag = 0;
      for (final e in supportDecodeFormats) {
        if (currentDecodeFormats.codes.any(e.startsWith)) {
          flag = 1;
          break;
        } else if (secondDecodeFormats.codes.any(e.startsWith)) {
          flag = 2;
        }
      }
      if (flag == 2) {
        currentDecodeFormats = secondDecodeFormats;
      } else if (flag == 0) {
        currentDecodeFormats = VideoDecodeFormatType.fromString(
          supportDecodeFormats.first,
        );
      }

      /// 取出符合当前解码格式的videoItem
      firstVideo = videosList.firstWhere(
        (e) => currentDecodeFormats.codes.any(e.codecs!.startsWith),
        orElse: () => videosList.first,
      );
      _setVideoHeight();

      videoUrl = VideoUtils.getCdnUrl(firstVideo.playUrls);

      /// 优先顺序 设置中指定质量 -> 当前可选的最高质量
      AudioItem? firstAudio;
      final audioList = data.dash?.audio;
      if (audioList != null && audioList.isNotEmpty) {
        final List<int> audioIds = audioList.map((map) => map.id!).toList();
        int closestNumber = audioIds.findClosestTarget(
          (e) => e <= plPlayerController.cacheAudioQa,
          (a, b) => a > b ? a : b,
        );
        if (!audioIds.contains(plPlayerController.cacheAudioQa) &&
            audioIds.any((e) => e > plPlayerController.cacheAudioQa)) {
          closestNumber = AudioQuality.k192.code;
        }
        firstAudio = audioList.firstWhere(
          (e) => e.id == closestNumber,
          orElse: () => audioList.first,
        );
        audioUrl = VideoUtils.getCdnUrl(firstAudio.playUrls, isAudio: true);
        if (firstAudio.id case final int id?) {
          currentAudioQa = AudioQuality.fromCode(id);
        }
      } else {
        audioUrl = ',
  'general.;//我的追番/追剧?type=1&pn=1&ps=15st': ';

  // 我的追番/追剧 ?type=1&pn=1&ps=15
  static const String favPgc = ',
  'general.;//投币视频（web端）post///aidnum稿件av': ';

  // 投币视频（web端）POST
  /// aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  /// bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  /// multiply	num	投币数量	必要	上限为2
  /// select_like	num	是否附加点赞	非必要	0：不点赞 1：同时点赞 默认为0
  // csrf	str	CSRF Token（位于cookie）	必要
  // https://api.bilibili.com/x/web-interface/coin/add
  // static const String coinVideo = ',
  'general.;//搜索followstaticconstfollowse': ';

  // 搜索follow
  static const followSearch = ',
  'general.;//搜索关键词staticconststringsearc': ';

  // 搜索关键词
  static const String searchSuggest =
      ',
  'general.;//搜索历史记录staticconststringsear': ';

  // 搜索历史记录
  static const String searchHistory = ',
  'general.;//操作用户关系staticconststringrela': ';

  // 操作用户关系
  static const String relationMod = ',
  'general.;//收藏夹//https://api.bilibili.c': ';

  // 收藏夹
  // https://api.bilibili.com/x/v3/fav/folder/created/list?pn=1&ps=10&up_mid=17340771
  static const String userFavFolder = ',
  'general.;//收藏视频（双端）post//access_keystr': ';

  // 收藏视频（双端）POST
  // access_key	str	APP登录Token	APP方式必要
  /// rid	num	稿件avid	必要
  /// type	num	必须为2	必要
  /// add_media_ids	nums	需要加入的收藏夹mlid	非必要	同时添加多个，用,（%2C）分隔
  /// del_media_ids	nums	需要取消的收藏夹mlid	非必要	同时取消多个，用,（%2C）分隔
  // csrf	str	CSRF Token（位于cookie）	Cookie方式必要
  // https://api.bilibili.com/medialist/gateway/coll/resource/deal
  // https://api.bilibili.com/x/v3/fav/resource/deal
  static const String favVideo = ',
  'general.;//改用app端投币接口staticconststring': ';

  // 改用app端投币接口
  static const String coinVideo = ',
  'general.;//改用app端点赞接口staticconststring': ';

  // 改用app端点赞接口
  static const String likeVideo = ',
  'general.;//暂停历史记录staticconststringpaus': ';

  // 暂停历史记录
  static const String pauseHistory = ',
  'general.;//查询历史记录暂停状态staticconststring': ';

  // 查询历史记录暂停状态
  static const String historyStatus = ',
  'general.;//查询用户与自己关系_仅查关注staticconstst': ';

  // 查询用户与自己关系_仅查关注
  static const String relation = ',
  'general.;//查询视频分p列表avid/bvid转cidstatic': ';

  // 查询视频分P列表 (avid/bvid转cid)
  static const String ab2c = ',
  'general.;//楼中楼staticconststringreplyre': ';

  // 楼中楼
  static const String replyReplyList = ',
  'general.;//正在直播的up&关注的up//https://api.': ';

  // 正在直播的up & 关注的up
  // https://api.bilibili.com/x/polymer/web-dynamic/v1/portal
  static const String followUp = ',
  'general.;//清空历史记录staticconststringclea': ';

  // 清空历史记录
  static const String clearHistory = ',
  'general.;//清空稍后再看staticconststringtovi': ';

  // 清空稍后再看
  static const String toViewClear = ',
  'general.;//点赞投币收藏关注staticconststringvi': ';

  // 点赞投币收藏关注
  static const String videoRelation = ',
  'general.;//热搜staticconststringhotsearc': ';

  // 热搜
  static const String hotSearchList =
      ',
  'general.;//热门视频staticconststringhotlis': ';

  // 热门视频
  static const String hotList = ',
  'general.;//用户信息需要wbi签名//https://api.bi': ';

  // 用户信息 需要Wbi签名
  // https://api.bilibili.com/x/space/wbi/acc/info?mid=503427686&token=&platform=web&web_location=1550101&w_rid=d709892496ce93e3d94d6d37c95bde91&wts=1689301482
  static const String memberInfo = ',
  'general.;//用户动态staticconststringmember': ';

  // 用户动态
  static const String memberDynamic = ',
  'general.;//用户动态搜索//staticconststringme': ';

  // 用户动态搜索
  // static const String memberDynamicSearch = ',
  'general.;//用户名片信息staticconststringmemb': ';

  // 用户名片信息
  static const String memberCardInfo = ',
  'general.;//用户投稿//https://api.bilibili.': ';

  // 用户投稿
  // https://api.bilibili.com/x/space/wbi/arc/search?
  // mid=85754245&
  // ps=30&
  // tid=0&
  // pn=1&
  // keyword=&
  // order=pubdate&
  // platform=web&
  // web_location=1550101&
  // order_avoided=true&
  // w_rid=d893cf98a4e010cf326373194a648360&
  // wts=1689767832
  static const String searchArchive = ',
  'general.;//用户被关注数、投稿数//https://api.bil': ';

  // 用户(被)关注数、投稿数
  // https://api.bilibili.com/x/relation/stat?vmid=697166795
  static const String userStat = ',
  'general.;//番剧/剧集明细staticconststringpgc': ';

  // 番剧/剧集明细
  static const String pgcInfo = ',
  'general.;//番剧视频流//https://api.bilibili': ';

  // 番剧视频流
  // https://api.bilibili.com/pgc/player/web/v2/playurl?cid=104236640&bvid=BV13t411n7ex
  static const String pgcUrl = ',
  'general.;//直播//?page=1&page_size=30&pl': ';

  // 直播
  // ?page=1&page_size=30&platform=web
  static const String liveList =
      ',
  'general.;//直播间弹幕密钥获取接口staticconststrin': ';

  //直播间弹幕密钥获取接口
  static const String liveRoomDmToken =
      ',
  'general.;//直播间弹幕预获取//roomidroomidstati': ';

  // 直播间弹幕预获取
  // roomid roomId
  static const String liveRoomDmPrefetch =
      ',
  'general.;//直播间详情//cidroomid//qn80:流畅，1': ';

  // 直播间详情
  // cid roomId
  // qn 80:流畅，150:高清，400:蓝光，10000:原画，20000:4K, 30000:杜比
  static const String liveRoomInfo =
      ',
  'general.;//直播间详情h5staticconststringliv': ';

  // 直播间详情 H5
  static const String liveRoomInfoH5 =
      ',
  'general.;//相互关系查询//失效//staticconststri': ';

  // 相互关系查询 // 失效
  // static const String relationSearch = ',
  'general.;//移除已观看staticconststringtovie': ';

  // 移除已观看
  static const String toViewDel = ',
  'general.;//稍后再看,排行榜等网页返回也使用该类classhotv': ';

// 稍后再看, 排行榜等网页返回也使用该类
class HotVideoItemModel extends HorizontalVideoModel with MultiSelectData {
  int? videos;
  int? tid;
  String? tname;
  int? copyright;
  int? ctime;
  int? state;
  String? firstFrame;
  String? pubLocation;

  HotVideoItemModel.fromJson(Map<String, dynamic> json) {
    aid = json[',
  'general.;//稍后再看staticconststringtoview': ';

  // 稍后再看
  static const String toViewLater = ',
  'general.;//粉丝//vmid用户idpn页码ps每页个数，最大50': ';

  // 粉丝
  // vmid 用户id pn 页码 ps 每页个数，最大50 order: desc
  // order_type 排序规则 最近访问传空，最常访问传 attention
  static const String fans = ',
  'general.;//系统信息光标更新（已读标记）//https://mes': ';

  // 系统信息光标更新（已读标记）
  //https://message.bilibili.com/x/sys-msg/update_cursor?csrf=xxxx&csrf=xxxx&cursor=1705288500000000000&has_up=0&build=0&mobi_app=web
  static const String msgSysUpdateCursor =
      ',
  'general.;//获取guestid//staticconststrin': ';

  // 获取guestID
  // static const String getGuestId = ',
  'general.;//获取历史记录staticconststringhist': ';

  // 获取历史记录
  static const String historyList = ',
  'general.;//获取当前用户状态staticconststringus': ';

  // 获取当前用户状态
  static const String userStatOwner = ',
  'general.;//获取我的表情列表//business:reply（回复': ';

  // 获取我的表情列表
  // business:reply（回复）dynamic（动态）
  //https://api.bilibili.com/x/emote/user/panel/web?business=reply
  static const String myEmote = ',
  'general.;//获取指定分组下的upstaticconststring': ';

  // 获取指定分组下的up
  static const String followUpGroup = ',
  'general.;//获取指定用户创建的所有收藏夹信息//该接口也能查询目标': ';

  // 获取指定用户创建的所有收藏夹信息
  // 该接口也能查询目标内容id存在于那些收藏夹中
  // up_mid	num	目标用户mid	必要
  // type	num	目标内容属性	非必要	默认为全部 0：全部 2：视频稿件
  // rid	num	目标 视频稿件avid
  static const String favFolder = ',
  'general.;//获取未读私信数//https://api.vc.bil': ';

  // 获取未读私信数
  // https://api.vc.bilibili.com/session_svr/v1/session_svr/single_unread
  static const String msgUnread =
      ',
  'general.;//获取某个动态详情//timezone_offset=-': ';

  // 获取某个动态详情
  // timezone_offset=-480
  // id=849312409672744983
  // features=itemOpusStyle
  static const String dynamicDetail = ',
  'general.;//获取消息中心未读信息staticconststring': ';

  // 获取消息中心未读信息
  static const String msgFeedUnread = ',
  'general.;//获取用户信息staticconststringuser': ';

  // 获取用户信息
  static const String userInfo = ',
  'general.;//获取短信验证码//staticconststringa': ';

  // 获取短信验证码
  // static const String appSafeSmsCode =
  //     ',
  'general.;//获取稍后再看staticconststringseey': ';

  // 获取稍后再看
  static const String seeYouLater = ',
  'general.;//视频卡片-垂直布局classlivecardvappe': ';

// 视频卡片 - 垂直布局
class LiveCardVApp extends StatelessWidget {
  final CardLiveItem item;
  final bool showFirstFrame;

  const LiveCardVApp({
    super.key,
    required this.item,
    this.showFirstFrame = false,
  });

  @override
  Widget build(BuildContext context) {
    void onLongPress() => imageSaveDialog(
      title: item.title,
      cover: item.cover,
    );
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => PageUtils.toLiveRoom(item.roomid),
        onLongPress: onLongPress,
        onSecondaryTap: PlatformUtils.isMobile ? null : onLongPress,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: Style.aspectRatio,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      NetworkImgLayer(
                        src: showFirstFrame ? item.systemCover : item.cover,
                        width: maxWidth,
                        height: maxHeight,
                        type: .emote,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 200),
                          child: videoStat(context),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            liveContent(context),
          ],
        ),
      ),
    );
  }

  Widget liveContent(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 5, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ',
  'general.;//视频卡片-垂直布局classlivecardvfoll': ';

// 视频卡片 - 垂直布局
class LiveCardVFollow extends StatelessWidget {
  final LiveFollowItem liveItem;

  const LiveCardVFollow({
    super.key,
    required this.liveItem,
  });

  @override
  Widget build(BuildContext context) {
    void onLongPress() => imageSaveDialog(
      title: liveItem.title,
      cover: liveItem.roomCover,
    );
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => PageUtils.toLiveRoom(liveItem.roomid),
        onLongPress: onLongPress,
        onSecondaryTap: PlatformUtils.isMobile ? null : onLongPress,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: Style.aspectRatio,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      NetworkImgLayer(
                        src: liveItem.roomCover!,
                        width: maxWidth,
                        height: maxHeight,
                        type: .emote,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 200),
                          child: videoStat(context),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            liveContent(context),
          ],
        ),
      ),
    );
  }

  Widget liveContent(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 5, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ',
  'general.;//视频卡片-垂直布局classlivecardvsear': ';

// 视频卡片 - 垂直布局
class LiveCardVSearch extends StatelessWidget {
  final LiveSearchRoomItemModel item;

  const LiveCardVSearch({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    void onLongPress() => imageSaveDialog(
      title: item.title,
      cover: item.cover,
    );
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => PageUtils.toLiveRoom(item.roomid),
        onLongPress: onLongPress,
        onSecondaryTap: PlatformUtils.isMobile ? null : onLongPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: Style.aspectRatio,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      NetworkImgLayer(
                        src: item.cover!,
                        width: maxWidth,
                        height: maxHeight,
                        type: .emote,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 200),
                          child: videoStat(context),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 5, 4),
              child: Text(
                ',
  'general.;//视频卡片-垂直布局classpgccardvtimel': ';

// 视频卡片 - 垂直布局
class PgcCardVTimeline extends StatelessWidget {
  const PgcCardVTimeline({
    super.key,
    required this.item,
  });

  final Episode item;

  @override
  Widget build(BuildContext context) {
    void onLongPress() => imageSaveDialog(
      title: item.title,
      cover: item.cover,
    );
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: Style.mdRadius),
      child: InkWell(
        borderRadius: Style.mdRadius,
        onLongPress: onLongPress,
        onSecondaryTap: PlatformUtils.isMobile ? null : onLongPress,
        onTap: () =>
            PageUtils.viewPgc(seasonId: item.seasonId, epId: item.episodeId),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 0.75,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  final double maxWidth = boxConstraints.maxWidth;
                  final double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      NetworkImgLayer(
                        src: item.cover,
                        width: maxWidth,
                        height: maxHeight,
                      ),
                      if (item.follow == 1)
                        const PBadge(
                          text: ',
  'general.;//视频卡片-垂直布局classvideocardvext': ';

// 视频卡片 - 垂直布局
class VideoCardV extends StatelessWidget {
  final BaseRcmdVideoItemModel videoItem;
  final VoidCallback? onRemove;

  const VideoCardV({
    super.key,
    required this.videoItem,
    this.onRemove,
  });

  Future<void> onPushDetail() async {
    switch (videoItem.goto) {
      case ',
  'general.;//视频卡片-垂直布局classvideocardvmem': ';

// 视频卡片 - 垂直布局
class VideoCardVMemberHome extends StatelessWidget {
  final SpaceArchiveItem videoItem;

  const VideoCardVMemberHome({
    super.key,
    required this.videoItem,
  });

  Future<void> onPushDetail() async {
    String? goto = videoItem.goto;
    switch (goto) {
      case ',
  'general.;//视频流//https://github.com/soc': ';

  // 视频流
  // https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/video/videostream_url.md
  static const String ugcUrl = ',
  'general.;//视频点踩web端不支持//点踩postapp端///a': ';

  // 视频点踩 web端不支持

  // 点踩 Post(app端)
  /// access_key str	APP登录Token 必要
  /// aid num	稿件avid	必要
  ///
  static const String dislikeVideo =
      ',
  'general.;//视频详情//竖屏https://api.bilibil': ';

  // 视频详情
  // 竖屏 https://api.bilibili.com/x/web-interface/view?aid=527403921
  // https://api.bilibili.com/x/web-interface/view/detail  获取视频超详细信息(web端)
  static const String videoIntro = ',
  'general.;//视频详情超详细//https://api.bilibi': ';
  // 视频详情 超详细
  // https://api.bilibili.com/x/web-interface/view/detail?aid=527403921

  /// https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/video/action.md
  // 点赞 Post
  /// aid	num	稿件avid	必要（可选）	avid与bvid任选一个
  /// bvid	str	稿件bvid	必要（可选）	avid与bvid任选一个
  /// like	num	操作方式	必要	1：点赞 2：取消赞
  // csrf	str	CSRF Token（位于cookie）	必要
  // https://api.bilibili.com/x/web-interface/archive/like
  // static const String likeVideo = ',
  'general.;//视频详情页相关视频staticconststringr': ';

  // 视频详情页 相关视频
  static const String relatedList = ',
  'general.;//记录视频播放进度//https://github.co': ';

  // 记录视频播放进度
  // https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/docs/video/report.md
  static const String heartBeat = ',
  'general.;//设置up主分组//0添加至默认分组否则使用,分割tag': ';

  // 设置Up主分组
  // 0 添加至默认分组  否则使用,分割tagid
  static const String addUsers = ',
  'general.;//评论列表//https://api.bilibili.': ';

  // 评论列表
  // https://api.bilibili.com/x/v2/reply/main?csrf=6e22efc1a47225ea25f901f922b5cfdd&mode=3&oid=254175381&pagination_str=%7B%22offset%22:%22%22%7D&plat=1&seek_rpid=0&type=11
  static const String replyList = ',
  'general.;//评论点赞staticconststringlikere': ';

  // 评论点赞
  static const String likeReply = ',
  'general.;//请求时会自动encodecomponent//apps': ';
  // 请求时会自动encodeComponent

  // app
  static const String userAgentApp =
      ',
  'general.;//追番staticconststringpgcadd=': ';

  // 追番
  static const String pgcAdd = ',
  'general.;//黑名单staticconststringblackls': ';

  // 黑名单
  static const String blackLst = ',
  'general.;//默认搜索词staticconststringsearc': ';

  // 默认搜索词
  static const String searchDefault = ',
  'general.;_subforseek?.cancel;_subforse': ');
      _subForSeek?.cancel();
      _subForSeek = duration.listen((_) {
        seek();
        _cancelSubForSeek();
      });
    }
  }

  /// 设置倍速
  Future<void> setPlaybackSpeed(double speed) async {
    lastPlaybackSpeed = playbackSpeed;

    if (speed == _videoPlayerController?.state.rate) {
      return;
    }

    await _videoPlayerController?.setRate(speed);
    _playbackSpeed.value = speed;
    if (danmakuController != null) {
      try {
        DanmakuOption currentOption = danmakuController!.option;
        double defaultDuration = currentOption.duration * lastPlaybackSpeed;
        double defaultStaticDuration =
            currentOption.staticDuration * lastPlaybackSpeed;
        DanmakuOption updatedOption = currentOption.copyWith(
          duration: defaultDuration / speed,
          staticDuration: defaultStaticDuration / speed,
        );
        danmakuController!.updateOption(updatedOption);
      } catch (_) {}
    }
  }

  // 还原默认速度
  double playSpeedDefault = Pref.playSpeedDefault;
  Future<void> setDefaultSpeed() async {
    await _videoPlayerController?.setRate(playSpeedDefault);
    _playbackSpeed.value = playSpeedDefault;
  }

  /// 播放视频
  Future<void> play({bool repeat = false, bool hideControls = true}) async {
    if (_playerCount == 0) return;
    // 播放时自动隐藏控制条
    controls = !hideControls;
    // repeat为true，将从头播放
    if (repeat) {
      // await seekTo(Duration.zero);
      await seekTo(Duration.zero, isSeek: false);
    }

    await _videoPlayerController?.play();

    audioSessionHandler?.setActive(true);

    playerStatus.value = PlayerStatus.playing;
    // screenManager.setOverlays(false);
  }

  /// 暂停播放
  Future<void> pause({bool notify = true, bool isInterrupt = false}) async {
    await _videoPlayerController?.pause();
    playerStatus.value = PlayerStatus.paused;

    // 主动暂停时让出音频焦点
    if (!isInterrupt) {
      audioSessionHandler?.setActive(false);
    }
  }

  bool tripling = false;

  /// 隐藏控制条
  void hideTaskControls() {
    _timer?.cancel();
    _timer = Timer(showControlDuration, () {
      if (!isSliderMoving.value && !tripling) {
        controls = false;
      }
      _timer = null;
    });
  }

  /// 调整播放时间
  void onChangedSlider(int v) {
    sliderPosition = Duration(seconds: v);
    updateSliderPositionSecond();
  }

  void onChangedSliderStart([Duration? value]) {
    if (value != null) {
      sliderTempPosition.value = value;
    }
    isSliderMoving.value = true;
  }

  bool? cancelSeek;
  bool? hasToast;

  void onUpdatedSliderProgress(Duration value) {
    sliderTempPosition.value = value;
    sliderPosition = value;
    updateSliderPositionSecond();
  }

  void onChangedSliderEnd() {
    if (cancelSeek != true) {
      feedBack();
    }
    cancelSeek = null;
    hasToast = null;
    isSliderMoving.value = false;
    hideTaskControls();
  }

  final RxBool volumeIndicator = false.obs;
  Timer? volumeTimer;
  bool volumeInterceptEventStream = false;

  final double maxVolume = PlatformUtils.isDesktop ? Pref.maxVolume : 1.0;
  Future<void> setVolume(double volume, {bool showIndicator = true}) async {
    if (this.volume.value != volume) {
      this.volume.value = volume;
      try {
        if (PlatformUtils.isDesktop) {
          await _videoPlayerController!.setVolume(volume * 100);
        } else {
          FlutterVolumeController.updateShowSystemUI(false);
          await FlutterVolumeController.setVolume(volume);
        }
      } catch (err) {
        if (kDebugMode) debugPrint(err.toString());
      }
    }
    if (showIndicator) {
      volumeIndicator.value = true;
    }
    volumeInterceptEventStream = true;
    volumeTimer?.cancel();
    volumeTimer = Timer(const Duration(milliseconds: 200), () {
      volumeIndicator.value = false;
      volumeInterceptEventStream = false;
      if (PlatformUtils.isDesktop) {
        setting.put(SettingBoxKey.desktopVolume, volume.toPrecision(3));
      }
    });
  }

  /// Toggle Change the videofit accordingly
  void toggleVideoFit(VideoFitType value) {
    _prefFit = videoFit.value = value;
    video.put(VideoBoxKey.cacheVideoFit, value.index);
  }

  /// 读取fit
  var _prefFit = VideoFitType.values[Pref.cacheVideoFit];
  void _initVideoFit() {
    if (_prefFit == .fill && _isVertical) {
      videoFit.value = .contain;
    } else {
      videoFit.value = _prefFit;
    }
  }

  /// 设置后台播放
  void setBackgroundPlay(bool val) {
    videoPlayerServiceHandler?.enableBackgroundPlay = val;
    if (!tempPlayerConf) {
      setting.put(SettingBoxKey.enableBackgroundPlay, val);
    }
  }

  set controls(bool visible) {
    showControls.value = visible;
    _timer?.cancel();
    if (visible) {
      hideTaskControls();
    }
  }

  Timer? longPressTimer;
  void cancelLongPressTimer() {
    longPressTimer?.cancel();
    longPressTimer = null;
  }

  /// 设置长按倍速状态 live模式下禁用
  Future<void> setLongPressStatus(bool val) async {
    if (isLive) {
      return;
    }
    if (controlsLock.value) {
      return;
    }
    if (longPressStatus.value == val) {
      return;
    }
    if (val) {
      if (playerStatus.isPlaying) {
        longPressStatus.value = val;
        HapticFeedback.lightImpact();
        await setPlaybackSpeed(
          enableAutoLongPressSpeed ? playbackSpeed * 2 : longPressSpeed,
        );
      }
    } else {
      // if (kDebugMode) debugPrint(',
  'general.;abstractclassbasercmdvideoite': ';

abstract class BaseRcmdVideoItemModel extends BaseVideoItemModel {
  String? goto;
  String? uri;
  String? rcmdReason;

  // app推荐专属
  int? param;
  String? pgcBadge;
}

class RcmdVideoItemModel extends BaseRcmdVideoItemModel {
  RcmdVideoItemModel.fromJson(Map<String, dynamic> json) {
    aid = json[',
  'general.;abstractclasscommonintrocontr': ';

abstract class CommonIntroController extends GetxController
    with GetSingleTickerProviderStateMixin, TripleMixin, FavMixin {
  late final String heroTag;
  late String bvid;

  // 是否稍后再看
  final RxBool hasLater = false.obs;

  final Rx<List<VideoTagItem>?> videoTags = Rx<List<VideoTagItem>?>(null);

  bool isProcessing = false;
  Future<void> handleAction(FutureOr Function() action) async {
    if (!isProcessing) {
      isProcessing = true;
      await action();
      isProcessing = false;
    }
  }

  @override
  late final isLogin = Accounts.main.isLogin;

  StatDetail? getStat();

  @override
  void updateFavCount(int count) {
    getStat()?.favorite += count;
  }

  final Rx<VideoDetailData> videoDetail = VideoDetailData().obs;

  void queryVideoIntro();

  bool prevPlay();
  bool nextPlay();

  void actionShareVideo(BuildContext context);

  // 同时观看
  final bool isShowOnlineTotal = Pref.enableOnlineTotal;
  late final RxString total = ',
  'general.;abstractclassreplycontroller<': ';

abstract class ReplyController<R> extends CommonListController<R, ReplyInfo> {
  final RxInt count = (-1).obs;

  late final Rx<ReplySortType> sortType;
  late Mode mode;

  final savedReplies = <Object, List<RichTextItem>?>{};

  Int64? upMid;
  Int64? cursorNext;
  SubjectControl? subjectControl;
  FeedPaginationReply? paginationReply;
  late bool hasUpTop = false;

  @override
  bool? get hasFooter => true;

  // comment antifraud
  late final _enableCommAntifraud = Pref.enableCommAntifraud;
  late final _biliSendCommAntifraud = Pref.biliSendCommAntifraud;
  bool get enableCommAntifraud =>
      _enableCommAntifraud || _biliSendCommAntifraud;
  dynamic get sourceId;

  @override
  void onInit() {
    super.onInit();
    final cacheSortType = Pref.replySortType;
    sortType = cacheSortType.obs;
    mode = cacheSortType == .time ? Mode.MAIN_LIST_TIME : Mode.MAIN_LIST_HOT;
  }

  @override
  void checkIsEnd(int length) {
    final count = this.count.value;
    if (count != -1 && length >= count) {
      isEnd = true;
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    MainListReply data = response.response;
    cursorNext = data.cursor.next;
    paginationReply = data.paginationReply;
    count.value = data.subjectControl.count.toInt();
    if (isRefresh) {
      subjectControl = data.subjectControl;
      upMid ??= data.subjectControl.upMid;
      hasUpTop = data.hasUpTop();
      if (data.hasUpTop()) {
        data.replies.insert(0, data.upTop);
      }
      if (subjectControl?.title == ReplySortType.select.title) {
        sortType.value = .select;
      }
    }
    isEnd = data.cursor.isEnd;
    return false;
  }

  @override
  Future<void> onRefresh() {
    cursorNext = null;
    subjectControl = null;
    paginationReply = null;
    return super.onRefresh();
  }

  // 排序搜索评论
  void queryBySort() {
    if (isLoading) return;
    switch (sortType.value) {
      case ReplySortType.time:
        sortType.value = ReplySortType.hot;
        mode = Mode.MAIN_LIST_HOT;
        break;
      case ReplySortType.hot:
        sortType.value = ReplySortType.time;
        mode = Mode.MAIN_LIST_TIME;
        break;
      case ReplySortType.select:
        return;
    }
    feedBack();
    onReload();
  }

  (bool inputDisable, String? hint) get replyHint {
    String? hint;
    bool inputDisable = false;
    try {
      if (subjectControl case final subjectControl?) {
        inputDisable = subjectControl.inputDisable;
        if (subjectControl.hasRootText()) {
          final rootText = subjectControl.rootText;
          if (inputDisable) {
            SmartDialog.showToast(rootText);
          }
          if (rootText.contains(',
  'general.;abstractfinalclassapi{//推荐视频s': ';

abstract final class Api {
  // 推荐视频
  static const String recommendListApp =
      ',
  'general.;abstractfinalclasscachemanage': ';

abstract final class CacheManager {
  static late final DefaultCacheManager manager;

  static Future<void> ensureInitialized() =>
      DefaultCacheManager.init().then((i) => manager = i);

  // 获取缓存目录
  @pragma(',
  'general.;abstractfinalclassdanmakuhttp': ';

abstract final class DanmakuHttp {
  static Future<LoadingState<DanmakuPost>> shootDanmaku({
    int type = 1, //弹幕类选择(1：视频弹幕 2：漫画弹幕)
    required int oid, // 视频cid
    required String msg, //弹幕文本(长度小于 100 字符)
    // 弹幕类型(1：滚动弹幕 4：底端弹幕 5：顶端弹幕 6：逆向弹幕(不能使用） 7：高级弹幕 8：代码弹幕（不能使用） 9：BAS弹幕（pool必须为2）)
    int mode = 1,
    // String? aid,// 稿件avid
    // String? bvid,// bvid与aid必须有一个
    required String bvid,
    int? progress, // 弹幕出现在视频内的时间（单位为毫秒，默认为0）
    int? color, // 弹幕颜色(默认白色，16777215）
    int? fontSize, // 弹幕字号（默认25）
    int? pool, // 弹幕池选择（0：普通池 1：字幕池 2：特殊池（代码/BAS弹幕）默认普通池，0）
    //int? rnd,// 当前时间戳*1000000（若无此项，则发送弹幕冷却时间限制为90s；若有此项，则发送弹幕冷却时间限制为5s）
    bool colorful = false, //60001：专属渐变彩色（需要会员）
    int? checkboxType, //是否带 UP 身份标识（0：普通；4：带有标识）
    // String? csrf,//CSRF Token（位于 Cookie）	Cookie 方式必要
    // String? access_key,//	APP 登录 Token		APP 方式必要
  }) async {
    // 构建参数对象
    // assert(aid != null || bvid != null);
    // assert(csrf != null || access_key != null);
    // 构建参数对象
    final data = <String, Object>{
      ',
  'general.;abstractfinalclassrequestutil': ';

abstract final class RequestUtils {
  static Future<void> syncHistoryStatus() async {
    final account = Accounts.history;
    if (!account.isLogin) {
      return;
    }
    final res = await UserHttp.historyStatus(account: account);
    if (res case Success(:final response)) {
      GStorage.localCache.put(LocalCacheKey.historyPause, response);
    }
  }

  // 1：小视频（已弃用）
  // 2：相簿
  // 3：纯文字
  // 4：直播（此类型不常用，见分享其他内容消息）
  // 5：视频
  // 6：专栏
  // 7：番剧（id 为 season_id）
  // 8：音乐
  // 9：国产动画（id 为 AV 号）
  // 10：图片
  // 11：动态
  // 16：番剧（id 为 epid）
  // 17：番剧
  // https://github.com/SocialSisterYi/bilibili-API-collect/tree/master/docs/message/private_msg_content.md
  static Future<bool> pmShare({
    required int receiverId,
    required Map content,
    String? message,
  }) async {
    final ownerMid = Accounts.main.mid;
    final contentRes = await ImGrpc.sendMsg(
      senderUid: ownerMid,
      receiverId: receiverId,
      content: jsonEncode(content),
      msgType: content[',
  'general.;abstractfinalclasssearchhttp{': ';

abstract final class SearchHttp {
  // 获取搜索建议
  static Future<LoadingState<SearchSuggestModel>> searchSuggest({
    required String term,
  }) async {
    final res = await Request().get(
      Api.searchSuggest,
      queryParameters: {
        ',
  'general.;abstractfinalclassupdate{//检查': ';

abstract final class Update {
  // 检查更新
  static Future<void> checkUpdate([bool isAuto = true]) async {
    if (kDebugMode) return;
    SmartDialog.dismiss();
    try {
      final res = await Request().get(
        Api.latestApp,
        options: Options(
          headers: {',
  'general.;abstractfinalclassurlutils{//': ';

abstract final class UrlUtils {
  // 302重定向路由截取
  static Future<String?> parseRedirectUrl(
    String url, [
    bool returnOri = false,
  ]) async {
    String? redirectUrl;
    try {
      final response = await Request.dio.head(
        url,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return 200 <= status! && status < 400;
          },
          extra: {',
  'general.;break;//纯文字动态查看//case': ';
          break;

        // 纯文字动态查看
        // case ',
  'general.;classchatitemextendsstateless': ';

class ChatItem extends StatelessWidget {
  static MsgType msgTypeFromValue(int value) {
    return MsgType.valueOf(value) ?? MsgType.EN_INVALID_MSG_TYPE;
  }

  const ChatItem({
    super.key,
    required this.item,
    required this.eInfos,
    required this.onLongPress,
    required this.onSecondaryTapUp,
    required this.isOwner,
  });

  final Msg item;
  final List<EmotionInfo>? eInfos;
  final VoidCallback onLongPress;
  final GestureTapUpCallback? onSecondaryTapUp;
  final bool isOwner;

  // 消息来源
  // enum MsgSource {
  //     EN_MSG_SOURCE_AUTOREPLY_BY_FOLLOWED    = 8;  //
  //     EN_MSG_SOURCE_AUTOREPLY_BY_RECEIVE_MSG = 9;  //
  //     EN_MSG_SOURCE_AUTOREPLY_BY_KEYWORDS    = 10; //
  //     EN_MSG_SOURCE_AUTOREPLY_BY_VOYAGE      = 11; //
  // };
  @override
  Widget build(BuildContext context) {
    final msgType = item.msgType;
    // final isRevoke = msgType == MsgType.EN_MSG_TYPE_DRAW_BACK.value; // 撤回消息
    // if (isRevoke) {
    //   return const SizedBox.shrink();
    // }

    late final ThemeData theme = Theme.of(context);
    late final Color textColor = isOwner
        ? theme.colorScheme.onSecondaryContainer
        : theme.colorScheme.onSurfaceVariant;
    late final dynamic content = jsonDecode(item.content);

    Widget child = messageContent(
      context: context,
      theme: theme,
      content: content,
      textColor: textColor,
    );

    final isSystem =
        msgType == MsgType.EN_MSG_TYPE_VIDEO_CARD.value ||
        msgType == MsgType.EN_MSG_TYPE_TIP_MESSAGE.value ||
        msgType == MsgType.EN_MSG_TYPE_NOTIFY_MSG.value ||
        msgType == MsgType.EN_MSG_TYPE_PICTURE_CARD.value ||
        msgType == 16;

    if (!isSystem) {
      final isPic = msgType == MsgType.EN_MSG_TYPE_PIC.value; // 图片
      child = Row(
        mainAxisAlignment: isOwner ? .end : .start,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 300.0),
            decoration: BoxDecoration(
              color: isOwner
                  ? theme.colorScheme.secondaryContainer
                  : theme.colorScheme.onInverseSurface,
              borderRadius: isOwner
                  ? const .only(
                      topLeft: .circular(16),
                      topRight: .circular(16),
                      bottomLeft: .circular(16),
                      bottomRight: .circular(6),
                    )
                  : const .only(
                      topLeft: .circular(16),
                      topRight: .circular(16),
                      bottomLeft: .circular(6),
                      bottomRight: .circular(16),
                    ),
            ),
            padding: isPic
                ? const .only(top: 8, bottom: 6, left: 8, right: 8)
                : const .only(top: 8, bottom: 6, left: 12, right: 12),
            child: Column(
              crossAxisAlignment: isOwner ? .end : .start,
              children: [
                child,
                isPic ? const SizedBox(height: 7) : const SizedBox(height: 2),
                if (item.msgStatus == 1)
                  Text(
                    ',
  'general.;classfavpgccontrollerextendsm': ';

class FavPgcController
    extends MultiSelectController<FavPgcData, FavPgcItemModel> {
  final int type;
  final int followStatus;

  FavPgcController(this.type, this.followStatus);

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  final RxBool allSelected = false.obs;

  @override
  void handleSelect({bool checked = false, bool disableSelect = true}) {
    allSelected.value = checked;
    super.handleSelect(checked: checked, disableSelect: disableSelect);
  }

  @override
  List<FavPgcItemModel>? getDataList(FavPgcData response) {
    return response.list;
  }

  @override
  Future<LoadingState<FavPgcData>> customGetData() => FavHttp.favPgc(
    type: type,
    followStatus: followStatus,
    pn: page,
  );

  void onDisable() {
    if (checkedCount != 0) {
      handleSelect();
    }
    enableMultiSelect.value = false;
  }

  // 取消追番
  Future<void> pgcDel(int index, seasonId) async {
    final result = await VideoHttp.pgcDel(seasonId: seasonId);
    if (result case Success(:final response)) {
      loadingState
        ..value.data!.removeAt(index)
        ..refresh();
      SmartDialog.showToast(response);
    } else {
      result.toast();
    }
  }

  @override
  void onRemove() {
    assert(false, ',
  'general.;classgrouppanelextendsstatefu': ';

class GroupPanel extends StatefulWidget {
  final int mid;
  final List<int>? tags;
  final ScrollController? scrollController;
  const GroupPanel({
    super.key,
    required this.mid,
    this.tags,
    this.scrollController,
  });

  @override
  State<GroupPanel> createState() => _GroupPanelState();
}

class _GroupPanelState extends State<GroupPanel> {
  LoadingState<List<MemberTagItemModel>> loadingState = LoadingState.loading();
  final RxBool showDefaultBtn = true.obs;
  late final Set<int> tags = widget.tags == null
      ? {}
      : Set<int>.from(widget.tags!);

  @override
  void initState() {
    super.initState();
    _queryFollowUpTags();
  }

  void _queryFollowUpTags() {
    MemberHttp.followUpTags().then((res) {
      if (mounted) {
        loadingState = res..dataOrNull?.removeFirstWhere((e) => e.tagid == 0);
        showDefaultBtn.value = tags.isEmpty;
        setState(() {});
      }
    });
  }

  Future<void> onSave() async {
    if (!loadingState.isSuccess) {
      Get.back();
      return;
    }
    feedBack();
    // 保存
    final res = await MemberHttp.addUsers(
      widget.mid.toString(),
      tags.isEmpty ? ',
  'general.;classhistorybasecontrollerext': ';

class HistoryBaseController extends GetxController {
  RxBool pauseStatus = false.obs;

  RxBool enableMultiSelect = false.obs;
  RxInt checkedCount = 0.obs;

  final account = Accounts.history;

  // 清空观看历史
  void onClearHistory(BuildContext context, VoidCallback onSuccess) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(',
  'general.;classhistorycontrollerextends': ';

class HistoryController
    extends MultiSelectController<HistoryData, HistoryItemModel>
    with GetSingleTickerProviderStateMixin {
  HistoryController(this.type);

  late final baseCtr = Get.put(HistoryBaseController());

  Account get account => baseCtr.account;

  final String? type;
  TabController? tabController;
  late RxList<HistoryTab> tabs = <HistoryTab>[].obs;

  int? max;
  int? viewAt;

  @override
  RxInt get rxCount => baseCtr.checkedCount;

  @override
  RxBool get enableMultiSelect => baseCtr.enableMultiSelect;

  @override
  void onInit() {
    super.onInit();
    historyStatus();
    queryData();
  }

  @override
  Future<void> onRefresh() {
    max = null;
    viewAt = null;
    return super.onRefresh();
  }

  @override
  List<HistoryItemModel>? getDataList(HistoryData response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<HistoryData> response) {
    HistoryData data = response.response;
    isEnd = data.list.isNullOrEmpty;
    max = data.list?.lastOrNull?.history.oid;
    viewAt = data.list?.lastOrNull?.viewAt;

    if (isRefresh && type == null) {
      if (tabs.isEmpty && data.tab?.isNotEmpty == true) {
        tabs.value = data.tab!;
        tabController = TabController(
          length: data.tab!.length + 1,
          vsync: this,
        );
      }
    }

    return false;
  }

  // 观看历史暂停状态
  Future<void> historyStatus() async {
    final res = await UserHttp.historyStatus(account: account);
    if (res case Success(:final response)) {
      baseCtr.pauseStatus.value = response;
      GStorage.localCache.put(LocalCacheKey.historyPause, response);
    } else {
      res.toast();
    }
  }

  // 删除某条历史记录
  void delHistory(HistoryItemModel item) {
    _onDelete({item});
  }

  // 删除已看历史记录
  void onDelViewedHistory() {
    final viewedList = loadingState.value.dataOrNull
        ?.where((e) => e.progress == -1)
        .toSet();
    if (viewedList != null && viewedList.isNotEmpty) {
      _onDelete(viewedList);
    } else {
      SmartDialog.showToast(',
  'general.;classloginpageextendsstateful': ';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginPageController _loginPageCtr = Get.put(LoginPageController());
  // 二维码生成时间
  bool showPassword = false;
  GlobalKey globalKey = GlobalKey();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loginPageCtr.didChangeDependencies(context);
  }

  Widget loginByQRCode(ThemeData theme) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(',
  'general.;classmembercontrollerextendsc': ';

class MemberController extends CommonDataController<SpaceData, SpaceData?>
    with GetTickerProviderStateMixin {
  MemberController({required this.mid});
  int mid;
  String? username;
  String? userAvatar;

  late final account = Accounts.main;

  Live? live;
  int? silence;

  int? isFollowed; // 被关注
  RxInt relation = 0.obs;
  bool get isFollow => relation.value != 0 && relation.value != 128;

  SpaceSetting? spaceSetting;
  List<SpaceTab2>? tab2;
  late List<Tab> tabs;
  TabController? tabController;
  RxInt contributeInitialIndex = 0.obs;

  bool? hasSeasonOrSeries;

  List<ElecItem>? charges;
  int? chargeCount;
  bool get hasCharge => chargeCount != null && chargeCount! > 0;

  List<Owner>? guards;
  Object? guardCount;
  bool get hasGuard => guards?.isNotEmpty ?? false;

  List<ReservationCardItem>? reserves;

  final fromViewAid = Get.parameters[',
  'general.;classminecontrollerextendscom': ';

class MineController extends CommonDataController<FavFolderData, FavFolderData>
    with AccountMixin {
  @override
  AccountService accountService = Get.find<AccountService>();

  int? favFolderCount;

  // 用户信息 头像、昵称、lv
  final Rx<UserInfoData> userInfo = UserInfoData().obs;
  // 用户状态 动态、关注、粉丝
  final Rx<UserStat> userStat = const UserStat().obs;

  final Rx<ThemeType> themeType = Pref.themeType.obs;

  ThemeType get nextThemeType =>
      ThemeType.values[(themeType.value.index + 1) % ThemeType.values.length];

  static RxBool anonymity =
      (Accounts.account.isNotEmpty && !Accounts.heartbeat.isLogin).obs;

  late final list =
      <({IconData icon, double size, String title, VoidCallback onTap})>[
        (
          size: 23,
          icon: MdiIcons.folderDownloadOutline,
          title: ',
  'general.;classpgcintropageextendsstate': ';

class PgcIntroPage extends StatefulWidget {
  final int? cid;
  final String heroTag;
  final Function showEpisodes;
  final Function showIntroDetail;
  final double maxWidth;
  final bool isLandscape;

  const PgcIntroPage({
    super.key,
    this.cid,
    required this.heroTag,
    required this.showEpisodes,
    required this.showIntroDetail,
    required this.maxWidth,
    required this.isLandscape,
  });

  @override
  State<PgcIntroPage> createState() => _PgcIntroPageState();
}

class _PgcIntroPageState extends State<PgcIntroPage> {
  late final PgcIntroController introController;
  late final VideoDetailController videoDetailCtr;

  @override
  void initState() {
    super.initState();
    introController = Get.putOrFind(
      PgcIntroController.new,
      tag: widget.heroTag,
    );
    videoDetailCtr = Get.find<VideoDetailController>(tag: widget.heroTag);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final item = introController.pgcItem;
    final isLandscape = widget.isLandscape;
    Widget sliver = SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              _buildCover(colorScheme, isLandscape, item),
              Expanded(child: _buildInfoPanel(isLandscape, colorScheme, item)),
            ],
          ),
          const SizedBox(height: 6),
          // 点赞收藏转发 布局样式2
          if (introController.isPgc) actionGrid(item, introController),
          // 番剧分集
          if (item.episodes?.isNotEmpty == true)
            PgcPanel(
              heroTag: widget.heroTag,
              pages: item.episodes!,
              cid: videoDetailCtr.cid.value,
              onChangeEpisode: introController.onChangeEpisode,
              showEpisodes: widget.showEpisodes,
              newEp: item.newEp,
            ),
        ],
      ),
    );
    if (!introController.isPgc) {
      final brief = _buildBrief(item);
      if (brief != null) {
        sliver = SliverMainAxisGroup(slivers: [sliver, brief]);
      }
    }
    return SliverPadding(
      padding: const .fromLTRB(
        Style.safeSpace,
        Style.safeSpace,
        Style.safeSpace,
        Style.safeSpace + 50,
      ),
      sliver: sliver,
    );
  }

  Widget? _buildBrief(PgcInfoModel item) {
    final img = item.brief?.img;
    if (img != null && img.isNotEmpty) {
      final maxWidth = widget.maxWidth - 24;
      double padding = max(0, maxWidth - 400);
      final imgWidth = maxWidth - padding;
      padding = padding / 2;
      return SliverPadding(
        padding: .only(top: 10, left: padding, right: padding),
        sliver: SliverMainAxisGroup(
          slivers: img.map((e) {
            return SliverToBoxAdapter(
              child: NetworkImgLayer(
                type: .emote,
                src: e.url,
                width: imgWidth,
                height: imgWidth * e.aspectRatio,
              ),
            );
          }).toList(),
        ),
      );
    }
    return null;
  }

  Widget _buildCover(
    ColorScheme colorScheme,
    bool isLandscape,
    PgcInfoModel item,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () => PageUtils.imageView(
            imgList: [SourceModel(url: item.cover!)],
          ),
          child: fromHero(
            tag: item.cover!,
            child: NetworkImgLayer(
              width: 115,
              height: 153,
              src: item.cover!,
            ),
          ),
        ),
        if (item.rating != null)
          PBadge(
            text: ',
  'general.;classpgcpanelextendsstatefulw': ';

class PgcPanel extends StatefulWidget {
  const PgcPanel({
    super.key,
    required this.pages,
    this.cid,
    required this.onChangeEpisode,
    required this.showEpisodes,
    required this.heroTag,
    this.newEp,
  });

  final List<EpisodeItem> pages;
  final int? cid;
  final ValueChanged<BaseEpisodeItem> onChangeEpisode;
  final Function showEpisodes;
  final String heroTag;
  final NewEp? newEp;

  @override
  State<PgcPanel> createState() => _PgcPanelState();
}

class _PgcPanelState extends State<PgcPanel> {
  late int currentIndex;
  late final ScrollController listViewScrollCtr;
  // 默认未开通
  late final bool vipStatus;
  late int cid;
  late final VideoDetailController videoDetailCtr;
  late final StreamSubscription<int> _listener;

  @override
  void initState() {
    super.initState();
    cid = widget.cid!;
    currentIndex = widget.pages.indexWhere((e) => e.cid == cid);
    listViewScrollCtr = ScrollController(
      initialScrollOffset: currentIndex * 150.0,
    );

    vipStatus = Pref.userInfoCache?.vipStatus != 1;

    videoDetailCtr = Get.find<VideoDetailController>(tag: widget.heroTag);

    _listener = videoDetailCtr.cid.listen((int p0) {
      cid = p0;
      currentIndex = widget.pages.indexWhere((EpisodeItem e) => e.cid == cid);
      if (!mounted) return;
      setState(() {});
      scrollToIndex();
    });
  }

  @override
  void dispose() {
    _listener.cancel();
    listViewScrollCtr.dispose();
    super.dispose();
  }

  void scrollToIndex() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      listViewScrollCtr.animateTo(
        (currentIndex * 150.0).clamp(
          listViewScrollCtr.position.minScrollExtent,
          listViewScrollCtr.position.maxScrollExtent,
        ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final currEpisode = widget.pages[currentIndex];
    final isPugv = currEpisode.from == ',
  'general.;classplvideoplayerextendsstat': ';

class PLVideoPlayer extends StatefulWidget {
  const PLVideoPlayer({
    required this.maxWidth,
    required this.maxHeight,
    required this.plPlayerController,
    this.videoDetailController,
    this.introController,
    required this.headerControl,
    this.bottomControl,
    this.danmuWidget,
    this.showEpisodes,
    this.showViewPoints,
    this.fill = Colors.black,
    this.alignment = Alignment.center,
    super.key,
  });

  final double maxWidth;
  final double maxHeight;
  final PlPlayerController plPlayerController;
  final VideoDetailController? videoDetailController;
  final CommonIntroController? introController;
  final Widget headerControl;
  final Widget? bottomControl;
  final Widget? danmuWidget;
  final void Function([
    int?,
    UgcSeason?,
    List<ugc.BaseEpisodeItem>?,
    String?,
    int?,
    int?,
  ])?
  showEpisodes;
  final VoidCallback? showViewPoints;
  final Color fill;
  final Alignment alignment;

  @override
  State<PLVideoPlayer> createState() => _PLVideoPlayerState();
}

class _PLVideoPlayerState extends State<PLVideoPlayer>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _animationController;
  late VideoController videoController;
  late final CommonIntroController introController = widget.introController!;
  late final VideoDetailController videoDetailController =
      widget.videoDetailController!;

  final _playerKey = GlobalKey();
  final _videoKey = GlobalKey();

  final RxDouble _brightnessValue = 0.0.obs;
  final RxBool _brightnessIndicator = false.obs;
  Timer? _brightnessTimer;

  late FullScreenMode mode;

  late final RxBool showRestoreScaleBtn = false.obs;

  GestureType? _gestureType;
  Offset? _initialFocalPoint;

  bool _pauseDueToPauseUponEnteringBackgroundMode = false;

  StreamSubscription? _brightnessListener;
  void _onBrightnessChanged(double value) {
    if (mounted && _gestureType != .left) {
      _brightnessValue.value = value;
    }
  }

  void _getSystemBrightness() {
    ScreenBrightnessPlatform.instance.system.then((res) {
      if (mounted) {
        _brightnessValue.value = res;
      }
    });
  }

  void _getAppBrightness() {
    ScreenBrightnessPlatform.instance.application.then((res) {
      if (mounted) {
        _brightnessValue.value = res;
      }
    });
  }

  void _onVolumeChanged(double value) {
    if (mounted && !plPlayerController.volumeInterceptEventStream) {
      plPlayerController.volume.value = value;
      if (Platform.isIOS && !FlutterVolumeController.showSystemUI) {
        plPlayerController
          ..volumeIndicator.value = true
          ..volumeTimer?.cancel()
          ..volumeTimer = Timer(
            const Duration(milliseconds: 800),
            () {
              if (mounted) {
                plPlayerController.volumeIndicator.value = false;
              }
            },
          );
      }
    }
  }

  void _getCurrVolume() {
    FlutterVolumeController.getVolume().then((res) {
      if (mounted) {
        plPlayerController.volume.value = res!;
      }
    });
  }

  int? tmpSubtitlePaddingB;
  StreamSubscription? _controlsListener;
  void _onControlChanged(bool val) {
    final visible = val && !plPlayerController.controlsLock.value;

    if ((widget.headerControl.key as GlobalKey<TimeBatteryMixin>).currentState
        case final state?) {
      if (state.mounted) {
        state.getBatteryLevelIfNeeded();
        state.provider
          ?..startIfNeeded()
          ..muted = !visible;
        if (visible) {
          state.startClock();
        } else {
          state.stopClock();
        }
      }
    }

    if (visible) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }

    if (widget.videoDetailController case final controller?) {
      if (controller.vttSubtitlesIndex.value != 0) {
        if (visible) {
          const int minPadding = 70;
          if (plPlayerController.subtitlePaddingB < minPadding) {
            tmpSubtitlePaddingB = plPlayerController.subtitlePaddingB;
            plPlayerController
              ..subtitlePaddingB = minPadding
              ..subtitleConfig.value = plPlayerController.getSubConfig;
          }
        } else {
          if (tmpSubtitlePaddingB != null) {
            plPlayerController
              ..subtitlePaddingB = tmpSubtitlePaddingB!
              ..subtitleConfig.value = plPlayerController.getSubConfig;
            tmpSubtitlePaddingB = null;
          }
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    addObserverMobile(this);

    _controlsListener = plPlayerController.showControls.listen(
      _onControlChanged,
    );

    _transformationController = TransformationController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    videoController = plPlayerController.videoController!;

    if (PlatformUtils.isMobile) {
      Future.microtask(() {
        try {
          FlutterVolumeController.updateShowSystemUI(true);
          _getCurrVolume();
          FlutterVolumeController.addListener(
            _onVolumeChanged,
            emitOnStart: false,
          );
        } catch (_) {}

        try {
          if (Platform.isIOS || plPlayerController.setSystemBrightness) {
            _getSystemBrightness();
            _brightnessListener = ScreenBrightnessPlatform
                .instance
                .onSystemScreenBrightnessChanged
                .listen(_onBrightnessChanged);
          } else {
            _getAppBrightness();
            _brightnessListener = ScreenBrightnessPlatform
                .instance
                .onApplicationScreenBrightnessChanged
                .listen(_onBrightnessChanged);
          }
        } catch (_) {}
      });
    }

    if (plPlayerController.enableTapDm) {
      _tapGestureRecognizer = ImmediateTapGestureRecognizer(
        onTapDown: plPlayerController.enableShowDanmaku.value
            ? _onTapDown
            : null,
        onTapUp: _onTapUp,
        onTapCancel: _removeDmAction,
      );

      _danmakuListener = plPlayerController.enableShowDanmaku.listen((value) {
        if (!value) _removeDmAction();
        _tapGestureRecognizer.onTapDown = value ? _onTapDown : null;
      });
    } else {
      _tapGestureRecognizer = ImmediateTapGestureRecognizer(onTapUp: _onTapUp);
    }

    _doubleTapGestureRecognizer = DoubleTapGestureRecognizer()
      ..onDoubleTapDown = _onDoubleTapDown;

    _scaleGestureRecognizer = PlayerScaleGestureRecognizer(
      debugOwner: this,
      dragStartBehavior: .start,
      allowedButtonsFilter: (buttons) => buttons == kPrimaryButton,
      trackpadScrollToScaleFactor: const Offset(
        0,
        -1 / kDefaultMouseScrollToScaleFactor,
      ),
      trackpadScrollCausesScale: false,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!plPlayerController.continuePlayInBackground.value) {
      late final player = plPlayerController.videoPlayerController;
      if (const <AppLifecycleState>[.paused, .detached].contains(state)) {
        if (player != null && player.state.playing) {
          _pauseDueToPauseUponEnteringBackgroundMode = true;
          player.pause();
        }
      } else {
        if (_pauseDueToPauseUponEnteringBackgroundMode) {
          _pauseDueToPauseUponEnteringBackgroundMode = false;
          player?.play();
        }
      }
    }
  }

  Future<void> setBrightness(double value) async {
    _brightnessValue.value = value;
    try {
      if (Platform.isIOS || plPlayerController.setSystemBrightness) {
        await ScreenBrightnessPlatform.instance.setSystemScreenBrightness(
          value,
        );
      } else {
        await ScreenBrightnessPlatform.instance.setApplicationScreenBrightness(
          value,
        );
      }
    } catch (_) {}
    _brightnessIndicator.value = true;
    _brightnessTimer?.cancel();
    _brightnessTimer = Timer(const Duration(milliseconds: 200), () {
      if (mounted) {
        _brightnessIndicator.value = false;
      }
    });
    plPlayerController.brightness.value = value;
  }

  @override
  void dispose() {
    removeObserverMobile(this);
    _danmakuListener?.cancel();
    _tapGestureRecognizer.dispose();
    _longPressRecognizer?.dispose();
    _doubleTapGestureRecognizer.dispose();
    _scaleGestureRecognizer.dispose();
    _brightnessListener?.cancel();
    _controlsListener?.cancel();
    _animationController.dispose();
    _transformationController.dispose();
    _removeDmAction();
    if (PlatformUtils.isMobile) {
      FlutterVolumeController.removeListener();
    }
    super.dispose();
  }

  // 动态构建底部控制条
  Widget buildBottomControl(
    VideoDetailController videoDetailController,
    bool isLandscape,
  ) {
    final videoDetail = introController.videoDetail.value;
    final isSeason = videoDetail.ugcSeason != null;
    final isPart = videoDetail.pages != null && videoDetail.pages!.length > 1;
    final isPgc = !videoDetailController.isUgc;
    final isPlayAll = videoDetailController.isPlayAll;
    final anySeason = isSeason || isPart || isPgc || isPlayAll;
    final isFullScreen = this.isFullScreen;
    final double widgetWidth = isLandscape && isFullScreen ? 42 : 35;

    Widget progressWidget(
      BottomControlType bottomControl,
    ) => switch (bottomControl) {
      /// 播放暂停
      BottomControlType.playOrPause => PlayOrPauseButton(
        plPlayerController: plPlayerController,
      ),

      /// 上一集
      BottomControlType.pre => ComBtn(
        width: widgetWidth,
        height: 30,
        tooltip: ',
  'general.;classsetdisplaymodeextendssta': ';

class SetDisplayMode extends StatefulWidget {
  const SetDisplayMode({super.key});

  @override
  State<SetDisplayMode> createState() => _SetDisplayModeState();
}

class _SetDisplayModeState extends State<SetDisplayMode> {
  List<DisplayMode> modes = <DisplayMode>[];
  DisplayMode? active;
  DisplayMode? preferred;

  Box setting = GStorage.setting;

  @override
  void initState() {
    super.initState();
    init();
  }

  // 获取所有的mode
  Future<void> fetchAll() async {
    preferred = await FlutterDisplayMode.preferred;
    active = await FlutterDisplayMode.active;
    setting.put(SettingBoxKey.displayMode, preferred.toString());
    if (mounted) {
      setState(() {});
    }
  }

  // 初始化mode/手动设置
  Future<void> init() async {
    try {
      modes = await FlutterDisplayMode.supported;
    } on PlatformException catch (e) {
      if (kDebugMode) debugPrint(e.toString());
    }

    final value = setting.get(SettingBoxKey.displayMode);
    if (value != null) {
      preferred = modes.firstWhereOrNull((e) => e.toString() == value);
    }

    preferred ??= DisplayMode.auto;

    FlutterDisplayMode.setPreferredMode(preferred!).whenComplete(() {
      Future.delayed(const Duration(milliseconds: 100), fetchAll);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(',
  'general.;classugcintrocontrollerextend': ';

class UgcIntroController extends CommonIntroController with ReloadMixin {
  late ExpandableController expandableCtr;

  final RxBool status = true.obs;

  // up主粉丝数
  final Rx<MemberCardInfoData> userStat = MemberCardInfoData().obs;
  // 关注状态 默认未关注
  late final Rx<RelationData> followStatus = Rx(RelationData());
  late final RxMap staffRelations = {}.obs;

  // 是否点踩
  final RxBool hasDislike = false.obs;

  late final showArgueMsg = Pref.showArgueMsg;
  late final enableAi = Pref.enableAi;
  late final horizontalMemberPage = Pref.horizontalMemberPage;

  AiConclusionResult? aiConclusionResult;

  late final Map<int?, bool> seasonFavState = {};

  @override
  void onInit() {
    super.onInit();
    bool alwaysExpandIntroPanel = Pref.alwaysExpandIntroPanel;
    expandableCtr = ExpandableController(
      initialExpanded: alwaysExpandIntroPanel,
    );
    if (!alwaysExpandIntroPanel && Pref.expandIntroPanelH) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!expandableCtr.expanded && !DeviceUtils.size.isPortrait) {
          expandableCtr.toggle();
        }
      });
    }

    videoDetail.value.title = Get.arguments[',
  'general.;classvideoreplyreplycontrolle': ';

class VideoReplyReplyController extends ReplyController
    with GetSingleTickerProviderStateMixin {
  VideoReplyReplyController({
    required this.hasRoot,
    required this.id,
    required this.oid,
    required this.rpid,
    required this.dialog,
    required this.replyType,
  });
  final int? dialog;
  int? id;
  // 视频aid 请求时使用的oid
  int oid;
  // rpid 请求楼中楼回复
  int rpid;
  int replyType;

  bool hasRoot = false;
  final firstFloor = Rxn<ReplyInfo>();

  final index = RxnInt();

  final listController = ListController();

  AnimationController? _controller;
  AnimationController get animController => _controller ??= AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  );

  late final horizontalPreview = Pref.horizontalPreview;

  @override
  dynamic get sourceId => replyType == 1 ? IdUtils.av2bv(oid) : oid;

  @override
  void onInit() {
    super.onInit();
    mode = Mode.MAIN_LIST_TIME;
    queryData();
  }

  @override
  List<ReplyInfo>? getDataList(response) {
    return dialog != null ? response.replies : response.root.replies;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    final data = response.response;

    subjectControl = data.subjectControl;
    upMid ??= data.subjectControl.upMid;
    paginationReply = data.paginationReply;
    isEnd = data.cursor.isEnd;

    // reply2Reply // isDialogue.not
    if (data is DetailListReply) {
      count.value = data.root.count.toInt();
      if (isRefresh && !hasRoot) {
        firstFloor.value ??= data.root;
      }
      if (id != null) {
        setIndexById(Int64(id!), data.root.replies);
        id = null;
      }
    }

    return false;
  }

  bool setIndexById(Int64 id64, [List<ReplyInfo>? replies]) {
    final index = (replies ?? loadingState.value.data!).indexWhere(
      (item) => item.id == id64,
    );
    if (index != -1) {
      this.index.value = index;
      jumpToItem(index);
      return true;
    }
    return false;
  }

  ExtendedNestedScrollController? nestedController;

  @pragma(',
  'general.;classwhisperdetailcontrollere': ';

class WhisperDetailController extends CommonListController<RspSessionMsg, Msg> {
  late final account = Accounts.main;

  late final int talkerId;
  late final String name;
  late final String face;
  late final int? mid;
  late final bool isLive;

  Int64? msgSeqno;

  //表情转换图片规则
  List<EmotionInfo>? eInfos;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    talkerId = args[',
  'general.;classzanbuttongrpcextendsstat': ';

class ZanButtonGrpc extends StatelessWidget {
  const ZanButtonGrpc({
    super.key,
    required this.replyItem,
  });

  final ReplyInfo replyItem;

  Future<void> onHateReply(
    BuildContext context,
    bool isProcessing,
    VoidCallback onDone, {
    required bool isLike,
    required bool isDislike,
  }) async {
    if (isProcessing) {
      return;
    }
    isProcessing = true;
    feedBack();
    final int oid = replyItem.oid.toInt();
    final int rpid = replyItem.id.toInt();
    // 1 已点赞 2 不喜欢 0 未操作
    final int action = isDislike ? 0 : 2;
    final res = await ReplyHttp.hateReply(
      type: replyItem.type.toInt(),
      action: action == 2 ? 1 : 0,
      oid: oid,
      rpid: rpid,
    );
    // SmartDialog.dismiss();
    if (res.isSuccess) {
      SmartDialog.showToast(isDislike ? ',
  'general.;coinnum.value+=coin;globaldat': ');
      coinNum.value += coin;
      GlobalData().afterCoin(coin);
      stat.coin += coin;
      if (coinWithLike && !hasLike.value) {
        stat.like++;
        hasLike.value = true;
      }
    } else {
      res.toast();
    }
  }

  Future<void> queryVideoTags() async {
    final result = await UserHttp.videoTags(bvid: bvid, cid: cid.value);
    videoTags.value = result.dataOrNull;
  }

  Future<void> viewLater() async {
    final res = await (hasLater.value
        ? UserHttp.toViewDel(aids: IdUtils.bv2av(bvid).toString())
        : UserHttp.toViewLater(bvid: bvid));
    if (res.isSuccess) hasLater.value = !hasLater.value;
  }
}

mixin FavMixin on TripleMixin {
  Set? favIds;
  int? quickFavId;
  late final enableQuickFav = Pref.enableQuickFav;
  final Rx<FavFolderData> favFolderData = FavFolderData().obs;

  (Object, int) get getFavRidType;

  Future<LoadingState<FavFolderData>> queryVideoInFolder() async {
    favIds = null;
    final (rid, type) = getFavRidType;
    final res = await FavHttp.videoInFolder(
      mid: Accounts.main.mid,
      rid: rid,
      type: type,
    );
    if (res case Success(:final response)) {
      favFolderData.value = response;
      favIds = response.list
          ?.where((item) => item.favState == 1)
          .map((item) => item.id)
          .toSet();
    }
    return res;
  }

  int get favFolderId {
    if (this.quickFavId != null) {
      return this.quickFavId!;
    }
    final quickFavId = Pref.quickFavId;
    final list = favFolderData.value.list!;
    if (quickFavId != null) {
      final folderInfo = list.firstWhereOrNull((e) => e.id == quickFavId);
      if (folderInfo != null) {
        return this.quickFavId = quickFavId;
      } else {
        GStorage.setting.delete(SettingBoxKey.quickFavId);
      }
    }
    return this.quickFavId = list.first.id;
  }

  // 收藏
  void showFavBottomSheet(BuildContext context, {bool isLongPress = false}) {
    if (!Accounts.main.isLogin) {
      SmartDialog.showToast(',
  'general.;constdoublekscreenratio=1.2;/': ';

const double kScreenRatio = 1.2;

// 全屏模式
enum FullScreenMode {
  // 根据内容自适应
  auto(',
  'general.;init;returnfalse;}opusdata=re': ';
        init();
        return false;
      }
      opusData = response;
      commentType = response.basic!.commentType!;
      commentId = int.parse(response.basic!.commentIdStr!);
      if (showDynActionBar) {
        if (response.modules.moduleStat != null) {
          stats.value = response.modules.moduleStat;
        } else {
          getArticleInfo();
        }
      }
      summary
        ..author ??= response.modules.moduleAuthor
        ..title ??= response.modules.moduleTag?.text;
      return true;
    } else {
      loadingState.value = res as Error;
      return false;
    }
  }

  Future<bool> queryRead(int cvid) async {
    final res = await DynamicsHttp.articleView(cvId: cvid);
    if (res case Success(:final response)) {
      articleData = response;
      summary
        ..author ??= response.author
        ..title ??= response.title
        ..cover ??= response.originImageUrls?.firstOrNull;

      if (showDynActionBar) {
        getArticleInfo();
      }
      return true;
    } else {
      loadingState.value = res as Error;
      return false;
    }
  }

  // stats
  Future<bool> getArticleInfo([bool isGetCover = false]) async {
    final res = await DynamicsHttp.articleInfo(cvId: commentId);
    if (res case Success(:final response)) {
      summary
        ..cover ??= response.originImageUrls?.firstOrNull
        ..title ??= response.title;

      stats.value ??= ModuleStatModel(
        comment: DynamicStat(count: response.stats?.reply),
        forward: DynamicStat(count: response.stats?.share),
        like: DynamicStat(
          count: response.stats?.like,
          status: response.stats?.like == 1,
        ),
        favorite: DynamicStat(
          count: response.stats?.favorite,
          status: response.favorite,
        ),
      );
      return true;
    }
    if (isGetCover) {
      res.toast();
    }
    return false;
  }

  // 请求动态内容
  Future<void> _queryContent() async {
    if (type != ',
  'general.;latefinalrxintsmssendcooldown': ';
  late final RxInt smsSendCooldown = 0.obs;
  late int smsSendTimestamp = 0;

  // 定时器
  Timer? qrCodeTimer;
  Timer? smsSendCooldownTimer;

  bool _isReq = false;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this)
      ..addListener(_handleTabChange);
  }

  @override
  void onClose() {
    tabController
      ..removeListener(_handleTabChange)
      ..dispose();
    qrCodeTimer?.cancel();
    smsSendCooldownTimer?.cancel();
    telTextController.dispose();
    usernameTextController.dispose();
    passwordTextController.dispose();
    smsCodeTextController.dispose();
    cookieTextController.dispose();
    super.onClose();
  }

  Future<void> refreshQRCode() async {
    final res = await LoginHttp.getHDcode();
    if (res case Success(:final response)) {
      qrCodeTimer?.cancel();
      codeInfo.value = res;
      qrCodeTimer = Timer.periodic(const Duration(milliseconds: 1000), (t) {
        final left = 180 - t.tick;
        if (left <= 0) {
          t.cancel();
          statusQRCode.value = ',
  'general.;latefinalstring_audionormaliz': ';
  late final String _audioNormalizationParam =
      AudioNormalization.getParamFromConfig(_audioNormalization);

  // 初始化资源
  Future<void> setDataSource(
    DataSource dataSource, {
    bool isLive = false,
    bool autoplay = true,
    // 初始化播放位置
    Duration? seekTo,
    // 初始化播放速度
    double speed = 1.0,
    int? width,
    int? height,
    Duration? duration,
    // 方向
    bool? isVertical,
    // 记录历史记录
    int? aid,
    String? bvid,
    int? cid,
    int? epid,
    int? seasonId,
    int? pgcType,
    VideoType? videoType,
    VoidCallback? onInit,
    Volume? volume,
    bool autoFullScreenFlag = false,
  }) async {
    try {
      _processing = true;
      this.isLive = isLive;
      _videoType = videoType ?? VideoType.ugc;
      this.width = width;
      this.height = height;
      this.dataSource = dataSource;
      _autoPlay = autoplay;
      // 初始化视频倍速
      // _playbackSpeed.value = speed;
      // 初始化数据加载状态
      dataStatus.value = DataStatus.loading;
      // 初始化全屏方向
      _isVertical = isVertical ?? false;
      _aid = aid;
      _bvid = bvid;
      this.cid = cid;
      _epid = epid;
      _seasonId = seasonId;
      _pgcType = pgcType;

      if (showSeekPreview) {
        _clearPreview();
      }
      cancelLongPressTimer();
      if (_videoPlayerController != null &&
          _videoPlayerController!.state.playing) {
        await pause(notify: false);
      }

      if (_playerCount == 0) {
        return;
      }
      // 配置Player 音轨、字幕等等
      await _createVideoController(dataSource, seekTo, volume);

      if (_playerCount == 0) {
        _removeListeners();
        _videoPlayerController?.dispose();
        _videoPlayerController = null;
        _videoController = null;
        return;
      }

      // 获取视频时长 00:00
      this.duration.value = duration ?? _videoPlayerController!.state.duration;
      position = buffered.value = sliderPosition = seekTo ?? Duration.zero;
      updatePositionSecond();
      updateSliderPositionSecond();
      updateBufferedSecond();
      // 数据加载完成
      dataStatus.value = DataStatus.loaded;

      if (autoFullScreenFlag && autoEnterFullScreen) {
        triggerFullScreen(status: true);
      }

      await _initializePlayer();
      onInit?.call();
    } catch (err, stackTrace) {
      dataStatus.value = DataStatus.error;
      if (kDebugMode) {
        debugPrint(stackTrace.toString());
        debugPrint(',
  'general.;longpressstatus.value=val;awa': ');
      longPressStatus.value = val;
      await setPlaybackSpeed(lastPlaybackSpeed);
    }
  }

  bool get _isCompleted =>
      videoPlayerController!.state.completed ||
      (duration.value - position).inMilliseconds <= 50;

  // 双击播放、暂停
  Future<void> onDoubleTapCenter() async {
    if (!isLive && _isCompleted) {
      await videoPlayerController!.seek(Duration.zero);
      videoPlayerController!.play();
    } else {
      videoPlayerController!.playOrPause();
    }
  }

  final RxBool mountSeekBackwardButton = false.obs;
  final RxBool mountSeekForwardButton = false.obs;

  void onDoubleTapSeekBackward() {
    mountSeekBackwardButton.value = true;
  }

  void onDoubleTapSeekForward() {
    mountSeekForwardButton.value = true;
  }

  void onForward(Duration duration) {
    onForwardBackward(position + duration);
  }

  void onBackward(Duration duration) {
    onForwardBackward(position - duration);
  }

  void onForwardBackward(Duration duration) {
    seekTo(
      duration.clamp(Duration.zero, videoPlayerController!.state.duration),
      isSeek: false,
    ).whenComplete(play);
  }

  void doubleTapFuc(DoubleTapType type) {
    if (!enableQuickDouble) {
      onDoubleTapCenter();
      return;
    }
    switch (type) {
      case DoubleTapType.left:
        // 双击左边区域 👈
        onDoubleTapSeekBackward();
        break;
      case DoubleTapType.center:
        onDoubleTapCenter();
        break;
      case DoubleTapType.right:
        // 双击右边区域 👈
        onDoubleTapSeekForward();
        break;
    }
  }

  /// 关闭控制栏
  void onLockControl(bool val) {
    feedBack();
    controlsLock.value = val;
    if (!val && showControls.value) {
      showControls.refresh();
    }
    controls = !val;
  }

  void _setFullScreen(bool val) {
    isFullScreen.value = val;
    updateSubtitleStyle();
  }

  double screenRatio = 0.0;
  bool isManualFS = true;
  late final FullScreenMode mode = Pref.fullScreenMode;
  late final horizontalScreen = Pref.horizontalScreen;
  late final removeSafeArea = Pref.removeSafeArea;

  Future<void>? changeOrientation({
    required bool isVertical,
    DeviceOrientation? orientation,
  }) {
    if (orientation == null && (mode == .none || mode == .gravity)) {
      return null;
    }
    if (orientation == null &&
        (mode == .vertical ||
            (mode == .auto && isVertical) ||
            (mode == .ratio && (isVertical || screenRatio < kScreenRatio)))) {
      return portraitUpMode();
    } else {
      // https://github.com/flutter/flutter/issues/73651
      // https://github.com/flutter/flutter/issues/183708
      if (Platform.isAndroid) {
        if ((orientation ?? _orientation) == .landscapeRight) {
          return landscapeRightMode();
        } else {
          return landscapeLeftMode();
        }
      } else {
        if (orientation == .landscapeLeft) {
          return landscapeLeftMode();
        } else {
          return landscapeRightMode();
        }
      }
    }
  }

  // 全屏
  bool _fsProcessing = false;
  Future<void> triggerFullScreen({
    bool status = true,
    bool inAppFullScreen = false,
    DeviceOrientation? orientation,
    bool isManualFS = true,
  }) async {
    if (isDesktopPip) return;
    if (isFullScreen.value == status) return;

    if (_fsProcessing) return;
    _fsProcessing = true;
    this.isManualFS = isManualFS;
    try {
      if (status) {
        if (PlatformUtils.isMobile) {
          hideSystemBar();
          await changeOrientation(
            isVertical: isVertical,
            orientation: orientation,
          );
        } else {
          await enterDesktopFullScreen(inAppFullScreen: inAppFullScreen);
        }
      } else {
        if (PlatformUtils.isMobile) {
          if (!removeSafeArea) {
            showSystemBar();
          }
          if (orientation == null && mode == .none) {
            return;
          }
          await resetScreenRotation();
        } else {
          await exitDesktopFullScreen();
        }
      }
    } finally {
      _setFullScreen(status);
      _fsProcessing = false;
    }
  }

  void addPositionListener(ValueChanged<Duration> listener) {
    if (_playerCount == 0) return;
    _positionListeners.add(listener);
  }

  void removePositionListener(ValueChanged<Duration> listener) =>
      _positionListeners.remove(listener);

  void addStatusLister(ValueChanged<PlayerStatus> listener) {
    if (_playerCount == 0) return;
    _statusListeners.add(listener);
  }

  void removeStatusLister(ValueChanged<PlayerStatus> listener) =>
      _statusListeners.remove(listener);

  // 记录播放记录
  Future<void>? makeHeartBeat(
    int progress, {
    HeartBeatType type = .playing,
    bool isManual = false,
    dynamic aid,
    dynamic bvid,
    dynamic cid,
    dynamic epid,
    dynamic seasonId,
    dynamic pgcType,
    VideoType? videoType,
  }) {
    if (isLive ||
        !enableHeart ||
        progress == 0 ||
        (playerStatus.isPaused && !isManual)) {
      return null;
    }

    Future<void> send() {
      return VideoHttp.heartBeat(
        aid: aid ?? _aid,
        bvid: bvid ?? _bvid,
        cid: cid ?? this.cid,
        progress: progress,
        epid: epid ?? _epid,
        seasonId: seasonId ?? _seasonId,
        subType: pgcType ?? _pgcType,
        videoType: videoType ?? _videoType,
      );
    }

    switch (type) {
      case .playing:
        if (progress - _heartDuration >= 5) {
          _heartDuration = progress;
          return send();
        }
      case .status:
        if (progress - _heartDuration >= 2) {
          _heartDuration = progress;
          return send();
        }
      case .completed:
        if (playerStatus.isCompleted &&
            (duration.value - position).inMilliseconds <= 1000) {
          progress = -1;
        }
        return send();
    }
    return null;
  }

  void setPlayRepeat(PlayRepeat type) {
    playRepeat = type;
    if (!tempPlayerConf) video.put(VideoBoxKey.playRepeat, type.index);
  }

  void putSubtitleSettings() {
    setting.putAllNE({
      SettingBoxKey.subtitleFontScale: subtitleFontScale,
      SettingBoxKey.subtitleFontScaleFS: subtitleFontScaleFS,
      SettingBoxKey.subtitlePaddingH: subtitlePaddingH,
      SettingBoxKey.subtitlePaddingB: subtitlePaddingB,
      SettingBoxKey.subtitleBgOpacity: subtitleBgOpacity,
      SettingBoxKey.subtitleStrokeWidth: subtitleStrokeWidth,
      SettingBoxKey.subtitleFontWeight: subtitleFontWeight,
    });
  }

  bool _isCloseAll = false;
  bool get isCloseAll => _isCloseAll;

  Future<void>? resetScreenRotation() {
    if (horizontalScreen) {
      return fullMode();
    } else {
      return portraitUpMode();
    }
  }

  void onCloseAll() {
    _isCloseAll = true;
    dispose();
    Get.until((route) => route.isFirst);
  }

  void dispose() {
    // 每次减1，最后销毁
    resetScreenRotation();
    cancelLongPressTimer();
    _cancelSubForSeek();
    if (!_isCloseAll && _playerCount > 1) {
      _playerCount -= 1;
      _heartDuration = 0;
      return;
    }

    _playerCount = 0;
    _iosPipControlsPrimaryPlayback = false;
    _syncingFromIosPip = false;
    if (removeSafeArea) {
      showSystemBar();
    }
    danmakuController = null;
    _stopOrientationListener();
    _disableAutoEnterPip();
    setPlayCallBack(null);
    dmState.clear();
    if (showSeekPreview) {
      _clearPreview();
    }
    if (Platform.isAndroid) {
      AndroidHelper$ToDart.onUserLeaveHint?.release();
      AndroidHelper$ToDart.onUserLeaveHint = null;
    }
    if (Platform.isIOS) {
      PiliIosPip.onPlay = null;
      PiliIosPip.onPause = null;
      PiliIosPip.onSeek = null;
      PiliIosPip.onNext = null;
      PiliIosPip.onPrevious = null;
      PiliIosPip.onFailed = null;
      PiliIosPip.onStarted = null;
      PiliIosPip.onStopped = null;
      PiliPip.dispose();
    }
    onPipSkipNext = null;
    onPipSkipPrevious = null;
    _timer?.cancel();
    // _position.close();
    // _playerEventSubs?.cancel();
    // _sliderPosition.close();
    // _sliderTempPosition.close();
    // _isSliderMoving.close();
    // _duration.close();
    // _buffered.close();
    // _showControls.close();
    // _controlsLock.close();

    // playerStatus.close();
    // dataStatus.close();

    if (PlatformUtils.isDesktop && isAlwaysOnTop.value) {
      windowManager.setAlwaysOnTop(false);
    }

    _removeListeners();
    _positionListeners.clear();
    _statusListeners.clear();
    if (playerStatus.isPlaying) {
      WakelockPlus.disable();
    }
    if (kDebugMode) {
      debugPrint(',
  'general.;mixintriplemixinongetxcontrol': ';

mixin TripleMixin on GetxController, TickerProvider {
  // 是否点赞
  final RxBool hasLike = false.obs;
  // 投币数量
  final RxNum coinNum = RxNum(0);
  // 是否投币
  bool get hasCoin => coinNum.value != 0;
  // 是否收藏
  final RxBool hasFav = false.obs;

  bool get hasTriple => hasLike.value && hasCoin && hasFav.value;

  bool get isLogin;

  bool isHasCopyright(int copyright) {
    return copyright != 2;
  }

  bool reachCoinLimit(bool hasCopyRight, num coinNum) {
    return (!hasCopyRight && coinNum >= 1) || coinNum >= 2;
  }

  int get copyright;

  void onPayCoin(int coin, bool coinWithLike);

  void actionCoinVideo() {
    if (!isLogin) {
      SmartDialog.showToast(',
  'general.;regadapter;awaitfuture.wait[/': '));
    regAdapter();

    await Future.wait([
      // 登录用户信息
      Hive.openBox<UserInfoData>(
        ',
  'general.;return;}//快速收藏&//点按收藏至默认文件夹//': ');
      return;
    }
    // 快速收藏 &
    // 点按 收藏至默认文件夹
    // 长按选择文件夹
    if (enableQuickFav) {
      if (!isLongPress) {
        actionFavVideo(isQuick: true);
      } else {
        PageUtils.showFavBottomSheet(context: context, ctr: this);
      }
    } else if (!isLongPress) {
      PageUtils.showFavBottomSheet(context: context, ctr: this);
    }
  }

  void updateFavCount(int count);

  Future<void> actionFavVideo({bool isQuick = false}) async {
    final (rid, type) = getFavRidType;
    // 收藏至默认文件夹
    if (isQuick) {
      SmartDialog.showLoading(msg: ',
  'general.;return;}finalvideodetail=this': ');
      return;
    }
    final videoDetail = this.videoDetail.value;
    if (videoDetail.staff?.isNotEmpty == true) {
      return;
    }
    int? mid = videoDetail.owner?.mid;
    if (mid == null) {
      return;
    }
    int attr = followStatus.value.attribute ?? 0;
    if (attr == 128) {
      final res = await VideoHttp.relationMod(
        mid: mid,
        act: 6,
        reSrc: 11,
      );
      if (res.isSuccess) {
        followStatus
          ..value.attribute = 0
          ..refresh();
      }
      return;
    } else {
      RequestUtils.actionRelationMod(
        context: context,
        mid: mid,
        isFollow: attr != 0,
        followStatus: followStatus.value,
        afterMod: (attribute) {
          followStatus
            ..value.attribute = attribute
            ..refresh();
          Future.delayed(const Duration(milliseconds: 500), queryFollowStatus);
        },
      );
    }
  }

  // 修改分P或番剧分集
  Future<bool> onChangeEpisode(
    BaseEpisodeItem episode, {
    bool isStein = false,
  }) async {
    try {
      final String bvid = episode.bvid ?? this.bvid;
      final int aid = episode.aid ?? IdUtils.bv2av(bvid);
      int? cid = episode.cid;
      Dimension? dimension;
      if (cid == null) {
        if (await SearchHttp.ab2cWithDimension(aid: aid, bvid: bvid)
            case final res?) {
          cid = res.cid;
          dimension = res.dimension;
        }
      }
      if (cid == null) {
        return false;
      }

      final String? cover = episode.cover;

      // 重新获取视频资源
      if (videoDetailCtr.isPlayAll) {
        if (videoDetailCtr.mediaList.indexWhere((item) => item.bvid == bvid) ==
            -1) {
          if (dimension == null && episode is EpisodeItem) {
            dimension = episode.page?.dimension;
          }
          PageUtils.toVideoPage(
            bvid: bvid,
            cid: cid,
            cover: cover,
            dimension: dimension,
          );
          return false;
        }
      }

      videoDetailCtr
        ..plPlayerController.pause()
        ..makeHeartBeat()
        ..updateMediaListHistory(aid)
        ..onReset(isStein: isStein)
        ..bvid = bvid
        ..aid = aid
        ..cid.value = cid
        ..queryVideoUrl();

      if (this.bvid != bvid) {
        reload = true;
        aiConclusionResult = null;

        if (cover != null && cover.isNotEmpty) {
          videoDetailCtr.cover.value = cover;
        }

        // 重新请求相关视频
        if (videoDetailCtr.plPlayerController.showRelatedVideo) {
          try {
            Get.find<RelatedController>(tag: heroTag)
              ..bvid = bvid
              ..queryData();
          } catch (_) {}
        }

        // 重新请求评论
        if (videoDetailCtr.showReply) {
          try {
            final replyCtr = Get.find<VideoReplyController>(tag: heroTag)
              ..aid = aid;
            if (replyCtr.loadingState.value is! Loading) {
              replyCtr.onReload();
            }
          } catch (_) {}
        }

        hasLater.value = videoDetailCtr.sourceType == SourceType.watchLater;
        this.bvid = bvid;
        queryVideoIntro();
      } else {
        if (episode is Part) {
          final videoDetail = this.videoDetail.value;
          videoPlayerServiceHandler?.onVideoDetailChange(
            episode,
            cid,
            heroTag,
            artist: videoDetail.owner?.name,
            cover: videoDetail.pic,
          );
        }
      }

      this.cid.value = cid;
      queryOnlineTotal();
      return true;
    } catch (e) {
      if (kDebugMode) debugPrint(',
  'general.;return;}ifhaslike.value&&hasc': ');
      return;
    }
    if (hasLike.value && hasCoin && hasFav.value) {
      // 已点赞、投币、收藏
      SmartDialog.showToast(',
  'general.;returnbase64encoded;}//https:': ');

    return base64Encoded;
  }

  // https://github.com/SocialSisterYi/bilibili-API-collect/blob/master/grpc_api/readme.md#x-bili-trace-id-生成算法
  static String genTraceId() {
    final randomTraceId = StringBuffer(Utils.generateRandomString(24));

    final ts = (DateTime.now().millisecondsSinceEpoch ~/ 1000) >> 8;

    randomTraceId
      ..write((ts & 0xFFFFFF).toRadixString(16).padLeft(6, ',
  'general.;returnfalse;}onchangeepisodeb': ');
        return false;
      }
      onChangeEpisode(
        BaseEpisodeItem(
          aid: firstItem.aid,
          bvid: firstItem.bvid,
          cid: firstItem.cid,
          cover: firstItem.cover,
        ),
      );
      return true;
    }

    return false;
  }

  // ai总结
  static Future<AiConclusionResult?> getAiConclusion(
    String bvid,
    int cid,
    int? mid,
  ) async {
    if (!Accounts.heartbeat.isLogin) {
      SmartDialog.showToast(',
  'general.;returnfalse;}}//追番future<void': ');
      return false;
    }
  }

  // 追番
  Future<void> pgcAdd() async {
    final result = await VideoHttp.pgcAdd(seasonId: pgcItem.seasonId);
    if (result case Success(:final response)) {
      isFollowed.value = true;
      followStatus.value = 2;
      SmartDialog.showToast(response);
    } else {
      result.toast();
    }
  }

  // 取消追番
  Future<void> pgcDel() async {
    final result = await VideoHttp.pgcDel(seasonId: pgcItem.seasonId);
    if (result case Success(:final response)) {
      isFollowed.value = false;
      SmartDialog.showToast(response);
    } else {
      result.toast();
    }
  }

  Future<void> pgcUpdate(int status) async {
    final result = await VideoHttp.pgcUpdate(
      seasonId: pgcItem.seasonId.toString(),
      status: status,
    );
    if (result case Success(:final response)) {
      followStatus.value = status;
      SmartDialog.showToast(response);
    } else {
      result.toast();
    }
  }

  @override
  bool prevPlay() {
    final episodes = pgcItem.episodes!;
    int currentIndex = episodes.indexWhere(
      (e) => e.cid == videoDetailCtr.cid.value,
    );
    int prevIndex = currentIndex - 1;
    PlayRepeat playRepeat = videoDetailCtr.plPlayerController.playRepeat;
    if (prevIndex < 0) {
      if (playRepeat == PlayRepeat.listCycle) {
        prevIndex = episodes.length - 1;
      } else {
        return false;
      }
    }
    onChangeEpisode(episodes[prevIndex]);
    return true;
  }

  /// 列表循环或者顺序播放时，自动播放下一个；自动连播时，播放相关视频
  @override
  bool nextPlay() {
    try {
      final episodes = pgcItem.episodes!;

      PlayRepeat playRepeat = videoDetailCtr.plPlayerController.playRepeat;

      int currentIndex = episodes.indexWhere(
        (e) => e.cid == videoDetailCtr.cid.value,
      );
      int nextIndex = currentIndex + 1;
      // 列表循环
      if (nextIndex >= episodes.length) {
        if (playRepeat == PlayRepeat.listCycle) {
          nextIndex = 0;
        } else if (playRepeat == PlayRepeat.autoPlayRelated) {
          return false;
        } else {
          return false;
        }
      }
      onChangeEpisode(episodes[nextIndex]);
      return true;
    } catch (_) {
      return false;
    }
  }

  // 一键三连
  @override
  Future<void> actionTriple() async {
    feedBack();
    if (!isLogin) {
      SmartDialog.showToast(',
  'general.;returnfalse;}}overridevoidonc': ');
      return false;
    }
  }

  @override
  void onClose() {
    expandableCtr.dispose();
    super.onClose();
  }

  /// 播放上一个
  @override
  bool prevPlay([bool skipPart = false]) {
    final List<BaseEpisodeItem> episodes = <BaseEpisodeItem>[];
    bool isPart = false;

    final videoDetail = this.videoDetail.value;

    if (!skipPart && (videoDetail.pages?.length ?? 0) > 1) {
      isPart = true;
      episodes.addAll(videoDetail.pages!);
    } else if (videoDetailCtr.isPlayAll) {
      episodes.addAll(videoDetailCtr.mediaList);
    } else if (videoDetail.ugcSeason != null) {
      final UgcSeason ugcSeason = videoDetail.ugcSeason!;
      final List<SectionItem> sections = ugcSeason.sections!;
      for (int i = 0; i < sections.length; i++) {
        final List<EpisodeItem> episodesList = sections[i].episodes!;
        episodes.addAll(episodesList);
      }
    }

    final int currentIndex = episodes.indexWhere(
      (e) =>
          e.cid ==
          (skipPart
              ? videoDetail.isPageReversed
                    ? videoDetail.pages!.last.cid
                    : videoDetail.pages!.first.cid
              : this.cid.value),
    );

    int prevIndex = currentIndex - 1;
    final PlayRepeat playRepeat = videoDetailCtr.plPlayerController.playRepeat;

    // 列表循环
    if (prevIndex < 0) {
      if (isPart &&
          (videoDetailCtr.isPlayAll || videoDetail.ugcSeason != null)) {
        return prevPlay(true);
      }
      if (playRepeat == PlayRepeat.listCycle) {
        prevIndex = episodes.length - 1;
      } else {
        return false;
      }
    }

    int? cid = episodes[prevIndex].cid;
    while (cid == null) {
      prevIndex--;
      if (prevIndex < 0) {
        return false;
      }
      cid = episodes[prevIndex].cid;
    }

    if (cid != this.cid.value) {
      onChangeEpisode(episodes[prevIndex]);
      return true;
    } else {
      return false;
    }
  }

  /// 列表循环或者顺序播放时，自动播放下一个
  @override
  bool nextPlay([bool skipPart = false]) {
    try {
      final List<BaseEpisodeItem> episodes = <BaseEpisodeItem>[];
      bool isPart = false;
      final videoDetail = this.videoDetail.value;

      // part -> playall -> season
      if (!skipPart && (videoDetail.pages?.length ?? 0) > 1) {
        isPart = true;
        final List<Part> pages = videoDetail.pages!;
        episodes.addAll(pages);
      } else if (videoDetailCtr.isPlayAll) {
        episodes.addAll(videoDetailCtr.mediaList);
      } else if (videoDetail.ugcSeason != null) {
        final UgcSeason ugcSeason = videoDetail.ugcSeason!;
        final List<SectionItem> sections = ugcSeason.sections!;
        for (int i = 0; i < sections.length; i++) {
          final List<EpisodeItem> episodesList = sections[i].episodes!;
          episodes.addAll(episodesList);
        }
      }

      final PlayRepeat playRepeat =
          videoDetailCtr.plPlayerController.playRepeat;

      if (episodes.isEmpty) {
        if (playRepeat == PlayRepeat.listCycle) {
          videoDetailCtr.plPlayerController.play(repeat: true);
          return true;
        }
        if (playRepeat == PlayRepeat.autoPlayRelated &&
            videoDetailCtr.plPlayerController.showRelatedVideo) {
          return playRelated();
        }
        return false;
      }

      final int currentIndex = episodes.indexWhere(
        (e) =>
            e.cid ==
            (skipPart
                ? videoDetail.isPageReversed
                      ? videoDetail.pages!.last.cid
                      : videoDetail.pages!.first.cid
                : this.cid.value),
      );

      int nextIndex = currentIndex + 1;

      if (!isPart &&
          videoDetailCtr.isPlayAll &&
          currentIndex == episodes.length - 2) {
        videoDetailCtr.getMediaList();
      }

      // 列表循环
      if (nextIndex >= episodes.length) {
        if (isPart &&
            (videoDetailCtr.isPlayAll || videoDetail.ugcSeason != null)) {
          return nextPlay(true);
        }

        if (playRepeat == PlayRepeat.listCycle) {
          nextIndex = 0;
        } else if (playRepeat == PlayRepeat.autoPlayRelated &&
            videoDetailCtr.plPlayerController.showRelatedVideo) {
          return playRelated();
        } else {
          return false;
        }
      }

      int? cid = episodes[nextIndex].cid;
      while (cid == null) {
        nextIndex++;
        if (nextIndex >= episodes.length) {
          return false;
        }
        cid = episodes[nextIndex].cid;
      }

      if (cid != this.cid.value) {
        onChangeEpisode(episodes[nextIndex]);
        return true;
      } else {
        return false;
      }
    } catch (_) {
      return false;
    }
  }

  bool playRelated() {
    RelatedController relatedCtr;
    if (Get.isRegistered<RelatedController>(tag: heroTag)) {
      relatedCtr = Get.find<RelatedController>(tag: heroTag);
    } else {
      relatedCtr = Get.put(RelatedController(autoQuery: false), tag: heroTag)
        ..queryData().whenComplete(playRelated);
      return false;
    }

    if (relatedCtr.loadingState.value case Success(:final response)) {
      final firstItem = response?.firstOrNull;
      if (firstItem == null) {
        SmartDialog.showToast(',
  'general.;staticconst$core.list<comment': ');

  static const $core.List<CommentType> values = <CommentType>[
    comment_type_none,
    comment_type_redirect,
    comment_type_judge,
  ];

  static final $core.List<CommentType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CommentType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommentType._(super.value, super.name);
}

/// 设备类型
class DT extends $pb.ProtobufEnum {
  static const DT Unknown = DT._(0, _omitEnumNames ? ',
  'general.;staticconst$core.list<cornert': ');

  static const $core.List<CornerType> values = <CornerType>[
    corner_type_none,
    corner_type_text,
    corner_type_animation,
    corner_type_static,
    corner_type_red_dot,
    corner_type_number,
  ];

  static final $core.List<CornerType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static CornerType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CornerType._(super.value, super.name);
}

/// 折叠分类
class FoldType extends $pb.ProtobufEnum {
  /// 占位
  static const FoldType FoldTypeZero =
      FoldType._(0, _omitEnumNames ? ',
  'general.;staticconst$core.list<foldtyp': ');

  static const $core.List<FoldType> values = <FoldType>[
    FoldTypeZero,
    FoldTypePublish,
    FoldTypeFrequent,
    FoldTypeUnite,
    FoldTypeLimit,
  ];

  static final $core.List<FoldType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FoldType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FoldType._(super.value, super.name);
}

/// 播放器类型
class MediaType extends $pb.ProtobufEnum {
  /// 本地
  static const MediaType MediaTypeNone =
      MediaType._(0, _omitEnumNames ? ',
  'general.;staticconst$core.list<stylety': ');

  static const $core.List<StyleType> values = <StyleType>[
    STYLE_TYPE_NONE,
    STYLE_TYPE_LIVE,
    STYLE_TYPE_DYN_UP,
    STYLE_TYPE_OGV_UP,
    STYLE_TYPE_COLLECTION_UP,
  ];

  static final $core.List<StyleType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static StyleType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StyleType._(super.value, super.name);
}

/// 番剧类型
class VideoSubType extends $pb.ProtobufEnum {
  /// 没有子类型
  static const VideoSubType VideoSubTypeNone =
      VideoSubType._(0, _omitEnumNames ? ',
  'general.;staticconst_mixinkeyenctab=<i': ');
  static const _mixinKeyEncTab = <int>[
    46,
    47,
    18,
    2,
    53,
    8,
    23,
    32,
    15,
    50,
    10,
    31,
    58,
    3,
    45,
    35,
    27,
    43,
    5,
    49,
    33,
    9,
    42,
    19,
    29,
    28,
    14,
    39,
    12,
    38,
    41,
    13,
  ];

  static Future<String>? _future;

  // 对 imgKey 和 subKey 进行字符顺序打乱编码
  static String getMixinKey(String orig) {
    final codeUnits = orig.codeUnits;
    return String.fromCharCodes(_mixinKeyEncTab.map((i) => codeUnits[i]));
  }

  // 为请求参数进行 wbi 签名
  static void encWbi(Map<String, Object> params, String mixinKey) {
    params[',
  'general.;staticvoidswap<t>list<t>list,': ');

  static void swap<T>(List<T> list, int idx1, int idx2) {
    final idx1Value = list[idx1];
    list[idx1] = list[idx2];
    list[idx2] = idx1Value;
  }

  /// av转bv
  static String av2bv(int aid) {
    final bytes = [',
  'general.;typedefplaycallback=future<vo': ';

typedef PlayCallback = Future<void>? Function();
typedef PipSkipCallback = Future<void> Function();

class PlPlayerController with BlockConfigMixin {
  Player? _videoPlayerController;
  VideoController? _videoController;

  // 添加一个私有静态变量来保存实例
  static PlPlayerController? _instance;

  // 流事件  监听播放状态变化
  // StreamSubscription? _playerEventSubs;

  /// [playerStatus] has a [status] observable
  final playerStatus = PlPlayerStatus(PlayerStatus.playing);

  ///
  final Rx<DataStatus> dataStatus = Rx(DataStatus.none);

  // bool controlsEnabled = false;

  /// 响应数据
  /// 带有Seconds的变量只在秒数更新时更新，以避免频繁触发重绘
  // 播放位置
  Duration position = Duration.zero;
  final RxInt positionSeconds = 0.obs;

  /// 进度条位置
  Duration sliderPosition = Duration.zero;
  final RxInt sliderPositionSeconds = 0.obs;
  // 展示使用
  final Rx<Duration> sliderTempPosition = Rx(Duration.zero);

  /// 视频时长
  final Rx<Duration> duration = Rx(Duration.zero);

  /// 视频缓冲
  final Rx<Duration> buffered = Rx(Duration.zero);
  final RxInt bufferedSeconds = 0.obs;

  int _playerCount = 0;

  late double lastPlaybackSpeed = 1.0;
  final RxDouble _playbackSpeed = Pref.playSpeedDefault.obs;
  late final RxDouble _longPressSpeed = Pref.longPressSpeedDefault.obs;

  /// 音量控制条
  final RxDouble volume = RxDouble(
    PlatformUtils.isDesktop ? Pref.desktopVolume : 1.0,
  );
  final setSystemBrightness = Pref.setSystemBrightness;

  /// 亮度控制条
  final RxDouble brightness = (-1.0).obs;

  /// 是否展示控制条
  final RxBool showControls = false.obs;

  /// 亮度控制条展示/隐藏
  final RxBool showBrightnessStatus = false.obs;

  /// 是否长按倍速
  final RxBool longPressStatus = false.obs;

  /// 屏幕锁 为true时，关闭控制栏
  final RxBool controlsLock = false.obs;

  /// 全屏状态
  final RxBool isFullScreen = false.obs;
  // 默认投稿视频格式
  bool isLive = false;

  bool _isVertical = false;

  /// 视频比例
  final Rx<VideoFitType> videoFit = Rx(VideoFitType.contain);

  /// 后台播放
  late final RxBool continuePlayInBackground =
      Pref.continuePlayInBackground.obs;

  ///
  final RxBool isSliderMoving = false.obs;

  bool _autoPlay = false;

  // 记录历史记录
  int? _aid;
  String? _bvid;
  int? cid;
  int? _epid;
  int? _seasonId;
  int? _pgcType;
  VideoType _videoType = VideoType.ugc;
  int _heartDuration = 0;
  int? width;
  int? height;
  String? _iosPipFallbackSourceUrl;
  String? _iosPipFallbackVideoUrl;
  bool _iosPipControlsPrimaryPlayback = false;
  bool _syncingFromIosPip = false;

  late final tryLook = !Accounts.get(AccountType.video).isLogin && Pref.p1080;

  late DataSource dataSource;

  Timer? _timer;
  StreamSubscription<Duration>? _subForSeek;

  Box setting = GStorage.setting;

  // final Durations durations;

  String get bvid => _bvid!;

  /// 视频播放速度
  double get playbackSpeed => _playbackSpeed.value;

  // 长按倍速
  double get longPressSpeed => _longPressSpeed.value;

  /// [videoPlayerController] instance of Player
  Player? get videoPlayerController => _videoPlayerController;

  /// [videoController] instance of Player
  VideoController? get videoController => _videoController;

  bool isMuted = false;

  /// 听视频
  late final RxBool onlyPlayAudio = false.obs;

  /// 镜像
  late final RxBool flipX = false.obs;

  late final RxBool flipY = false.obs;

  final RxBool isBuffering = true.obs;

  /// 全屏方向
  bool get isVertical => _isVertical;

  /// 弹幕开关
  late final RxBool _enableShowDanmaku = Pref.enableShowDanmaku.obs;
  late final RxBool _enableShowLiveDanmaku = Pref.enableShowLiveDanmaku.obs;
  RxBool get enableShowDanmaku =>
      isLive ? _enableShowLiveDanmaku : _enableShowDanmaku;

  late final bool autoPiP = Pref.autoPiP;
  bool get isPipMode =>
      (Platform.isAndroid && AndroidHelper.isPipMode) ||
      (Platform.isIOS && PiliIosPip.isActive) ||
      (PlatformUtils.isDesktop && isDesktopPip);
  late bool isDesktopPip = false;
  late Rect _lastWindowBounds;

  late final showWindowTitleBar = Pref.showWindowTitleBar;
  late final RxBool isAlwaysOnTop = false.obs;
  Future<void> setAlwaysOnTop(bool value) {
    isAlwaysOnTop.value = value;
    return windowManager.setAlwaysOnTop(value);
  }

  Future<void> exitDesktopPip() {
    isDesktopPip = false;
    return Future.wait([
      if (showWindowTitleBar)
        windowManager.setTitleBarStyle(TitleBarStyle.normal),
      windowManager.setMinimumSize(const Size(400, 700)),
      windowManager.setBounds(_lastWindowBounds),
      setAlwaysOnTop(false),
      windowManager.setAspectRatio(0),
    ]);
  }

  Future<void> enterDesktopPip() async {
    if (isFullScreen.value) return;

    isDesktopPip = true;

    _lastWindowBounds = await windowManager.getBounds();

    if (showWindowTitleBar) {
      windowManager.setTitleBarStyle(TitleBarStyle.hidden);
    }

    final Size size;
    final state = videoPlayerController!.state;
    int width = state.width;
    int height = state.height;
    if (width == 0) {
      width = this.width ?? 16;
    }
    if (height == 0) {
      height = this.height ?? 9;
    }
    if (height > width) {
      size = Size(280.0, 280.0 * height / width);
    } else {
      size = Size(280.0 * width / height, 280.0);
    }

    await windowManager.setMinimumSize(size);
    setAlwaysOnTop(true);
    windowManager
      ..setSize(size)
      ..setAspectRatio(width / height);
  }

  void toggleDesktopPip() {
    if (isDesktopPip) {
      exitDesktopPip();
    } else {
      enterDesktopPip();
    }
  }

  late bool _isAutoEnterPip = false;
  bool get isAutoEnterPip => _isAutoEnterPip;

  static bool get _isCurrVideoPage {
    final routing = Get.routing;
    if (routing.route is! GetPageRoute) {
      return false;
    }
    return _isVideoPage(routing.current);
  }

  static bool _isVideoPage(String routeName) {
    return routeName == ',
  'general.;widget?addwidgetbuildcontextc': ';

Widget? addWidget(
  BuildContext context, {
  required int floor,
  required ThemeData theme,
  required Object idStr,
  required DynamicAddModel additional,
}) {
  final type = additional.type;
  late final Color bgColor = floor == 1
      ? theme.dividerColor.withValues(alpha: 0.08)
      : theme.colorScheme.surface;
  late final borderRadius = floor == 1 ? null : Style.mdRadius;
  Widget? child;
  try {
    switch (type) {
      // 转发的投稿
      case ',
  'general.;widgetvideoseasonwidgetbuildc': ';

Widget videoSeasonWidget(
  BuildContext context, {
  required int floor,
  required ThemeData theme,
  required DynamicItemModel item,
  required bool isSave,
  required bool isDetail,
}) {
  // type archive  ugcSeason
  // archive 视频/显示发布人
  // ugcSeason 合集/不显示发布人

  DynamicArchiveModel? video = switch (item.type) {
    ',
  'general.;}//cookie登录future<void>loginb': ');
  }

  // cookie登录
  Future<void> loginByCookie() async {
    if (cookieTextController.text.isEmpty) {
      SmartDialog.showToast(',
  'general.;}//亮度double?brightness;latefi': ';
  }

  // 亮度
  double? brightness;

  late final headerCtrKey = GlobalKey<TimeBatteryMixin>();

  Box setting = GStorage.setting;

  // 预设的解码格式
  late String cacheDecode = Pref.defaultDecode; // def avc
  late String cacheSecondDecode = Pref.secondDecode; // def av1

  bool get showReply => isFileSource
      ? false
      : isUgc
      ? plPlayerController.showVideoReply
      : plPlayerController.showBangumiReply;

  bool get showRelatedVideo =>
      isFileSource ? false : plPlayerController.showRelatedVideo;

  ScrollController? introScrollCtr;
  ScrollController get effectiveIntroScrollCtr =>
      introScrollCtr ??= ScrollController();

  int? seasonCid;
  late final RxInt seasonIndex = 0.obs;

  PlayerStatus? playerStatus;

  late final scrollKey = GlobalKey<ExtendedNestedScrollViewState>();
  late final RxBool isVertical;
  late final RxDouble scrollRatio = 0.0.obs;

  ScrollController? _scrollCtr;
  ScrollController get scrollCtr =>
      _scrollCtr ??= ScrollController()..addListener(scrollListener);

  late bool isExpanding = false;
  late bool isCollapsing = false;

  late double minVideoHeight;
  late double maxVideoHeight;
  late double videoHeight;
  late double animHeight;

  AnimationController? animController;
  AnimationController get animationController =>
      animController ??= (AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
      )..addListener(_animListener));

  void refreshPage() {
    if (scrollKey.currentState?.mounted ?? false) {
      (scrollKey.currentState!.context as Element).markNeedsBuild();
    }
  }

  void _animListener() {
    if (animationController.isForwardOrCompleted) {
      _calcAnimHeight();
      refreshPage();
    }
  }

  void _calcAnimHeight() {
    if (isExpanding) {
      animHeight = clampDouble(
        videoHeight * animationController.value,
        kToolbarHeight,
        videoHeight,
      );
    } else if (isCollapsing) {
      animHeight = clampDouble(
        maxVideoHeight -
            (maxVideoHeight - minVideoHeight) * animationController.value,
        minVideoHeight,
        maxVideoHeight,
      );
    }
  }

  void animToTop() {
    final outerController = scrollKey.currentState!.outerController;
    if (outerController.hasClients) {
      outerController.animateTo(
        outerController.offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  bool _needAnimOnDimensionChanged(bool isVertical) {
    if (isFullScreen) {
      if (PlatformUtils.isMobile) {
        plPlayerController.changeOrientation(isVertical: isVertical);
      }
      return false;
    }
    return true;
  }

  @pragma(',
  'general.;}//清除library/caches目录及文件缓存pra': ');
  }

  // 清除 Library/Caches 目录及文件缓存
  @pragma(',
  'general.;}//获取视频简介&分poverridefuture<vo': ';
  }

  // 获取视频简介&分p
  @override
  Future<void> queryVideoIntro() async {
    queryVideoTags();
    final res = await VideoHttp.videoIntro(bvid: bvid);
    if (res case Success(:final response)) {
      if (response.redirectUrl != null &&
          videoDetailCtr.epId == null &&
          videoDetailCtr.seasonId == null) {
        if (!isClosed) {
          PageUtils.viewPgcFromUri(response.redirectUrl!, off: true);
        }
        return;
      }
      videoPlayerServiceHandler?.onVideoDetailChange(
        response,
        cid.value,
        heroTag,
      );
      if (videoDetail.value.ugcSeason?.id == response.ugcSeason?.id) {
        // keep reversed season
        response.ugcSeason = videoDetail.value.ugcSeason;
      }
      if (videoDetail.value.cid == response.cid) {
        // keep reversed pages
        response
          ..pages = videoDetail.value.pages
          ..isPageReversed = videoDetail.value.isPageReversed;
      }
      videoDetail.value = response;
      try {
        if (videoDetailCtr.cover.value.isEmpty ||
            (videoDetailCtr.videoUrl.isNullOrEmpty &&
                !videoDetailCtr.isQuerying)) {
          videoDetailCtr.cover.value = response.pic ?? ',
  'general.;}ifvideodetailctr.showreply{t': ';
        }
        if (videoDetailCtr.showReply) {
          try {
            Get.find<VideoReplyController>(tag: heroTag).count.value =
                response.stat?.reply ?? 0;
          } catch (_) {}
        }
      } catch (_) {}
      final pages = videoDetail.value.pages;
      if (pages != null && pages.isNotEmpty && cid.value == 0) {
        cid.value = pages.first.cid!;
      }
      queryUserStat(response.staff);
    } else {
      res.toast();
      status.value = false;
    }

    if (isLogin) {
      queryAllStatus();
      queryFollowStatus();
    }
  }

  // 获取up主粉丝数
  Future<void> queryUserStat(List<Staff>? staff) async {
    if (staff != null && staff.isNotEmpty) {
      final res = await Request().get(
        Api.relations,
        queryParameters: {',
  'general.;}returnroutepushuri.parseurl,': ';
      }
      return routePush(
        Uri.parse(url),
        selfHandle: selfHandle,
        off: off,
        parameters: parameters,
        businessId: businessId,
        oid: oid,
      );
    } catch (_) {
      return Future.syncValue(false);
    }
  }

  /// 路由跳转
  static Future<bool> routePush(
    Uri uri, {
    bool selfHandle = false,
    bool off = false,
    Map? parameters,
    int? businessId,
    int? oid,
  }) async {
    // if (kDebugMode) debugPrint(',
  'general.;}}//下载适用于当前系统的安装包staticfuture': ');
    }
  }

  // 下载适用于当前系统的安装包
  static Future<void> onDownload(Map data, {String? ext}) async {
    SmartDialog.dismiss();
    try {
      void download(String plat) {
        if (data[',
  'general.;}}ifplatform.isandroid{//获取设备': ');
        }
      }

      if (Platform.isAndroid) {
        // 获取设备信息
        AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
        // [arm64-v8a]
        download(androidInfo.supportedAbis.first);
      } else {
        download(Platform.operatingSystem);
      }
    } catch (e) {
      if (kDebugMode) debugPrint(',
  'general.;}}}//动态点赞staticfuture<void>on': ');
      }
    }
  }

  // 动态点赞
  static Future<void> onLikeDynamic(
    DynamicItemModel item,
    bool uiStatus,
    VoidCallback onSuccess,
  ) async {
    feedBack();

    final like = item.modules.moduleStat?.like;
    final status = like?.status ?? false;

    if (status ^ uiStatus) {
      SmartDialog.showToast(status ? ',
  'general.;}}}awaitplayer.openmediavideo': ';
        }
      }
    }

    await player.open(
      Media(
        video,
        start: seekTo,
        extras: extras.isEmpty ? null : extras,
      ),
      play: false,
    );
  }

  Future<void>? refreshPlayer() {
    if (dataSource is FileSource) {
      return null;
    }
    if (_videoPlayerController case final ctr? when (ctr.current.isNotEmpty)) {
      return ctr.open(ctr.current.last.copyWith(start: position), play: true);
    }
    return null;
  }

  // 开始播放
  Future<void> _initializePlayer() async {
    if (_instance == null) return;
    // 设置倍速
    if (isLive) {
      await setPlaybackSpeed(1.0);
    } else {
      if (_videoPlayerController?.state.rate != _playbackSpeed.value) {
        await setPlaybackSpeed(_playbackSpeed.value);
      }
    }
    _initVideoFit();
    // if (_looping) {
    //   await setLooping(_looping);
    // }

    // 跳转播放
    // if (seekTo != Duration.zero) {
    //   await this.seekTo(seekTo);
    // }

    // 自动播放
    if (_autoPlay) {
      playIfExists();
      // await play(duration: duration);
    }
  }

  List<StreamSubscription>? _subscriptions;
  final Set<ValueChanged<Duration>> _positionListeners = {};
  final Set<ValueChanged<PlayerStatus>> _statusListeners = {};

  /// 播放事件监听
  void _startListeners(NativePlayer player) {
    assert(_subscriptions == null);
    final stream = player.stream;
    _subscriptions = [
      stream.playing.listen((event) {
        WakelockPlus.toggle(enable: event);
        if (event) {
          if (_isAutoEnterPip) {
            if (_isCurrVideoPage) {
              enterPip(autoEnter: true);
            } else {
              _disableAutoEnterPip();
            }
          }
          playerStatus.value = PlayerStatus.playing;
        } else {
          _disableAutoEnterPip();
          playerStatus.value = PlayerStatus.paused;
        }
        videoPlayerServiceHandler?.onStatusChange(
          playerStatus.value,
          isBuffering.value,
          isLive,
        );
        _updateIosPipPlaybackState();

        /// 触发回调事件
        for (final element in _statusListeners) {
          element(event ? PlayerStatus.playing : PlayerStatus.paused);
        }
        if (videoPlayerController!.state.position.inSeconds != 0) {
          makeHeartBeat(positionSeconds.value, type: HeartBeatType.status);
        }
      }),
      stream.completed.listen((event) {
        if (event) {
          playerStatus.value = PlayerStatus.completed;

          /// 触发回调事件
          for (final element in _statusListeners) {
            element(PlayerStatus.completed);
          }
        } else {
          // playerStatus.value = PlayerStatus.playing;
        }
        makeHeartBeat(positionSeconds.value, type: HeartBeatType.completed);
        _updateIosPipPlaybackState();
      }),
      stream.position.listen((event) {
        position = event;
        updatePositionSecond();
        if (!isSliderMoving.value) {
          sliderPosition = event;
          updateSliderPositionSecond();
        }

        /// 触发回调事件
        for (final element in _positionListeners) {
          element(event);
        }
        makeHeartBeat(event.inSeconds);
        _updateIosPipPlaybackState();
      }),
      stream.duration.listen((Duration event) {
        duration.value = event;
        _updateIosPipPlaybackState();
      }),
      stream.buffer.listen((Duration event) {
        buffered.value = event;
        updateBufferedSecond();
      }),
      stream.buffering.listen((bool event) {
        isBuffering.value = event;
        videoPlayerServiceHandler?.onStatusChange(
          playerStatus.value,
          event,
          isLive,
        );
        _updateIosPipPlaybackState();
      }),
      if (kDebugMode)
        stream.log.listen(((PlayerLog log) {
          if (log.level == ',
  'general.==true{redirecturl=redirecturl': ') == true) {
      redirectUrl = redirectUrl!.substring(0, redirectUrl.length - 1);
    }
    return redirectUrl;
  }

  // 匹配url路由跳转
  static Future<void> matchUrlPush(
    String pathSegment,
    String redirectUrl,
  ) async {
    final matchRes = IdUtils.matchAvorBv(input: pathSegment);
    if (matchRes.isNotEmpty) {
      final aid = matchRes.av;
      String? bvid = matchRes.bv;
      bvid ??= IdUtils.av2bv(aid!);
      final res = await SearchHttp.ab2cWithDimension(aid: aid, bvid: bvid);
      final cid = res?.cid;
      if (cid != null) {
        PageUtils.toVideoPage(
          aid: aid,
          bvid: bvid,
          cid: cid,
          dimension: res!.dimension,
        );
      }
    } else {
      if (redirectUrl.isNotEmpty) {
        PageUtils.handleWebview(redirectUrl);
      } else {
        SmartDialog.showToast(',
  'general.=>videotype.pugv,!=nullwhenisl': ' => VideoType.pugv,
        != null when isLogin => VideoType.pgc,
        _ => VideoType.ugc,
      },
    );
    if (res case Success(:final response)) {
      final Dash? dash = response.dash;
      if (dash != null) {
        final List<VideoItem> videoList = dash.video!;
        final curHighestVideoQa = videoList.first.quality.code;
        final preferVideoQa = entry.preferedVideoQuality;
        int targetVideoQa = curHighestVideoQa;
        if (response.acceptQuality?.isNotEmpty == true &&
            preferVideoQa <= curHighestVideoQa) {
          // 如果预设的画质低于当前最高
          targetVideoQa = response.acceptQuality!.findClosestTarget(
            (e) => e <= preferVideoQa,
            (a, b) => a > b ? a : b,
          );
        }

        /// 取出符合当前画质的videoList
        final List<VideoItem> videosList = videoList
            .where((e) => e.quality.code == targetVideoQa)
            .toList();

        /// 优先顺序 设置中指定解码格式 -> 当前可选的首个解码格式
        final List<FormatItem> supportFormats = response.supportFormats!;
        // 根据画质选编码格式
        final FormatItem targetSupportFormats = supportFormats.firstWhere(
          (e) => e.quality == targetVideoQa,
          orElse: () => supportFormats.first,
        );
        final List<String> supportDecodeFormats = targetSupportFormats.codecs!;

        entry
          ..typeTag = targetVideoQa.toString()
          ..videoQuality = targetVideoQa
          ..preferedVideoQuality = targetVideoQa
          ..qualityPithyDescription =
              targetSupportFormats.newDesc ??
              VideoQuality.fromCode(targetVideoQa).desc;

        String preferDecode = Pref.defaultDecode; // def avc
        String preferSecondDecode = Pref.secondDecode; // def av1

        // 默认从设置中取AV1
        VideoDecodeFormatType currentDecodeFormats =
            VideoDecodeFormatType.fromString(preferDecode);
        VideoDecodeFormatType secondDecodeFormats =
            VideoDecodeFormatType.fromString(preferSecondDecode);
        // 当前视频没有对应格式返回第一个
        int flag = 0;
        for (final e in supportDecodeFormats) {
          if (currentDecodeFormats.codes.any(e.startsWith)) {
            flag = 1;
            break;
          } else if (secondDecodeFormats.codes.any(e.startsWith)) {
            flag = 2;
          }
        }
        if (flag == 2) {
          currentDecodeFormats = secondDecodeFormats;
        } else if (flag == 0) {
          currentDecodeFormats = VideoDecodeFormatType.fromString(
            supportDecodeFormats.first,
          );
        }

        /// 取出符合当前解码格式的videoItem
        final videoDash = videosList.firstWhere(
          (e) => currentDecodeFormats.codes.any(e.codecs!.startsWith),
          orElse: () => videosList.first,
        );

        final videoUrl = VideoUtils.getCdnUrl(videoDash.playUrls);

        final Type2File videoFile = Type2File(
          id: videoDash.id!,
          baseUrl: videoUrl,
          bandwidth: videoDash.bandWidth!,
          codecid: videoDash.codecid!,
          size: 0,
          md5: ',
  'general.=>最常访问}async{finalres=awaitreq': '=>最常访问
  }) async {
    final res = await Request().get(
      Api.followings,
      queryParameters: {
        ',
  'general.=>最近关注，': '=>最近关注，',
  'general.[\d\.]+[千万亿]?': '([\d\.]+)([千万亿])?',
  'general.[笔记]': '[笔记] ',
  'general.\nmid为0时使用匿名': '\nmid为0时使用匿名',
  'general.\u{1f517}网页链接': '\u{1F517}网页链接',
  'general.],;}//单个动态详情-动态信息classmoduledy': '],
  );
}

// 单个动态详情 - 动态信息
class ModuleDynamicModel {
  ModuleDynamicModel({
    this.additional,
    this.desc,
    this.major,
    this.topic,
  });

  DynamicAddModel? additional;
  DynamicDescModel? desc;
  DynamicMajorModel? major;
  DynamicTopicModel? topic;

  ModuleDynamicModel.fromJson(Map<String, dynamic> json) {
    additional = json[',
  'general.],;}//单个动态详情classitemmodulesmo': '],
  );
}

// 单个动态详情
class ItemModulesModel {
  ItemModulesModel();

  ModuleAuthorModel? moduleAuthor;
  ModuleStatModel? moduleStat;
  ModuleTag? moduleTag; // 也做opus的title用

  // 动态
  ModuleDynamicModel? moduleDynamic;
  // ModuleInterModel? moduleInter;
  ModuleInteraction? moduleInteraction;
  ModuleDispute? moduleDispute;

  // 专栏
  ModuleTop? moduleTop;
  ModuleCollection? moduleCollection;
  List<ModuleTag>? moduleExtend; // opus的tag
  List<ArticleContentModel>? moduleContent;
  ModuleBlocked? moduleBlocked;
  ModuleFold? moduleFold;

  static bool showDynDispute = Pref.showDynDispute;
  static bool showDynInteraction = Pref.showDynInteraction;

  ItemModulesModel.fromJson(Map<String, dynamic> json) {
    moduleAuthor = json[',
  'general.],;}}catche,s{utils.reporterro': '],
                          );
                        }
                      } catch (e, s) {
                        Utils.reportError(e, s);
                        SmartDialog.showToast(e.toString());
                      }
                    },
                    title: Text(
                      item.lanDoc!,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  double get subtitleFontScale => plPlayerController.subtitleFontScale;
  double get subtitleFontScaleFS => plPlayerController.subtitleFontScaleFS;
  int get subtitlePaddingH => plPlayerController.subtitlePaddingH;
  int get subtitlePaddingB => plPlayerController.subtitlePaddingB;
  double get subtitleBgOpacity => plPlayerController.subtitleBgOpacity;
  double get subtitleStrokeWidth => plPlayerController.subtitleStrokeWidth;
  int get subtitleFontWeight => plPlayerController.subtitleFontWeight;

  /// 字幕设置
  void showSetSubtitle() {
    showBottomSheet(
      padding: () => isFullScreen ? const .only(bottom: 70) : .zero,
      (context, setState) {
        final theme = Theme.of(context);

        final sliderTheme = SliderThemeData(
          trackHeight: 10,
          trackShape: const MSliderTrackShape(),
          thumbColor: theme.colorScheme.primary,
          activeTrackColor: theme.colorScheme.primary,
          inactiveTrackColor: theme.colorScheme.onInverseSurface,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
        );

        void updateStrokeWidth(double val) {
          plPlayerController
            ..subtitleStrokeWidth = val
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateOpacity(double val) {
          plPlayerController
            ..subtitleBgOpacity = val.toPrecision(2)
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateBottomPadding(double val) {
          plPlayerController
            ..subtitlePaddingB = val.round()
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateHorizontalPadding(double val) {
          plPlayerController
            ..subtitlePaddingH = val.round()
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateFontScaleFS(double val) {
          plPlayerController
            ..subtitleFontScaleFS = val
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateFontScale(double val) {
          plPlayerController
            ..subtitleFontScale = val
            ..updateSubtitleStyle();
          setState(() {});
        }

        void updateFontWeight(double val) {
          plPlayerController
            ..subtitleFontWeight = val.toInt()
            ..updateSubtitleStyle();
          setState(() {});
        }

        return Padding(
          padding: const EdgeInsets.all(12),
          child: Material(
            clipBehavior: Clip.hardEdge,
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(
                    height: 45,
                    child: Center(child: Text(',
  'general.],};}}//app端短信验证码登录staticfutur': '],
      };
    }
  }

  // app端短信验证码登录
  static Future loginBySms({
    required String captchaKey,
    required String tel,
    required String code,
    required Object cid,
    required String key,
  }) async {
    dynamic publicKey = RSAKeyParser().parse(key);
    Map<String, Object> data = {
      ',
  'general.],};}}//密码登录时风控验证手机staticfutur': '],
      };
    }
  }

  // 密码登录时风控验证手机
  static Future safeCenterGetInfo({
    required String tmpCode,
  }) async {
    final res = await Request().get(
      Api.safeCenterGetInfo,
      queryParameters: {
        ',
  'general.],};}}//风控验证手机前的极验验证码staticfut': '],
      };
    }
  }

  // 风控验证手机前的极验验证码
  static Future preCapture() async {
    final res = await Request().post(Api.preCapture);

    if (res.data[',
  'general.],};}}//风控验证手机：发送短信验证码staticfu': '],
      };
    }
  }

  // 风控验证手机：发送短信验证码
  static Future safeCenterSmsCode({
    String? smsType,
    required String tmpCode,
    String? geeChallenge,
    String? geeSeccode,
    String? geeValidate,
    String? recaptchaToken,
    required String refererUrl,
  }) async {
    Map<String, String> data = {
      ',
  'general.],};}}//风控验证手机：提交短信验证码staticfu': '],
      };
    }
  }

  // 风控验证手机：提交短信验证码
  static Future safeCenterSmsVerify({
    String? type,
    required String code,
    required String tmpCode,
    required String requestId,
    required String source,
    required String captchaKey,
    required String refererUrl,
  }) async {
    Map<String, String> data = {
      ',
  'general.],};}}//风控验证手机：用oauthcode换回acc': '],
      };
    }
  }

  // 风控验证手机：用oauthCode换回accessToken
  static Future oauth2AccessToken({
    required String code,
  }) async {
    final Map<String, String> data = {
      ',
  'general.].tostring;returnconsterrornul': '].toString());
      return const Error(null);
    }
  }

  // 获取用户凭证 失效
  // static Future thirdLogin() async {
  //   final res = await Request().get(
  //     ',
  'general.];//loginfailedbreak;}}//}}//短': ']);
          // login failed
          break;
      }
    }
    // }
  }

  // 短信验证码登录
  Future<void> loginBySmsCode() async {
    if (telTextController.text.isEmpty) {
      SmartDialog.showToast(',
  'general.];intbvindex=bytes.length-1;in': '];
    int bvIndex = bytes.length - 1;
    int tmp = (MAX_AID | aid) ^ XOR_CODE;
    while (tmp > 0) {
      bytes[bvIndex--] = data[tmp % BASE];
      tmp ~/= BASE;
    }

    swap(bytes, 3, 9);
    swap(bytes, 4, 7);

    return bytes.join();
  }

  /// bv转av
  static int bv2av(String bvid) {
    final bvidArr = bvid.codeUnits.sublist(3);

    swap(bvidArr, 0, 6);
    swap(bvidArr, 1, 4);

    final tmp = bvidArr.fold(0, (pre, char) => pre * BASE + invData[char]!);
    return (tmp & MASK_CODE) ^ XOR_CODE;
  }

  // 匹配
  static AvBvRes matchAvorBv({String? input}) {
    if (input == null || input.isEmpty) {
      return const (av: null, bv: null);
    }
    String? bvid = bvRegex.firstMatch(input)?.group(0);

    late String? aid = avRegex.firstMatch(input)?.group(1);

    if (bvid != null) {
      return (av: null, bv: bvid);
    } else if (aid != null) {
      return (av: int.parse(aid), bv: null);
    }
    return const (av: null, bv: null);
  }

  static String genBuvid3() {
    return ',
  'general.];latefinalvideodetailcontroll': '];

  late final VideoDetailController videoDetailController;
  late final VideoReplyController _videoReplyController;
  PlPlayerController? plPlayerController;

  // intro ctr
  late final CommonIntroController introController =
      videoDetailController.isFileSource
      ? localIntroController
      : videoDetailController.isUgc
      ? ugcIntroController
      : pgcIntroController;
  late final UgcIntroController ugcIntroController;
  late final PgcIntroController pgcIntroController;
  late final LocalIntroController localIntroController;

  bool get autoExitFullscreen =>
      videoDetailController.plPlayerController.autoExitFullscreen;

  bool get autoPlayEnable =>
      videoDetailController.plPlayerController.autoPlayEnable;

  bool get enableVerticalExpand =>
      videoDetailController.plPlayerController.enableVerticalExpand;

  bool get pipNoDanmaku =>
      videoDetailController.plPlayerController.pipNoDanmaku;

  bool isShowing = true;

  bool get isFullScreen =>
      videoDetailController.plPlayerController.isFullScreen.value;

  bool get _shouldShowSeasonPanel {
    if (videoDetailController.isFileSource ||
        isPortrait ||
        !videoDetailController.isUgc) {
      return false;
    }
    late final videoDetail = ugcIntroController.videoDetail.value;
    return videoDetailController.plPlayerController.horizontalSeasonPanel &&
        (videoDetail.ugcSeason != null ||
            ((videoDetail.pages?.length ?? 0) > 1));
  }

  final videoReplyPanelKey = GlobalKey();
  final videoRelatedKey = GlobalKey();
  final videoIntroKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    PlPlayerController.setPlayCallBack(playCallBack);
    videoDetailController = Get.put(VideoDetailController(), tag: heroTag);

    if (videoDetailController.removeSafeArea) {
      hideSystemBar();
    }

    if (videoDetailController.showReply) {
      _videoReplyController = Get.put(
        VideoReplyController(
          aid: videoDetailController.aid,
          videoType: videoDetailController.videoType,
          heroTag: heroTag,
        ),
        tag: heroTag,
      );
    }

    if (videoDetailController.isFileSource) {
      localIntroController = Get.put(LocalIntroController(), tag: heroTag);
    } else if (videoDetailController.isUgc) {
      ugcIntroController = Get.put(UgcIntroController(), tag: heroTag);
    } else {
      pgcIntroController = Get.put(PgcIntroController(), tag: heroTag);
    }

    videoSourceInit();

    addObserverMobile(this);
  }

  // 获取视频资源，初始化播放器
  void videoSourceInit() {
    videoDetailController.queryVideoUrl(autoFullScreenFlag: true);
    if (videoDetailController.autoPlay) {
      plPlayerController = videoDetailController.plPlayerController;
      _bindPipSkipCallbacks();
      plPlayerController!
        ..addStatusLister(playerListener)
        ..addPositionListener(positionListener);
    }
  }

  void positionListener(Duration position) {
    videoDetailController.playedTime = position;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final isResume = state == .resumed;
    final ctr = videoDetailController.plPlayerController..visible = isResume;
    if (isResume) {
      if (!ctr.showDanmaku) {
        introController.startTimer();
        ctr.showDanmaku = true;
      }
    } else if (state == .paused) {
      introController.cancelTimer();
      ctr.showDanmaku = false;
    }
  }

  Future<void>? playCallBack() {
    if (!isShowing) {
      plPlayerController
        ?..addStatusLister(playerListener)
        ..addPositionListener(positionListener);
    }
    _bindPipSkipCallbacks();
    return plPlayerController?.play();
  }

  void _bindPipSkipCallbacks() {
    final controller = plPlayerController;
    if (controller == null) return;
    controller
      ..onPipSkipPrevious = () async {
        introController.prevPlay();
      }
      ..onPipSkipNext = () async {
        introController.nextPlay();
      };
    videoPlayerServiceHandler
      ?..onSkipToPrevious = controller.onPipSkipPrevious
      ..onSkipToNext = controller.onPipSkipNext;
  }

  // 播放器状态监听
  Future<void> playerListener(PlayerStatus status) async {
    final isPlaying = status.isPlaying;
    try {
      if (videoDetailController.scrollCtr.hasClients) {
        if (isPlaying) {
          if (!videoDetailController.isExpanding &&
              videoDetailController.scrollCtr.offset != 0 &&
              !videoDetailController.animationController.isAnimating) {
            videoDetailController.isExpanding = true;
            videoDetailController.animationController.forward(
              from:
                  1 -
                  videoDetailController.scrollCtr.offset /
                      videoDetailController.videoHeight,
            );
          } else {
            videoDetailController.refreshPage();
          }
        } else {
          videoDetailController.refreshPage();
        }
      }
    } catch (e) {
      if (kDebugMode) debugPrint(',
  'general.];stat=rcmdstat.fromjsonjson;/': '];
    stat = RcmdStat.fromJson(json);
    // 改用player_args中的duration作为原始数据（秒数）
    duration = json[',
  'general.];super.oninit;ifispgc{ifislog': '];

    super.onInit();

    if (isPgc) {
      if (isLogin) {
        queryIsFollowed();
        if (epId != null) {
          queryPgcLikeCoinFav();
        }
      }
      queryVideoTags();
    }
  }

  // 获取点赞/投币/收藏状态
  Future<void> queryPgcLikeCoinFav() async {
    final result = await VideoHttp.pgcLikeCoinFav(epId: epId!);
    if (result case Success(:final response)) {
      final hasLike = response.like == 1;
      final hasFav = response.favorite == 1;
      late final stat = pgcItem.stat;
      if (hasLike) {
        stat?.like = max(1, stat.like);
      }
      if (hasFav) {
        stat?.favorite = max(1, stat.favorite);
      }
      this.hasLike.value = hasLike;
      coinNum.value = response.coinNumber!;
      this.hasFav.value = hasFav;
    } else {
      result.toast();
    }
  }

  // （取消）点赞
  @override
  Future<void> actionLikeVideo() async {
    if (!isLogin) {
      SmartDialog.showToast(',
  'general.];}//font_level映射处理：//': '];
  }

  // font_level 映射处理：
  //   ',
  'general.];}}//app端验证码future<void>sends': ']);
    }
  }

  // app端验证码
  Future<void> sendSmsCode() async {
    if (telTextController.text.isEmpty) {
      SmartDialog.showToast(',
  'general.];}}//pgcseason排行staticfuture<': ']);
    }
  }

  // pgc season 排行
  static Future<LoadingState<List<PgcRankItemModel>?>> pgcSeasonRankList({
    int day = 3,
    required int seasonType,
  }) async {
    final res = await Request().get(
      Api.pgcSeasonRank,
      queryParameters: await WbiSign.makSign({
        ',
  'general.];}}//pgc排行staticfuture<loadin': ']);
    }
  }

  // pgc 排行
  static Future<LoadingState<List<PgcRankItemModel>?>> pgcRankList({
    int day = 3,
    required int seasonType,
  }) async {
    final res = await Request().get(
      Api.pgcRank,
      queryParameters: await WbiSign.makSign({
        ',
  'general.];}}//一键三连pgcstaticfuture<load': ']);
    }
  }

  // 一键三连 pgc
  static Future<LoadingState<PgcTriple>> pgcTriple({
    required Object epId,
    Object? seasonId,
  }) async {
    final res = await Request().post(
      Api.pgcTriple,
      data: {',
  'general.];}}//一键三连staticfuture<loading': ']);
    }
  }

  // 一键三连
  static Future<LoadingState<UgcTriple>> ugcTriple({
    required String bvid,
  }) async {
    final res = await Request().post(
      Api.ugcTriple,
      data: {
        ',
  'general.];}}//删除历史记录staticfuture<loadi': ']);
    }
  }

  // 删除历史记录
  static Future<LoadingState<void>> delHistory(
    String kid, {
    Account? account,
  }) async {
    account ??= Accounts.history;
    final res = await Request().post(
      Api.delHistory,
      data: {
        ',
  'general.];}}//动态点赞//staticfuturelikedy': ']);
    }
  }

  // 动态点赞
  // static Future likeDynamic({
  //   required String? dynamicId,
  //   required int? up,
  // }) async {
  //   final res = await Request().post(
  //     Api.likeDynamic,
  //     queryParameters: {
  //       ',
  'general.];}}//动态状态转发、评论、点赞classmodules': ']);
  }
}

// 动态状态 转发、评论、点赞
class ModuleStatModel {
  ModuleStatModel({
    this.comment,
    this.forward,
    this.like,
    this.favorite,
  });

  DynamicStat? comment;
  DynamicStat? forward;
  DynamicStat? like;
  DynamicStat? favorite;

  ModuleStatModel.fromJson(Map<String, dynamic> json) {
    comment = json[',
  'general.];}}//单个动态classdynamicitemmode': ']);
  }
}

// 单个动态
class DynamicItemModel {
  Basic? basic;
  dynamic idStr;
  late ItemModulesModel modules;

  DynamicItemModel? orig;
  String? type;
  bool? visible;

  late bool linkFolded = false;

  // opus
  Fallback? fallback;

  DynamicItemModel.fromJson(Map<String, dynamic> json) {
    if (json[',
  'general.];}}//单个动态详情-作者信息classmoduleau': '];
  }
}

// 单个动态详情 - 作者信息
class ModuleAuthorModel extends Avatar {
  String? pubAction;
  String? pubTime;
  int? pubTs;
  String? type;
  Decorate? decorate;
  bool? isTop;
  String? badgeText;

  ModuleAuthorModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    if (json[',
  'general.];}}//发表评论replyadd//typenum评论区': ']);
    }
  }

  // 发表评论 replyAdd

  // type	num	评论区类型代码	必要	类型代码见表
  // oid	num	目标评论区id	必要
  // root	num	根评论rpid	非必要	二级评论以上使用
  // parent	num	父评论rpid	非必要	二级评论同根评论id 大于二级评论为要回复的评论id
  // message	str	发送评论内容	必要	最大1000字符
  // plat	num	发送平台标识	非必要	1：web端 2：安卓客户端  3：ios客户端  4：wp客户端
  static Future<LoadingState<ReplyInfo?>> replyAdd({
    required int type,
    required int oid,
    required String message,
    int? root,
    int? parent,
    List? pictures,
    bool syncToDynamic = false,
    Map<String, int>? atNameToMid,
  }) async {
    final data = {
      ',
  'general.];}}//取消订阅staticfuture<loading': ']);
    }
  }

  // 取消订阅
  static Future<LoadingState<void>> cancelSub({
    required int id,
    required int type,
  }) async {
    final res = type == 11
        ? await Request().post(
            Api.unfavFolder,
            data: {
              ',
  'general.];}}//取消追番staticfuture<loading': ']);
    }
  }

  // 取消追番
  static Future<LoadingState<String>> pgcDel({int? seasonId}) async {
    final res = await Request().post(
      Api.pgcDel,
      data: {',
  'general.];}}//我的订阅staticfuture<loading': ']);
    }
  }

  // 我的订阅
  static Future<LoadingState<SubData>> userSubFolder({
    required int mid,
    required int pn,
    required int ps,
  }) async {
    final res = await Request().get(
      Api.userSubFolder,
      queryParameters: {
        ',
  'general.];}}//投币staticfuture<loadingst': ']);
    }
  }

  // 投币
  static Future<LoadingState<void>> coinVideo({
    required String bvid,
    required int multiply,
    int selectLike = 0,
  }) async {
    final res = await Request().post(
      Api.coinVideo,
      data: {
        ',
  'general.];}}//推送不感兴趣反馈staticfuture<loa': ']);
    }
  }

  // 推送不感兴趣反馈
  static Future<LoadingState<void>> feedDislike({
    required String goto,
    required int id,
    int? reasonId,
    int? feedbackId,
  }) async {
    if (Accounts.get(AccountType.recommend).accessKey.isNullOrEmpty) {
      return Error(',
  'general.];}}//推送不感兴趣取消staticfuture<loa': ']);
    }
  }

  // 推送不感兴趣取消
  static Future<LoadingState<void>> feedDislikeCancel({
    required String goto,
    required int id,
    int? reasonId,
    int? feedbackId,
  }) async {
    if (Accounts.get(AccountType.recommend).accessKey.isNullOrEmpty) {
      return Error(',
  'general.];}}//搜索followstaticfuture<loa': ']);
    }
  }

  // 搜索follow
  static Future<LoadingState<FollowData>> getfollowSearch({
    required int mid,
    required int ps,
    required int pn,
    required String name,
  }) async {
    final data = {
      ',
  'general.];}}//搜索历史记录staticfuture<loadi': ']);
    }
  }

  // 搜索历史记录
  static Future<LoadingState<HistoryData>> searchHistory({
    required int pn,
    required String keyword,
    Account? account,
  }) async {
    final res = await Request().get(
      Api.searchHistory,
      queryParameters: {
        ',
  'general.];}}//收藏夹staticfuture<loadings': ']);
    }
  }

  // 收藏夹
  static Future<LoadingState<FavFolderData>> userfavFolder({
    required int pn,
    required int ps,
    required dynamic mid,
  }) async {
    final res = await Request().get(
      Api.userFavFolder,
      queryParameters: {
        ',
  'general.];}}//暂停观看历史staticfuture<loadi': ']);
    }
  }

  // 暂停观看历史
  static Future<LoadingState<void>> pauseHistory(
    bool switchStatus, {
    Account? account,
  }) async {
    // 暂停switchStatus传true 否则false
    account ??= Accounts.history;
    final res = await Request().post(
      Api.pauseHistory,
      data: {
        ',
  'general.];}}//最热视频staticfuture<loading': ']);
    }
  }

  // 最热视频
  static Future<LoadingState<List<HotVideoItemModel>>> hotVideoList({
    required int pn,
    required int ps,
  }) async {
    final res = await Request().get(
      Api.hotList,
      queryParameters: {',
  'general.];}}//查看视频同时在看人数staticfuture<l': ']);
    }
  }

  // 查看视频同时在看人数
  static Future<LoadingState<String>> onlineTotal({
    int? aid,
    String? bvid,
    required int cid,
  }) async {
    assert(aid != null || bvid != null);
    final res = await Request().get(
      Api.onlineTotal,
      queryParameters: {',
  'general.];}}//查看视频被收藏在哪个文件夹staticfutur': ']);
    }
  }

  // 查看视频被收藏在哪个文件夹
  static Future<LoadingState<FavFolderData>> videoInFolder({
    dynamic mid,
    dynamic rid,
    dynamic type,
  }) async {
    final res = await Request().get(
      Api.favFolder,
      queryParameters: {
        ',
  'general.];}}//查询分组staticfuture<loading': ']);
    }
  }

  // 查询分组
  static Future<LoadingState<List<MemberTagItemModel>>> followUpTags() async {
    final res = await Request().get(Api.followUpTag);
    if (res.data[',
  'general.];}}//消息标记已读staticfuture<loadi': ']);
    }
  }

  // 消息标记已读
  static Future<LoadingState<void>> ackSessionMsg({
    required int talkerId,
    required int ackSeqno,
  }) async {
    String csrf = Accounts.main.csrf;
    final params = await WbiSign.makSign({
      ',
  'general.];}}//添加额外的loginstate变量模拟未登录状态': ']);
    }
  }

  // 添加额外的loginState变量模拟未登录状态
  static Future<LoadingState<List<RcmdVideoItemAppModel>>> rcmdVideoListApp({
    required int freshIdx,
  }) async {
    final params = {
      ',
  'general.];}}//清空历史记录staticfuture<loadi': ']);
    }
  }

  // 清空历史记录
  static Future<LoadingState<void>> clearHistory({Account? account}) async {
    account ??= Accounts.history;
    final res = await Request().post(
      Api.clearHistory,
      data: {
        ',
  'general.];}}//用户动态pragma': ']);
    }
  }

  // 用户动态
  @pragma(',
  'general.];}}//相关视频staticfuture<loading': ']);
    }
  }

  // 相关视频
  static Future<LoadingState<List<HotVideoItemModel>?>> relatedVideoList({
    required String bvid,
  }) async {
    final res = await Request().get(
      Api.relatedList,
      queryParameters: {',
  'general.];}}//稍后再看staticfuture<loading': ']);
    }
  }

  // 稍后再看
  static Future<LoadingState<void>> toViewLater({
    String? bvid,
    Object? aid,
  }) async {
    assert(aid != null || bvid != null);
    final res = await Request().post(
      Api.toViewLater,
      data: {
        ',
  'general.];}}//获取up播放数、点赞数staticfuture<': ']);
    }
  }

  // 获取up播放数、点赞数
  static Future<LoadingState<Map>> memberView({required int mid}) async {
    final res = await Request().get(
      Api.getMemberViewApi,
      queryParameters: {',
  'general.];}}//获取up置顶staticfuture<loadi': ']);
    }
  }

  // 获取up置顶
  static Future<LoadingState<List<MemberTagItemModel>?>> getTopVideo() async {
    final res = await Request().get(Api.getTopVideoApi);
    if (res.data[',
  'general.];}}//获取某分组下的upstaticfuture<lo': ']);
    }
  }

  // 获取某分组下的up
  static Future<LoadingState<FollowData>> followUpGroup({
    int? mid,
    int? tagid,
    int? pn,
    int ps = 20,
  }) async {
    final res = await Request().get(
      Api.followUpGroup,
      queryParameters: {
        ',
  'general.];}}//获取点赞/投币/收藏状态pgcstaticfut': ']);
    }
  }

  // 获取点赞/投币/收藏状态 pgc
  static Future<LoadingState<PgcLCF>> pgcLikeCoinFav({
    required Object epId,
  }) async {
    final res = await Request().get(
      Api.pgcLikeCoinFav,
      queryParameters: {',
  'general.];}}//观看历史staticfuture<loading': ']);
    }
  }

  // 观看历史
  static Future<LoadingState<HistoryData>> historyList({
    required String type,
    int? max,
    int? viewAt,
    Account? account,
  }) async {
    final res = await Request().get(
      Api.historyList,
      queryParameters: {
        ',
  'general.];}}//观看历史暂停状态staticfuture<loa': ']);
    }
  }

  // 观看历史暂停状态
  static Future<LoadingState<bool>> historyStatus({Account? account}) async {
    final res = await Request().get(
      Api.historyStatus,
      options: Options(extra: {',
  'general.];}}//视频流pragma': ']);
    }
  }

  // 视频流
  @pragma(',
  'general.];}}//设置分组staticfuture<loading': ']);
    }
  }

  // 设置分组
  static Future<LoadingState<void>> addUsers(String fids, String tagids) async {
    final res = await Request().post(
      Api.addUsers,
      queryParameters: {
        ',
  'general.];}}//评论点赞staticfuture<loading': ']);
    }
  }

  // 评论点赞
  static Future<LoadingState<void>> likeReply({
    required int type,
    required int oid,
    required int rpid,
    required int action,
  }) async {
    final res = await Request().post(
      Api.likeReply,
      data: {
        ',
  'general.];}}//（取消）收藏staticfuture<loadi': ']);
    }
  }

  // （取消）收藏
  static Future<LoadingState<void>> unfavAll({
    required Object rid,
    required Object type,
  }) async {
    final res = await Request().post(
      Api.unfavAll,
      data: {
        ',
  'general.];}}//（取消）点赞staticfuture<loadi': ']);
    }
  }

  // （取消）点赞
  static Future<LoadingState<String>> likeVideo({
    required String bvid,
    required bool type,
  }) async {
    final res = await Request().post(
      Api.likeVideo,
      data: {',
  'general.];}}//（取消）点踩staticfuture<loadi': ']);
    }
  }

  // （取消）点踩
  static Future<LoadingState<void>> dislikeVideo({
    required String bvid,
    required bool type,
  }) async {
    if (Accounts.main.accessKey.isNullOrEmpty) {
      return Error(',
  'general.];}};};}}void_handletabchange{': '];
          }
        });
      });
    }
  }

  void _handleTabChange() {
    if (tabController.index == 2) {
      if (qrCodeTimer == null || !qrCodeTimer!.isActive) {
        refreshQRCode();
      }
    }
  }

  // 申请极验验证码
  void getCaptcha(
    String geeGt,
    String geeChallenge,
    VoidCallback onSuccess,
  ) {
    GeetestWebviewDialog.geetest(geeGt, geeChallenge).then((res) {
      if (res is Map) {
        captchaData
          ..validate = res[',
  'general.];}}staticfuture<loadingstate<': ']);
    }
  }

  static Future<LoadingState<String?>> danmakuEditState({
    required int oid,
    required Iterable<int> ids,
    required int state,
  }) async {
    /// 0: 取消删除
    /// 1：删除弹幕
    /// 2：弹幕保护
    /// 3：取消保护
    final data = {
      ',
  'general.];}}}//动态状态classdynamicstat{dy': ']);
    }
  }
}

// 动态状态
class DynamicStat {
  DynamicStat({
    this.count,
    this.status,
  });

  int? count;
  bool? status;

  DynamicStat.fromJson(Map<String, dynamic> json) {
    if (safeToInt(json[',
  'general.];}}}returnconsterrornull;}//分': ']));
        }
      }
    }
    return const Error(null);
  }

  // 分类搜索
  @pragma(',
  'general.]==sourcetype.watchlater;query': '] == SourceType.watchLater;

    queryVideoIntro();
    startTimer();
  }

  void startTimer() {
    if (isShowOnlineTotal) {
      queryOnlineTotal();
      timer ??= Timer.periodic(const Duration(seconds: 10), (Timer timer) {
        queryOnlineTotal();
      });
    }
  }

  void cancelTimer() {
    timer?.cancel();
    timer = null;
  }

  // 查看同时在看人数
  Future<void> queryOnlineTotal() async {
    if (!isShowOnlineTotal) {
      return;
    }
    final result = await VideoHttp.onlineTotal(
      aid: IdUtils.bv2av(bvid),
      bvid: bvid,
      cid: cid.value,
    );
    if (result case Success(:final response)) {
      total.value = response;
    }
  }

  @override
  void onClose() {
    cancelTimer();
    super.onClose();
  }

  @override
  Future<void> onPayCoin(int coin, bool coinWithLike) async {
    final stat = getStat();
    if (stat == null) {
      return;
    }
    final res = await VideoHttp.coinVideo(
      bvid: bvid,
      multiply: coin,
      selectLike: coinWithLike ? 1 : 0,
    );
    if (res.isSuccess) {
      SmartDialog.showToast(',
  'general.]=autosync;}finalplayer=awaitp': '] = autosync;
    }

    final player = await Player.create(
      configuration: PlayerConfiguration(
        logLevel: kDebugMode ? .warn : .error,
        options: opt,
      ),
    );

    assert(_videoController == null);

    _videoController = await VideoController.create(
      player,
      configuration: VideoControllerConfiguration(
        enableHardwareAcceleration: hwdec != null,
        androidAttachSurfaceAfterVideoParameters: false,
        hwdec: hwdec,
      ),
    );

    player.setMediaHeader(userAgent: BrowserUa.pc, referer: HttpString.baseUrl);

    _startListeners(player);

    return player;
  }

  Map<String, String>? _buffer;
  Map<String, String> get buffer =>
      _buffer ??= Pref.initBuffer(_playbackSpeed.value);
  Map<String, String>? _liveBuffer;
  Map<String, String> get liveBuffer => _liveBuffer ??= Pref.initLiveBuffer();

  // 配置播放器
  Future<void> _createVideoController(
    DataSource dataSource,
    Duration? seekTo,
    Volume? volume,
  ) async {
    isBuffering.value = false;
    buffered.value = Duration.zero;
    _heartDuration = 0;
    position = Duration.zero;
    // 初始化时清空弹幕，防止上次重叠
    danmakuController?.clear();

    var player = _videoPlayerController;

    if (player == null) {
      player = await _initPlayer();
      if (_playerCount == 0) {
        _removeListeners();
        player.dispose();
        player = null;
        _videoController = null;
        return;
      }
      _videoPlayerController = player;
      if (isAnim && superResolutionType.value != .disable) {
        await setShader();
      }
    }

    final Map<String, String> extras = {};

    if (dataSource is FileSource) {
      extras[',
  'general.]=datetime.now.millisecondssin': '] = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    // 按照 key 重排参数
    final List<String> keys = params.keys.toList()..sort();
    final queryStr = keys
        .map(
          (i) =>
              ',
  'general.]=md5.convertutf8.encode_makeq': '] = md5
        .convert(utf8.encode(_makeQueryFromParametersDefault(sorted) + appsec))
        .toString(); // 获取MD5哈希值
  }

  /// from [Uri]
  static String _makeQueryFromParametersDefault(
    List<MapEntry<String, dynamic /*String?|Iterable<String>*/>>
    queryParameters,
  ) {
    final result = StringBuffer();
    var separator = ',
  'general.]=md5.convertutf8.encodequerys': '] = md5
        .convert(utf8.encode(queryStr + mixinKey))
        .toString(); // 计算 w_rid
  }

  static Future<String> _getWbiKeys() async {
    final resp = await Request().get(Api.userInfo);
    try {
      final wbiUrls = resp.data[',
  'general.]??0;}}classvoteinfoextendssim': ']) ?? 0;
  }
}

class VoteInfo extends SimpleVoteInfo {
  String? title;
  int? ctime;
  List<int>? myVotes;
  late List<Option> options;
  int? optionsCnt;
  int? voterLevel;
  String? face;
  String? name;
  // 0 文字, 1 图片
  int? type;
  int? votePublisher;
  int? duration;
  int? onlyFansLevel;

  VoteInfo({
    super.choiceCnt,
    super.defaultShare,
    super.desc,
    super.endTime,
    super.status,
    super.uid,
    super.voteId,
    super.joinNum = 0,
    this.title,
    this.ctime,
    this.myVotes,
    List<Option>? options,
    this.optionsCnt,
    this.voterLevel,
    this.face,
    this.name,
    this.type,
    this.votePublisher,
    this.duration,
    this.onlyFansLevel,
  }) : options = options ?? <Option>[];

  VoteInfo.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    title = json[',
  'general.]??=0<_count&&err.erroris!tran': '] ??= 0) < _count &&
              err.error
                  is! TransportConnectionException // 网络中断, 此时请求可能已经被服务器所接收
                  ) {
            Future.delayed(
              Duration(
                milliseconds: ++err.requestOptions.extra[',
  'general.]??=httpstring.baseurl;//app端不': '] ??= HttpString.baseUrl;

    // app端不需要管理cookie
    if (isApp) {
      // if (kDebugMode) debugPrint(',
  'general.]aslist??.fromcast<string>;}}c': '] as List?)?.fromCast<String>();
  }
}

class Volume {
  Volume({
    required this.measuredI,
    required this.measuredLra,
    required this.measuredTp,
    required this.measuredThreshold,
    required this.targetOffset,
    required this.targetI,
    required this.targetTp,
    // required this.multiSceneArgs,
  });

  final num measuredI;
  final num measuredLra;
  final num measuredTp;
  final num measuredThreshold;
  final num targetOffset;
  final num targetI;
  final num targetTp;

  // final MultiSceneArgs? multiSceneArgs;

  // FFmpeg loudnorm 滤镜的标准有效范围（https://ffmpeg.org/ffmpeg-filters.html#loudnorm）
  static const double minTpValue = -9.0;
  static const double maxTpValue = 0.0;

  factory Volume.fromJson(Map<String, dynamic> json) {
    return Volume(
      measuredI: json[',
  'general.]aslist??.mape=>videotagitem.f': '] as List?)
            ?.map((e) => VideoTagItem.fromJson(e))
            .toList(),
      );
    } else {
      return const Error(null);
    }
  }

  // 稍后再看列表
  static Future<LoadingState<MediaListData>> getMediaList({
    required Object type,
    required Object bizId,
    required int ps,
    dynamic oid,
    int? otype,
    bool withCurrent = false,
    bool desc = true,
    dynamic sortField = 1,
    bool direction = false,
  }) async {
    final res = await Request().get(
      Api.mediaList,
      queryParameters: {
        ',
  'general.]{//屏蔽推广和拉黑用户ifi[': ']) {
        // 屏蔽推广和拉黑用户
        if (i[',
  'general.]{//过滤掉live与ad，以及拉黑用户ifi[': ']) {
        //过滤掉live与ad，以及拉黑用户
        if (i[',
  'general.]{returnfalse;}returntrue;}ret': '])) {
        return false;
      }
      return true;
    }
    return false;
  }

  // 视频排行
  static Future<LoadingState<List<HotVideoItemModel>>> getRankVideoList(
    int rid,
  ) async {
    final res = await Request().get(
      Api.getRankApi,
      queryParameters: await WbiSign.makSign({',
  'general.]};//}//}//app端密码登录staticfutur': ']};
  //   }
  // }

  // app端密码登录
  static Future loginByPwd({
    required String username,
    required String password,
    required String key,
    required String salt,
    String? geeChallenge,
    String? geeSeccode,
    String? geeValidate,
    String? recaptchaToken,
  }) async {
    dynamic publicKey = RSAKeyParser().parse(key);
    String passwordEncrypted = Encrypter(
      RSA(publicKey: publicKey),
    ).encrypt(salt + password).base64;

    Map<String, String> data = {
      ',
  'general.]};//}//}//动态点赞staticfuture<lo': ']};
  //   }
  // }

  // 动态点赞
  static Future<LoadingState<void>> thumbDynamic({
    required String? dynamicId,
    required int? up,
  }) async {
    final res = await Request().post(
      Api.thumbDynamic,
      queryParameters: {
        ',
  'general.]};}}//获取salt与pubkeystaticfutu': ']};
    }
  }

  // 获取salt与PubKey
  static Future getWebKey() async {
    final res = await Request().get(Api.getWebKey);
    //data: {',
  'general.]};}}else{finalmid=videodetail': ']});
      }
    } else {
      final mid = videoDetail.value.owner?.mid;
      if (mid == null) {
        return;
      }
      final res = await MemberHttp.memberCardInfo(mid: mid);
      if (res case Success(:final response)) {
        userStat.value = response;
      }
    }
  }

  Future<void> queryAllStatus() async {
    final result = await VideoHttp.videoRelation(bvid: bvid);
    if (result case Success(:final response)) {
      late final stat = videoDetail.value.stat;
      if (response.like!) {
        stat?.like = max(1, stat.like);
      }
      if (response.favorite!) {
        stat?.favorite = max(1, stat.favorite);
      }
      hasLike.value = response.like!;
      hasDislike.value = response.dislike!;
      coinNum.value = response.coin!;
      hasFav.value = response.favorite!;
    }
  }

  // 一键三连
  @override
  Future<void> actionTriple() async {
    feedBack();
    if (!isLogin) {
      SmartDialog.showToast(',
  'general.]}\n返回内容：${res[': ']}\n返回内容：${res[',
  'general.]}·直播': ']} · 直播',
  'general.]}，尝试另一个验证码接口': ']}，尝试另一个验证码接口',
  'general.ai处理中，请稍后再试': 'AI处理中，请稍后再试',
  'general.akamai（akamai海外）': 'akamai（Akamai海外）',
  'general.alib（阿里云）': 'alib（阿里云）',
  'general.alio1（阿里云）': 'alio1（阿里云）',
  'general.aliov（阿里云海外）': 'aliov（阿里云海外）',
  'general.ali（阿里云）': 'ali（阿里云）',
  'general.aspath;classpldanmakucontrolle': ' as path;

class PlDanmakuController {
  PlDanmakuController(
    this._cid,
    this._plPlayerController,
    this._isFileSource,
  ) : _mergeDanmaku = _plPlayerController.mergeDanmaku;

  final int _cid;
  final PlPlayerController _plPlayerController;
  final bool _mergeDanmaku;
  final bool _isFileSource;

  late final _isLogin = Accounts.main.isLogin;

  final Map<int, List<DanmakuElem>> _dmSegMap = HashMap();
  // 已请求的段落标记
  late final Set<int> _requestedSeg = HashSet();

  static const int segmentLength = 60 * 6 * 1000;

  void dispose() {
    _dmSegMap.clear();
    _requestedSeg.clear();
  }

  static int calcSegment(int progress) {
    return progress ~/ segmentLength;
  }

  Future<void> queryDanmaku(int segmentIndex) async {
    if (_isFileSource) {
      return;
    }
    if (_requestedSeg.contains(segmentIndex)) {
      return;
    }
    _requestedSeg.add(segmentIndex);
    final res = await DmGrpc.dmSegMobile(
      cid: _cid,
      segmentIndex: segmentIndex + 1,
    );

    if (res case Success(:final response)) {
      if (response.state == 1) {
        _plPlayerController.dmState.add(_cid);
      }
      handleDanmaku(response.elems);
    } else {
      _requestedSeg.remove(segmentIndex);
    }
  }

  void handleDanmaku(List<DanmakuElem> elems) {
    if (elems.isEmpty) return;
    final uniques = HashMap<String, DanmakuElem>();

    final filters = _plPlayerController.filters;
    final danmakuWeight = DanmakuOptions.danmakuWeight;
    final shouldFilter = filters.count != 0;
    for (final element in elems) {
      if (_isLogin) {
        element.isSelf = element.midHash == _plPlayerController.midHash;
      }

      if (!element.isSelf) {
        if (_mergeDanmaku) {
          final elem = uniques[element.content];
          if (elem == null) {
            uniques[element.content] = element..count = 1;
          } else {
            elem.count++;
            continue;
          }
        }

        if (element.weight < danmakuWeight ||
            (shouldFilter && filters.remove(element))) {
          continue;
        }
      }

      final int pos = element.progress ~/ 100; //每0.1秒存储一次
      (_dmSegMap[pos] ??= []).add(element);
    }
  }

  List<DanmakuElem>? getCurrentDanmaku(int progress) {
    if (_isFileSource) {
      initFileDmIfNeeded();
    } else {
      final int segmentIndex = calcSegment(progress);
      if (!_requestedSeg.contains(segmentIndex)) {
        queryDanmaku(segmentIndex);
        return null;
      }
    }
    return _dmSegMap[progress ~/ 100];
  }

  bool _fileDmLoaded = false;

  void initFileDmIfNeeded() {
    if (_fileDmLoaded) return;
    _fileDmLoaded = true;
    _initFileDm();
  }

  @pragma(',
  'general.bilibili热搜': 'bilibili热搜',
  'general.cosb（腾讯云，vod加速类型）': 'cosb（腾讯云，VOD加速类型）',
  'general.coso1（腾讯云）': 'coso1（腾讯云）',
  'general.cosov（腾讯云海外）': 'cosov（腾讯云海外）',
  'general.cos（腾讯云）': 'cos（腾讯云）',
  'general.dynamic_type_pgc_union番剧': 'DYNAMIC_TYPE_PGC_UNION 番剧',
  'general.future<void>prefetchasync{fina': ')
  Future<void> prefetch() async {
    final res = await LiveHttp.liveRoomDmPrefetch(roomId: roomId);
    if (res case Success(:final response)) {
      if (response != null && response.isNotEmpty) {
        messages.addAll(response);
        scrollToBottom();
      }
    } else {
      if (kDebugMode) {
        Utils.reportError(res.toString());
      }
    }
  }

  Future<void> getSuperChatMsg() async {
    final res = await LiveHttp.superChatMsg(roomId);
    if (res.dataOrNull?.list case final list?) {
      superChatMsg.addAll(list);
    }
  }

  void clearSC() {
    superChatMsg.removeWhere((e) => e.expired);
  }

  void startLiveMsg() {
    if (messages.isEmpty) {
      prefetch();
      if (showSuperChat) {
        getSuperChatMsg();
      }
    }
    if (_msgStream != null) {
      return;
    }
    if (dmInfo != null) {
      initDm(dmInfo!);
      return;
    }
    LiveHttp.liveRoomGetDanmakuToken(roomId: roomId).then((res) {
      if (res case Success(:final response)) {
        initDm(dmInfo = response);
      }
    });
  }

  void listener() {
    final userScrollDirection = scrollController.position.userScrollDirection;
    if (userScrollDirection == .forward) {
      disableAutoScroll.value = true;
    } else if (userScrollDirection == .reverse) {
      final pos = scrollController.position;
      if (pos.maxScrollExtent - pos.pixels <= 100 && disableAutoScroll.value) {
        disableAutoScroll.value = false;
        refreshMsgIfNeeded();
      }
    }
  }

  void refreshMsgIfNeeded() {
    if (shouldRefresh) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        messages.refresh();
      });
    }
  }

  @override
  void onClose() {
    closeLiveMsg();
    cancelLikeTimer();
    cancelLiveTimer();
    savedDanmaku?.clear();
    savedDanmaku = null;
    messages.clear();
    if (showSuperChat) {
      superChatMsg.clear();
      fsSC.value = null;
    }
    scrollController
      ..removeListener(listener)
      ..dispose();
    pageController?.dispose();
    danmakuController = null;
    super.onClose();
  }

  // 修改画质
  Future<void>? changeQn(int qn) {
    if (currentQn == qn) {
      return null;
    }
    currentQn = qn;
    currentQnDesc.value =
        LiveQuality.fromCode(currentQn)?.desc ?? currentQn.toString();
    return queryLiveUrl();
  }

  void initDm(LiveDmInfoData info) {
    if (info.hostList.isNullOrEmpty) {
      return;
    }
    _msgStream =
        LiveMessageStream(
            streamToken: info.token,
            roomId: roomId,
            uid: Accounts.heartbeat.mid,
            servers: info.hostList
                .map((host) => ',
  'general.hidesubtitle;classvideodetailc': ' hide Subtitle;

class VideoDetailController extends GetxController
    with GetTickerProviderStateMixin, BlockMixin {
  /// 路由传参
  late final Map args;
  late String bvid;
  late int aid;
  late final RxInt cid;
  int? epId;
  int? seasonId;
  int? pgcType;
  late final String heroTag;
  late final RxString cover;

  // 视频类型 默认投稿视频
  late final VideoType videoType;
  @override
  late final isUgc = videoType == VideoType.ugc;
  VideoType? _actualVideoType;

  // 页面来源 稍后再看 收藏夹
  late bool isPlayAll;
  late SourceType sourceType;
  late BiliDownloadEntryInfo entry;
  late bool isFileSource;
  late bool _mediaDesc = false;
  late final RxList<MediaListItemModel> mediaList = <MediaListItemModel>[].obs;
  late String watchLaterTitle;

  /// tabs相关配置
  late TabController tabCtr;

  // 请求返回的视频信息
  late PlayUrlModel data;
  final RxBool videoState = false.obs;

  /// 播放器配置 画质 音质 解码格式
  final Rxn<VideoQuality> currentVideoQa = Rxn<VideoQuality>();
  AudioQuality? currentAudioQa;
  late VideoDecodeFormatType currentDecodeFormats;

  // 是否开始自动播放 存在多p的情况下，第二p需要为true
  final RxBool _autoPlay = Pref.autoPlayEnable.obs;

  final videoPlayerKey = GlobalKey();
  final childKey = GlobalKey<ScaffoldState>();

  final plPlayerController = PlPlayerController.getInstance()
    ..brightness.value = -1;
  bool get setSystemBrightness => plPlayerController.setSystemBrightness;
  bool get removeSafeArea => plPlayerController.removeSafeArea;
  double get uiScale => plPlayerController.uiScale;

  late VideoItem firstVideo;
  String? videoUrl;
  String? audioUrl;
  Duration? defaultST;
  Duration? playedTime;
  String get playedTimePos {
    final pos = playedTime?.inMilliseconds;
    return pos == null || pos == 0 ? ',
  'general.hk_bcache（bilibili海外）': 'hk_bcache（Bilibili海外）',
  'general.hwb（华为云，融合cdn）': 'hwb（华为云，融合CDN）',
  'general.hwo1（华为云，融合cdn）': 'hwo1（华为云，融合CDN）',
  'general.hwov（华为云海外）': 'hwov（华为云海外）',
  'general.hw（华为云，融合cdn）': 'hw（华为云，融合CDN）',
  'general.showkdebugmode,listequals;clas': ' show kDebugMode, listEquals;

class Request {
  static const _gzipDecoder = GZipDecoder();
  static const _brotliDecoder = BrotliDecoder();

  static final Request _instance = Request._internal();
  static late AccountManager accountManager;
  static final _enableHttp2 = Pref.enableHttp2;
  static late final Dio dio;
  static Dio? _http11Dio;
  static Dio get http11Dio =>
      _http11Dio ??= _enableHttp2 ? _cloneHttp11Dio() : dio;
  factory Request() => _instance;

  /// 设置cookie
  static void setCookie() {
    accountManager = AccountManager();
    dio.interceptors.add(accountManager);
    Accounts.refresh();
    LoginUtils.setWebCookie();

    if (Accounts.main.isLogin) {
      final coin = Pref.userInfoCache?.money;
      if (coin == null) {
        setCoin();
      } else {
        GlobalData().coins = coin;
      }
    }
  }

  static Future<void> setCoin() async {
    final res = await UserHttp.getCoin();
    if (res case Success(:final response)) {
      GlobalData().coins = response;
    }
  }

  static Future<void> buvidActive(Account account) async {
    // 这样线程不安全, 但仍按预期进行
    if (account.activated) return;
    account.activated = true;
    try {
      // final html = await Request().get(Api.dynamicSpmPrefix,
      //     options: Options(extra: {',
  'general.staticarcgetdefault=>_defaulti': ')
  static Arc getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Arc>(create);
  static Arc? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  /// 分 P 数
  @$pb.TagNumber(2)
  $fixnum.Int64 get videos => $_getI64(1);
  @$pb.TagNumber(2)
  set videos($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVideos() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideos() => $_clearField(2);

  /// 分区 ID
  @$pb.TagNumber(3)
  $core.int get typeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set typeId($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeId() => $_clearField(3);

  /// 分区名称
  @$pb.TagNumber(4)
  $core.String get typeName => $_getSZ(3);
  @$pb.TagNumber(4)
  set typeName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTypeName() => $_has(3);
  @$pb.TagNumber(4)
  void clearTypeName() => $_clearField(4);

  /// 是否转载
  ///
  /// - 0: 历史上可能遗留的脏数据
  /// - 1: 原创
  /// - 2: 转载
  @$pb.TagNumber(5)
  $core.int get copyright => $_getIZ(4);
  @$pb.TagNumber(5)
  set copyright($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCopyright() => $_has(4);
  @$pb.TagNumber(5)
  void clearCopyright() => $_clearField(5);

  /// 封面地址
  @$pb.TagNumber(6)
  $core.String get pic => $_getSZ(5);
  @$pb.TagNumber(6)
  set pic($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPic() => $_has(5);
  @$pb.TagNumber(6)
  void clearPic() => $_clearField(6);

  /// 标题
  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => $_clearField(7);

  /// 发布时间戳
  @$pb.TagNumber(8)
  $fixnum.Int64 get pubdate => $_getI64(7);
  @$pb.TagNumber(8)
  set pubdate($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPubdate() => $_has(7);
  @$pb.TagNumber(8)
  void clearPubdate() => $_clearField(8);

  /// 提交时间戳
  @$pb.TagNumber(9)
  $fixnum.Int64 get ctime => $_getI64(8);
  @$pb.TagNumber(9)
  set ctime($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCtime() => $_has(8);
  @$pb.TagNumber(9)
  void clearCtime() => $_clearField(9);

  /// 简介
  @$pb.TagNumber(10)
  $core.String get desc => $_getSZ(9);
  @$pb.TagNumber(10)
  set desc($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDesc() => $_has(9);
  @$pb.TagNumber(10)
  void clearDesc() => $_clearField(10);

  /// 状态 (>= 0 为正常可见状态)
  @$pb.TagNumber(11)
  $core.int get state => $_getIZ(10);
  @$pb.TagNumber(11)
  set state($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasState() => $_has(10);
  @$pb.TagNumber(11)
  void clearState() => $_clearField(11);

  /// 是否可访问
  ///
  /// - 0: 公开
  /// - 10000: 仅登录用户
  @$pb.TagNumber(12)
  $core.int get access => $_getIZ(11);
  @$pb.TagNumber(12)
  set access($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAccess() => $_has(11);
  @$pb.TagNumber(12)
  void clearAccess() => $_clearField(12);

  /// 属性
  @$pb.TagNumber(13)
  $core.int get attribute => $_getIZ(12);
  @$pb.TagNumber(13)
  set attribute($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAttribute() => $_has(12);
  @$pb.TagNumber(13)
  void clearAttribute() => $_clearField(13);

  /// Deprecated
  @$pb.TagNumber(14)
  $core.String get tag => $_getSZ(13);
  @$pb.TagNumber(14)
  set tag($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasTag() => $_has(13);
  @$pb.TagNumber(14)
  void clearTag() => $_clearField(14);

  /// Deprecated
  @$pb.TagNumber(15)
  $pb.PbList<$core.String> get tags => $_getList(14);

  /// 所有分 P 加起来的总时长 (seconds)
  @$pb.TagNumber(16)
  $fixnum.Int64 get duration => $_getI64(15);
  @$pb.TagNumber(16)
  set duration($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasDuration() => $_has(15);
  @$pb.TagNumber(16)
  void clearDuration() => $_clearField(16);

  /// 参与的活动 id
  @$pb.TagNumber(17)
  $fixnum.Int64 get missionId => $_getI64(16);
  @$pb.TagNumber(17)
  set missionId($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasMissionId() => $_has(16);
  @$pb.TagNumber(17)
  void clearMissionId() => $_clearField(17);

  /// 参与的商单 id
  @$pb.TagNumber(18)
  $fixnum.Int64 get orderId => $_getI64(17);
  @$pb.TagNumber(18)
  set orderId($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(18)
  $core.bool hasOrderId() => $_has(17);
  @$pb.TagNumber(18)
  void clearOrderId() => $_clearField(18);

  /// 强制跳转地址
  @$pb.TagNumber(19)
  $core.String get redirectUrl => $_getSZ(18);
  @$pb.TagNumber(19)
  set redirectUrl($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasRedirectUrl() => $_has(18);
  @$pb.TagNumber(19)
  void clearRedirectUrl() => $_clearField(19);

  @$pb.TagNumber(20)
  $fixnum.Int64 get forward => $_getI64(19);
  @$pb.TagNumber(20)
  set forward($fixnum.Int64 value) => $_setInt64(19, value);
  @$pb.TagNumber(20)
  $core.bool hasForward() => $_has(19);
  @$pb.TagNumber(20)
  void clearForward() => $_clearField(20);

  /// 参见 [`Rights`]
  @$pb.TagNumber(21)
  Rights get rights => $_getN(20);
  @$pb.TagNumber(21)
  set rights(Rights value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasRights() => $_has(20);
  @$pb.TagNumber(21)
  void clearRights() => $_clearField(21);
  @$pb.TagNumber(21)
  Rights ensureRights() => $_ensure(20);

  /// 稿件作者信息, 参见 [`Author`]
  @$pb.TagNumber(22)
  Author get author => $_getN(21);
  @$pb.TagNumber(22)
  set author(Author value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasAuthor() => $_has(21);
  @$pb.TagNumber(22)
  void clearAuthor() => $_clearField(22);
  @$pb.TagNumber(22)
  Author ensureAuthor() => $_ensure(21);

  /// 稿件计数信息, 参见 [`Stat`]
  @$pb.TagNumber(23)
  Stat get stat => $_getN(22);
  @$pb.TagNumber(23)
  set stat(Stat value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasStat() => $_has(22);
  @$pb.TagNumber(23)
  void clearStat() => $_clearField(23);
  @$pb.TagNumber(23)
  Stat ensureStat() => $_ensure(22);

  @$pb.TagNumber(24)
  $core.String get reportResult => $_getSZ(23);
  @$pb.TagNumber(24)
  set reportResult($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasReportResult() => $_has(23);
  @$pb.TagNumber(24)
  void clearReportResult() => $_clearField(24);

  /// 发布时动态描述
  @$pb.TagNumber(25)
  $core.String get dynamic => $_getSZ(24);
  @$pb.TagNumber(25)
  set dynamic($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasDynamic() => $_has(24);
  @$pb.TagNumber(25)
  void clearDynamic() => $_clearField(25);

  /// 首个分 P 的 cid
  @$pb.TagNumber(26)
  $fixnum.Int64 get firstCid => $_getI64(25);
  @$pb.TagNumber(26)
  set firstCid($fixnum.Int64 value) => $_setInt64(25, value);
  @$pb.TagNumber(26)
  $core.bool hasFirstCid() => $_has(25);
  @$pb.TagNumber(26)
  void clearFirstCid() => $_clearField(26);

  /// 首个分 P 的分辨率
  @$pb.TagNumber(27)
  Dimension get dimension => $_getN(26);
  @$pb.TagNumber(27)
  set dimension(Dimension value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasDimension() => $_has(26);
  @$pb.TagNumber(27)
  void clearDimension() => $_clearField(27);
  @$pb.TagNumber(27)
  Dimension ensureDimension() => $_ensure(26);

  /// 联合投稿信息
  @$pb.TagNumber(28)
  $pb.PbList<StaffInfo> get staffInfo => $_getList(27);

  /// UGC 剧集 ID
  @$pb.TagNumber(29)
  $fixnum.Int64 get seasonId => $_getI64(28);
  @$pb.TagNumber(29)
  set seasonId($fixnum.Int64 value) => $_setInt64(28, value);
  @$pb.TagNumber(29)
  $core.bool hasSeasonId() => $_has(28);
  @$pb.TagNumber(29)
  void clearSeasonId() => $_clearField(29);

  /// 属性 (旧的 int32 不够用了)
  @$pb.TagNumber(30)
  $fixnum.Int64 get attributeV2 => $_getI64(29);
  @$pb.TagNumber(30)
  set attributeV2($fixnum.Int64 value) => $_setInt64(29, value);
  @$pb.TagNumber(30)
  $core.bool hasAttributeV2() => $_has(29);
  @$pb.TagNumber(30)
  void clearAttributeV2() => $_clearField(30);

  /// ? UGC 剧集主题
  @$pb.TagNumber(31)
  SeasonTheme get seasonTheme => $_getN(30);
  @$pb.TagNumber(31)
  set seasonTheme(SeasonTheme value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasSeasonTheme() => $_has(30);
  @$pb.TagNumber(31)
  void clearSeasonTheme() => $_clearField(31);
  @$pb.TagNumber(31)
  SeasonTheme ensureSeasonTheme() => $_ensure(30);

  /// ? 短链接
  @$pb.TagNumber(40)
  $core.String get shortLinkV2 => $_getSZ(31);
  @$pb.TagNumber(40)
  set shortLinkV2($core.String value) => $_setString(31, value);
  @$pb.TagNumber(40)
  $core.bool hasShortLinkV2() => $_has(31);
  @$pb.TagNumber(40)
  void clearShortLinkV2() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.int get upFromV2 => $_getIZ(32);
  @$pb.TagNumber(41)
  set upFromV2($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(41)
  $core.bool hasUpFromV2() => $_has(32);
  @$pb.TagNumber(41)
  void clearUpFromV2() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.String get firstFrame => $_getSZ(33);
  @$pb.TagNumber(42)
  set firstFrame($core.String value) => $_setString(33, value);
  @$pb.TagNumber(42)
  $core.bool hasFirstFrame() => $_has(33);
  @$pb.TagNumber(42)
  void clearFirstFrame() => $_clearField(42);
}

/// 作者信息
class Author extends $pb.GeneratedMessage {
  factory Author({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
  }) {
    final result = create();
    if (mid != null) result.mid = mid;
    if (name != null) result.name = name;
    if (face != null) result.face = face;
    return result;
  }

  Author._();

  factory Author.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Author.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticauthorgetdefault=>_defau': ')
  static Author getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Author>(create);
  static Author? _defaultInstance;

  /// UP mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  /// UP 昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// UP 头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);
}

/// 视频分辨率
class Dimension extends $pb.GeneratedMessage {
  factory Dimension({
    $fixnum.Int64? width,
    $fixnum.Int64? height,
    $fixnum.Int64? rotate,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (rotate != null) result.rotate = rotate;
    return result;
  }

  Dimension._();

  factory Dimension.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Dimension.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticbubblemoduleusergetdefau': ')
  static BubbleModuleUser getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BubbleModuleUser>(create);
  static BubbleModuleUser? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<UserInfo> get users => $_getList(0);
}

/// 付费课程批次卡片数据
class CardCurrBatch extends $pb.GeneratedMessage {
  factory CardCurrBatch({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? text1,
    $core.String? text2,
    VideoBadge? badge,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (uri != null) result.uri = uri;
    if (text1 != null) result.text1 = text1;
    if (text2 != null) result.text2 = text2;
    if (badge != null) result.badge = badge;
    return result;
  }

  CardCurrBatch._();

  factory CardCurrBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardCurrBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticbuttongetdefault=>_defau': ')
  static Button getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Button>(create);
  static Button? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get link => $_getSZ(1);
  @$pb.TagNumber(2)
  set link($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearLink() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get icon => $_getI64(3);
  @$pb.TagNumber(4)
  set icon($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => $_clearField(4);

  @$pb.TagNumber(5)
  ButType get butType => $_getN(4);
  @$pb.TagNumber(5)
  set butType(ButType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasButType() => $_has(4);
  @$pb.TagNumber(5)
  void clearButType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get followState => $_getIZ(5);
  @$pb.TagNumber(6)
  set followState($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFollowState() => $_has(5);
  @$pb.TagNumber(6)
  void clearFollowState() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get hasTitle_7 => $_getSZ(6);
  @$pb.TagNumber(7)
  set hasTitle_7($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasTitle_7() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasTitle_7() => $_clearField(7);
}

/// 专栏卡片
class CardArticle extends $pb.GeneratedMessage {
  factory CardArticle({
    $core.Iterable<$core.String>? covers,
    $core.String? name,
    $fixnum.Int64? mid,
    $core.bool? displayAttention,
    $core.String? badge,
    Relation? relation,
  }) {
    final result = create();
    if (covers != null) result.covers.addAll(covers);
    if (name != null) result.name = name;
    if (mid != null) result.mid = mid;
    if (displayAttention != null) result.displayAttention = displayAttention;
    if (badge != null) result.badge = badge;
    if (relation != null) result.relation = relation;
    return result;
  }

  CardArticle._();

  factory CardArticle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardArticle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardarticlegetdefault=>_': ')
  static CardArticle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardArticle>(create);
  static CardArticle? _defaultInstance;

  /// 封面
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get covers => $_getList(0);

  /// 标题
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// UP 主 mid
  @$pb.TagNumber(3)
  $fixnum.Int64 get mid => $_getI64(2);
  @$pb.TagNumber(3)
  set mid($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearMid() => $_clearField(3);

  /// 是否展示 ',
  'general.staticcardcheesegetdefault=>_d': ')
  static CardCheese getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardCheese>(create);
  static CardCheese? _defaultInstance;

  /// 封面
  @$pb.TagNumber(1)
  $core.String get cover => $_getSZ(0);
  @$pb.TagNumber(1)
  set cover($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCover() => $_has(0);
  @$pb.TagNumber(1)
  void clearCover() => $_clearField(1);

  /// 观看进度
  @$pb.TagNumber(2)
  $fixnum.Int64 get progress => $_getI64(1);
  @$pb.TagNumber(2)
  set progress($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  /// 时长
  @$pb.TagNumber(3)
  $fixnum.Int64 get duration => $_getI64(2);
  @$pb.TagNumber(3)
  set duration($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  /// 分集标题
  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get state => $_getI64(4);
  @$pb.TagNumber(5)
  set state($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(5)
  void clearState() => $_clearField(5);
}

/// 直播卡片
class CardLive extends $pb.GeneratedMessage {
  factory CardLive({
    $core.String? cover,
    $core.String? name,
    $fixnum.Int64? mid,
    $core.String? tag,
    $core.int? status,
    $core.bool? displayAttention,
    Relation? relation,
  }) {
    final result = create();
    if (cover != null) result.cover = cover;
    if (name != null) result.name = name;
    if (mid != null) result.mid = mid;
    if (tag != null) result.tag = tag;
    if (status != null) result.status = status;
    if (displayAttention != null) result.displayAttention = displayAttention;
    if (relation != null) result.relation = relation;
    return result;
  }

  CardLive._();

  factory CardLive.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardLive.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardcurrbatchgetdefault=': ')
  static CardCurrBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardCurrBatch>(create);
  static CardCurrBatch? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 封面
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// 展示项 1: 本集标题
  @$pb.TagNumber(4)
  $core.String get text1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set text1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearText1() => $_clearField(4);

  /// 展示项 2: 更新了多少个视频
  @$pb.TagNumber(5)
  $core.String get text2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set text2($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearText2() => $_clearField(5);

  /// 角标
  @$pb.TagNumber(6)
  VideoBadge get badge => $_getN(5);
  @$pb.TagNumber(6)
  set badge(VideoBadge value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(6)
  void clearBadge() => $_clearField(6);
  @$pb.TagNumber(6)
  VideoBadge ensureBadge() => $_ensure(5);
}

/// 付费课程系列卡片数据
class CardCurrSeason extends $pb.GeneratedMessage {
  factory CardCurrSeason({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? text1,
    $core.String? desc,
    VideoBadge? badge,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (uri != null) result.uri = uri;
    if (text1 != null) result.text1 = text1;
    if (desc != null) result.desc = desc;
    if (badge != null) result.badge = badge;
    return result;
  }

  CardCurrSeason._();

  factory CardCurrSeason.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardCurrSeason.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardcurrseasongetdefault': ')
  static CardCurrSeason getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardCurrSeason>(create);
  static CardCurrSeason? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 封面
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// 展示项 1 (展示更新信息)
  @$pb.TagNumber(4)
  $core.String get text1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set text1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearText1() => $_clearField(4);

  /// 描述信息
  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => $_clearField(5);

  /// 角标
  @$pb.TagNumber(6)
  VideoBadge get badge => $_getN(5);
  @$pb.TagNumber(6)
  set badge(VideoBadge value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(6)
  void clearBadge() => $_clearField(6);
  @$pb.TagNumber(6)
  VideoBadge ensureBadge() => $_ensure(5);
}

/// PGC 视频卡片数据
class CardPGC extends $pb.GeneratedMessage {
  factory CardPGC({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $fixnum.Int64? cid,
    $fixnum.Int64? seasonId,
    $fixnum.Int64? epid,
    $fixnum.Int64? aid,
    MediaType? mediaType,
    VideoSubType? subType,
    $core.int? isPreview,
    Dimension? dimension,
    $core.Iterable<VideoBadge>? badge,
    $core.int? canPlay,
    PGCSeason? season,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (uri != null) result.uri = uri;
    if (coverLeftText1 != null) result.coverLeftText1 = coverLeftText1;
    if (coverLeftText2 != null) result.coverLeftText2 = coverLeftText2;
    if (coverLeftText3 != null) result.coverLeftText3 = coverLeftText3;
    if (cid != null) result.cid = cid;
    if (seasonId != null) result.seasonId = seasonId;
    if (epid != null) result.epid = epid;
    if (aid != null) result.aid = aid;
    if (mediaType != null) result.mediaType = mediaType;
    if (subType != null) result.subType = subType;
    if (isPreview != null) result.isPreview = isPreview;
    if (dimension != null) result.dimension = dimension;
    if (badge != null) result.badge.addAll(badge);
    if (canPlay != null) result.canPlay = canPlay;
    if (season != null) result.season = season;
    return result;
  }

  CardPGC._();

  factory CardPGC.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardPGC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardlivegetdefault=>_def': ')
  static CardLive getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardLive>(create);
  static CardLive? _defaultInstance;

  /// 封面
  @$pb.TagNumber(1)
  $core.String get cover => $_getSZ(0);
  @$pb.TagNumber(1)
  set cover($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCover() => $_has(0);
  @$pb.TagNumber(1)
  void clearCover() => $_clearField(1);

  /// UP 主昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// UP 主 mid
  @$pb.TagNumber(3)
  $fixnum.Int64 get mid => $_getI64(2);
  @$pb.TagNumber(3)
  set mid($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearMid() => $_clearField(3);

  /// tag 名称
  @$pb.TagNumber(4)
  $core.String get tag => $_getSZ(3);
  @$pb.TagNumber(4)
  set tag($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTag() => $_has(3);
  @$pb.TagNumber(4)
  void clearTag() => $_clearField(4);

  /// 直播状态
  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  /// 是否展示 ',
  'general.staticcardogvgetdefault=>_defa': ')
  static CardOGV getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardOGV>(create);
  static CardOGV? _defaultInstance;

  /// 封面
  @$pb.TagNumber(1)
  $core.String get cover => $_getSZ(0);
  @$pb.TagNumber(1)
  set cover($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCover() => $_has(0);
  @$pb.TagNumber(1)
  void clearCover() => $_clearField(1);

  /// 观看进度
  @$pb.TagNumber(2)
  $fixnum.Int64 get progress => $_getI64(1);
  @$pb.TagNumber(2)
  set progress($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  /// 总时长
  @$pb.TagNumber(3)
  $fixnum.Int64 get duration => $_getI64(2);
  @$pb.TagNumber(3)
  set duration($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  /// 番剧卡分集标题
  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  /// 角标
  @$pb.TagNumber(5)
  $core.String get badge => $_getSZ(4);
  @$pb.TagNumber(5)
  set badge($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBadge() => $_has(4);
  @$pb.TagNumber(5)
  void clearBadge() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get state => $_getI64(5);
  @$pb.TagNumber(6)
  set state($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearState() => $_clearField(6);
}

/// UGC 稿件卡片
class CardUGC extends $pb.GeneratedMessage {
  factory CardUGC({
    $core.String? cover,
    $fixnum.Int64? progress,
    $fixnum.Int64? duration,
    $core.String? name,
    $fixnum.Int64? mid,
    $core.bool? displayAttention,
    $fixnum.Int64? cid,
    $core.int? page,
    $core.String? subtitle,
    Relation? relation,
    $core.String? bvid,
    $fixnum.Int64? videos,
    $core.String? shortLink,
    $core.String? shareSubtitle,
    $fixnum.Int64? view,
    $fixnum.Int64? state,
    $core.String? badge,
    Badge? badgeV2,
  }) {
    final result = create();
    if (cover != null) result.cover = cover;
    if (progress != null) result.progress = progress;
    if (duration != null) result.duration = duration;
    if (name != null) result.name = name;
    if (mid != null) result.mid = mid;
    if (displayAttention != null) result.displayAttention = displayAttention;
    if (cid != null) result.cid = cid;
    if (page != null) result.page = page;
    if (subtitle != null) result.subtitle = subtitle;
    if (relation != null) result.relation = relation;
    if (bvid != null) result.bvid = bvid;
    if (videos != null) result.videos = videos;
    if (shortLink != null) result.shortLink = shortLink;
    if (shareSubtitle != null) result.shareSubtitle = shareSubtitle;
    if (view != null) result.view = view;
    if (state != null) result.state = state;
    if (badge != null) result.badge = badge;
    if (badgeV2 != null) result.badgeV2 = badgeV2;
    return result;
  }

  CardUGC._();

  factory CardUGC.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardUGC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardpgcgetdefault=>_defa': ')
  static CardPGC getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardPGC>(create);
  static CardPGC? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 封面
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  /// 秒开地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => $_clearField(4);

  /// 视频封面展示项 2
  @$pb.TagNumber(5)
  $core.String get coverLeftText2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverLeftText2($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoverLeftText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftText2() => $_clearField(5);

  /// 视频封面展示项 3
  @$pb.TagNumber(6)
  $core.String get coverLeftText3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText3($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText3() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText3() => $_clearField(6);

  /// 视频 cid
  @$pb.TagNumber(7)
  $fixnum.Int64 get cid => $_getI64(6);
  @$pb.TagNumber(7)
  set cid($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCid() => $_has(6);
  @$pb.TagNumber(7)
  void clearCid() => $_clearField(7);

  /// PGC 剧集 ID
  @$pb.TagNumber(8)
  $fixnum.Int64 get seasonId => $_getI64(7);
  @$pb.TagNumber(8)
  set seasonId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSeasonId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSeasonId() => $_clearField(8);

  /// PGC 剧集分集 ID
  @$pb.TagNumber(9)
  $fixnum.Int64 get epid => $_getI64(8);
  @$pb.TagNumber(9)
  set epid($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasEpid() => $_has(8);
  @$pb.TagNumber(9)
  void clearEpid() => $_clearField(9);

  /// 视频 avid
  @$pb.TagNumber(10)
  $fixnum.Int64 get aid => $_getI64(9);
  @$pb.TagNumber(10)
  set aid($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAid() => $_has(9);
  @$pb.TagNumber(10)
  void clearAid() => $_clearField(10);

  /// 视频源类型
  @$pb.TagNumber(11)
  MediaType get mediaType => $_getN(10);
  @$pb.TagNumber(11)
  set mediaType(MediaType value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMediaType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMediaType() => $_clearField(11);

  /// 番剧类型
  @$pb.TagNumber(12)
  VideoSubType get subType => $_getN(11);
  @$pb.TagNumber(12)
  set subType(VideoSubType value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSubType() => $_has(11);
  @$pb.TagNumber(12)
  void clearSubType() => $_clearField(12);

  /// 番剧是否为预览视频
  @$pb.TagNumber(13)
  $core.int get isPreview => $_getIZ(12);
  @$pb.TagNumber(13)
  set isPreview($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasIsPreview() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsPreview() => $_clearField(13);

  /// 分辨率
  @$pb.TagNumber(14)
  Dimension get dimension => $_getN(13);
  @$pb.TagNumber(14)
  set dimension(Dimension value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasDimension() => $_has(13);
  @$pb.TagNumber(14)
  void clearDimension() => $_clearField(14);
  @$pb.TagNumber(14)
  Dimension ensureDimension() => $_ensure(13);

  /// 角标
  @$pb.TagNumber(15)
  $pb.PbList<VideoBadge> get badge => $_getList(14);

  /// 是否能够自动播放
  @$pb.TagNumber(16)
  $core.int get canPlay => $_getIZ(15);
  @$pb.TagNumber(16)
  set canPlay($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCanPlay() => $_has(15);
  @$pb.TagNumber(16)
  void clearCanPlay() => $_clearField(16);

  /// PGC 剧集信息
  @$pb.TagNumber(17)
  PGCSeason get season => $_getN(16);
  @$pb.TagNumber(17)
  set season(PGCSeason value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSeason() => $_has(16);
  @$pb.TagNumber(17)
  void clearSeason() => $_clearField(17);
  @$pb.TagNumber(17)
  PGCSeason ensureSeason() => $_ensure(16);
}

/// UGC 视频卡片数据
class CardUGC extends $pb.GeneratedMessage {
  factory CardUGC({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $fixnum.Int64? avid,
    $fixnum.Int64? cid,
    MediaType? mediaType,
    Dimension? dimension,
    $core.Iterable<VideoBadge>? badge,
    $core.int? canPlay,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (uri != null) result.uri = uri;
    if (coverLeftText1 != null) result.coverLeftText1 = coverLeftText1;
    if (coverLeftText2 != null) result.coverLeftText2 = coverLeftText2;
    if (coverLeftText3 != null) result.coverLeftText3 = coverLeftText3;
    if (avid != null) result.avid = avid;
    if (cid != null) result.cid = cid;
    if (mediaType != null) result.mediaType = mediaType;
    if (dimension != null) result.dimension = dimension;
    if (badge != null) result.badge.addAll(badge);
    if (canPlay != null) result.canPlay = canPlay;
    return result;
  }

  CardUGC._();

  factory CardUGC.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardUGC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcardugcgetdefault=>_defa': ')
  static CardUGC getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardUGC>(create);
  static CardUGC? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  /// 秒开地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => $_clearField(4);

  /// 视频封面展示项 2
  @$pb.TagNumber(5)
  $core.String get coverLeftText2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverLeftText2($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoverLeftText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftText2() => $_clearField(5);

  /// 视频封面展示项 3
  @$pb.TagNumber(6)
  $core.String get coverLeftText3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText3($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText3() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText3() => $_clearField(6);

  /// 视频 avid
  @$pb.TagNumber(7)
  $fixnum.Int64 get avid => $_getI64(6);
  @$pb.TagNumber(7)
  set avid($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAvid() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvid() => $_clearField(7);

  /// 视频 cid
  @$pb.TagNumber(8)
  $fixnum.Int64 get cid => $_getI64(7);
  @$pb.TagNumber(8)
  set cid($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCid() => $_has(7);
  @$pb.TagNumber(8)
  void clearCid() => $_clearField(8);

  /// 视频源类型
  @$pb.TagNumber(9)
  MediaType get mediaType => $_getN(8);
  @$pb.TagNumber(9)
  set mediaType(MediaType value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMediaType() => $_has(8);
  @$pb.TagNumber(9)
  void clearMediaType() => $_clearField(9);

  /// 分辨率
  @$pb.TagNumber(10)
  Dimension get dimension => $_getN(9);
  @$pb.TagNumber(10)
  set dimension(Dimension value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasDimension() => $_has(9);
  @$pb.TagNumber(10)
  void clearDimension() => $_clearField(10);
  @$pb.TagNumber(10)
  Dimension ensureDimension() => $_ensure(9);

  /// 角标
  @$pb.TagNumber(11)
  $pb.PbList<VideoBadge> get badge => $_getList(10);

  /// 是否能够自动播放
  @$pb.TagNumber(12)
  $core.int get canPlay => $_getIZ(11);
  @$pb.TagNumber(12)
  set canPlay($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCanPlay() => $_has(11);
  @$pb.TagNumber(12)
  void clearCanPlay() => $_clearField(12);
}

class Color extends $pb.GeneratedMessage {
  factory Color({
    $core.String? colorDay,
    $core.String? colorNight,
  }) {
    final result = create();
    if (colorDay != null) result.colorDay = colorDay;
    if (colorNight != null) result.colorNight = colorNight;
    return result;
  }

  Color._();

  factory Color.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Color.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcommentitemgetdefault=>_': ')
  static CommentItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommentItem>(create);
  static CommentItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  CommentType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(CommentType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get actionType => $_getSZ(4);
  @$pb.TagNumber(5)
  set actionType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasActionType() => $_has(4);
  @$pb.TagNumber(5)
  void clearActionType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(5);
  @$pb.TagNumber(6)
  set id($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => $_clearField(6);
}

/// 历史记录游标
class Cursor extends $pb.GeneratedMessage {
  factory Cursor({
    $fixnum.Int64? max,
    $core.int? maxTp,
  }) {
    final result = create();
    if (max != null) result.max = max;
    if (maxTp != null) result.maxTp = maxTp;
    return result;
  }

  Cursor._();

  factory Cursor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cursor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcornerinfogetdefault=>_d': ')
  static CornerInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CornerInfo>(create);
  static CornerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  CornerType get cornerType => $_getN(0);
  @$pb.TagNumber(1)
  set cornerType(CornerType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCornerType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCornerType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cornerText => $_getSZ(1);
  @$pb.TagNumber(2)
  set cornerText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCornerText() => $_has(1);
  @$pb.TagNumber(2)
  void clearCornerText() => $_clearField(2);

  @$pb.TagNumber(3)
  Color get cornerTextColor => $_getN(2);
  @$pb.TagNumber(3)
  set cornerTextColor(Color value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCornerTextColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCornerTextColor() => $_clearField(3);
  @$pb.TagNumber(3)
  Color ensureCornerTextColor() => $_ensure(2);

  @$pb.TagNumber(4)
  Color get cornerTextBgColor => $_getN(3);
  @$pb.TagNumber(4)
  set cornerTextBgColor(Color value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCornerTextBgColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearCornerTextBgColor() => $_clearField(4);
  @$pb.TagNumber(4)
  Color ensureCornerTextBgColor() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get cornerIcon => $_getSZ(4);
  @$pb.TagNumber(5)
  set cornerIcon($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCornerIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearCornerIcon() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get cornerNumber => $_getI64(5);
  @$pb.TagNumber(6)
  set cornerNumber($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCornerNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearCornerNumber() => $_clearField(6);
}

/// 粉丝样式
class DecoCardFan extends $pb.GeneratedMessage {
  factory DecoCardFan({
    $core.int? isFan,
    $core.int? number,
    $core.String? color,
  }) {
    final result = create();
    if (isFan != null) result.isFan = isFan;
    if (number != null) result.number = number;
    if (color != null) result.color = color;
    return result;
  }

  DecoCardFan._();

  factory DecoCardFan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecoCardFan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursorgetdefault=>_defau': ')
  static Cursor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cursor>(create);
  static Cursor? _defaultInstance;

  /// 本页最大值游标值
  @$pb.TagNumber(1)
  $fixnum.Int64 get max => $_getI64(0);
  @$pb.TagNumber(1)
  set max($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMax() => $_has(0);
  @$pb.TagNumber(1)
  void clearMax() => $_clearField(1);

  /// 本页最大值游标类型
  @$pb.TagNumber(2)
  $core.int get maxTp => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxTp($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxTp() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxTp() => $_clearField(2);
}

enum CursorItem_CardItem {
  cardUgc,
  cardOgv,
  cardArticle,
  cardLive,
  cardCheese,
  notSet
}

/// 历史记录卡片内容
class CursorItem extends $pb.GeneratedMessage {
  factory CursorItem({
    CardUGC? cardUgc,
    CardOGV? cardOgv,
    CardArticle? cardArticle,
    CardLive? cardLive,
    CardCheese? cardCheese,
    $core.String? title,
    $core.String? uri,
    $fixnum.Int64? viewAt,
    $fixnum.Int64? kid,
    $fixnum.Int64? oid,
    $core.String? business,
    $core.int? tp,
    DeviceType? dt,
    $core.bool? hasShare,
    $core.String? report,
  }) {
    final result = create();
    if (cardUgc != null) result.cardUgc = cardUgc;
    if (cardOgv != null) result.cardOgv = cardOgv;
    if (cardArticle != null) result.cardArticle = cardArticle;
    if (cardLive != null) result.cardLive = cardLive;
    if (cardCheese != null) result.cardCheese = cardCheese;
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (viewAt != null) result.viewAt = viewAt;
    if (kid != null) result.kid = kid;
    if (oid != null) result.oid = oid;
    if (business != null) result.business = business;
    if (tp != null) result.tp = tp;
    if (dt != null) result.dt = dt;
    if (hasShare != null) result.hasShare = hasShare;
    if (report != null) result.report = report;
    return result;
  }

  CursorItem._();

  factory CursorItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CursorItem_CardItem>
      _CursorItem_CardItemByTag = {
    1: CursorItem_CardItem.cardUgc,
    2: CursorItem_CardItem.cardOgv,
    3: CursorItem_CardItem.cardArticle,
    4: CursorItem_CardItem.cardLive,
    5: CursorItem_CardItem.cardCheese,
    0: CursorItem_CardItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursoritemgetdefault=>_d': ')
  static CursorItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CursorItem>(create);
  static CursorItem? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  CursorItem_CardItem whichCardItem() =>
      _CursorItem_CardItemByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearCardItem() => $_clearField($_whichOneof(0));

  /// 参见 [`CardUGC`]
  @$pb.TagNumber(1)
  CardUGC get cardUgc => $_getN(0);
  @$pb.TagNumber(1)
  set cardUgc(CardUGC value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCardUgc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardUgc() => $_clearField(1);
  @$pb.TagNumber(1)
  CardUGC ensureCardUgc() => $_ensure(0);

  /// 参见 [`CardOGV`]
  @$pb.TagNumber(2)
  CardOGV get cardOgv => $_getN(1);
  @$pb.TagNumber(2)
  set cardOgv(CardOGV value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCardOgv() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardOgv() => $_clearField(2);
  @$pb.TagNumber(2)
  CardOGV ensureCardOgv() => $_ensure(1);

  /// 参见 [`CardArticle`]
  @$pb.TagNumber(3)
  CardArticle get cardArticle => $_getN(2);
  @$pb.TagNumber(3)
  set cardArticle(CardArticle value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCardArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardArticle() => $_clearField(3);
  @$pb.TagNumber(3)
  CardArticle ensureCardArticle() => $_ensure(2);

  /// 参见 [`CardLive`]
  @$pb.TagNumber(4)
  CardLive get cardLive => $_getN(3);
  @$pb.TagNumber(4)
  set cardLive(CardLive value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCardLive() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardLive() => $_clearField(4);
  @$pb.TagNumber(4)
  CardLive ensureCardLive() => $_ensure(3);

  /// 参见 [`CardCheese`]
  @$pb.TagNumber(5)
  CardCheese get cardCheese => $_getN(4);
  @$pb.TagNumber(5)
  set cardCheese(CardCheese value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCardCheese() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardCheese() => $_clearField(5);
  @$pb.TagNumber(5)
  CardCheese ensureCardCheese() => $_ensure(4);

  /// 标题
  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => $_clearField(6);

  /// 跳转链接
  @$pb.TagNumber(7)
  $core.String get uri => $_getSZ(6);
  @$pb.TagNumber(7)
  set uri($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearUri() => $_clearField(7);

  /// 观看时间
  @$pb.TagNumber(8)
  $fixnum.Int64 get viewAt => $_getI64(7);
  @$pb.TagNumber(8)
  set viewAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasViewAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearViewAt() => $_clearField(8);

  /// 历史记录主键
  @$pb.TagNumber(9)
  $fixnum.Int64 get kid => $_getI64(8);
  @$pb.TagNumber(9)
  set kid($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasKid() => $_has(8);
  @$pb.TagNumber(9)
  void clearKid() => $_clearField(9);

  /// 业务 ID (如稿件 avid 或直播间 room_id 等)
  @$pb.TagNumber(10)
  $fixnum.Int64 get oid => $_getI64(9);
  @$pb.TagNumber(10)
  set oid($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasOid() => $_has(9);
  @$pb.TagNumber(10)
  void clearOid() => $_clearField(10);

  /// 业务类型
  @$pb.TagNumber(11)
  $core.String get business => $_getSZ(10);
  @$pb.TagNumber(11)
  set business($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBusiness() => $_has(10);
  @$pb.TagNumber(11)
  void clearBusiness() => $_clearField(11);

  /// 业务类型
  @$pb.TagNumber(12)
  $core.int get tp => $_getIZ(11);
  @$pb.TagNumber(12)
  set tp($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTp() => $_has(11);
  @$pb.TagNumber(12)
  void clearTp() => $_clearField(12);

  /// 播放设备
  @$pb.TagNumber(13)
  DeviceType get dt => $_getN(12);
  @$pb.TagNumber(13)
  set dt(DeviceType value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasDt() => $_has(12);
  @$pb.TagNumber(13)
  void clearDt() => $_clearField(13);
  @$pb.TagNumber(13)
  DeviceType ensureDt() => $_ensure(12);

  /// ? 是否带分享按钮
  @$pb.TagNumber(14)
  $core.bool get hasShare => $_getBF(13);
  @$pb.TagNumber(14)
  set hasShare($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasHasShare() => $_has(13);
  @$pb.TagNumber(14)
  void clearHasShare() => $_clearField(14);

  /// ? 埋点上报参数
  @$pb.TagNumber(15)
  $core.String get report => $_getSZ(14);
  @$pb.TagNumber(15)
  set report($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasReport() => $_has(14);
  @$pb.TagNumber(15)
  void clearReport() => $_clearField(15);
}

/// 历史记录列表请求返回值
class CursorReply extends $pb.GeneratedMessage {
  factory CursorReply({
    $core.Iterable<CursorItem>? items,
    $core.Iterable<CursorTab>? tab,
    Cursor? cursor,
    $core.bool? hasMore,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (tab != null) result.tab.addAll(tab);
    if (cursor != null) result.cursor = cursor;
    if (hasMore != null) result.hasMore = hasMore;
    return result;
  }

  CursorReply._();

  factory CursorReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursorreplygetdefault=>_': ')
  static CursorReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CursorReply>(create);
  static CursorReply? _defaultInstance;

  /// 参见 [`CursorItem`]
  @$pb.TagNumber(1)
  $pb.PbList<CursorItem> get items => $_getList(0);

  /// 参见 [`CursorTab`]
  @$pb.TagNumber(2)
  $pb.PbList<CursorTab> get tab => $_getList(1);

  /// 当前偏移
  @$pb.TagNumber(3)
  Cursor get cursor => $_getN(2);
  @$pb.TagNumber(3)
  set cursor(Cursor value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => $_clearField(3);
  @$pb.TagNumber(3)
  Cursor ensureCursor() => $_ensure(2);

  /// 是否还有更多数据
  @$pb.TagNumber(4)
  $core.bool get hasMore => $_getBF(3);
  @$pb.TagNumber(4)
  set hasMore($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHasMore() => $_has(3);
  @$pb.TagNumber(4)
  void clearHasMore() => $_clearField(4);
}

/// 历史记录列表请求参数
class CursorReq extends $pb.GeneratedMessage {
  factory CursorReq({
    Cursor? cursor,
    $core.String? business,
    PlayerPreloadParams? playerPreload,
    $3.PlayerArgs? playerArgs,
  }) {
    final result = create();
    if (cursor != null) result.cursor = cursor;
    if (business != null) result.business = business;
    if (playerPreload != null) result.playerPreload = playerPreload;
    if (playerArgs != null) result.playerArgs = playerArgs;
    return result;
  }

  CursorReq._();

  factory CursorReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursorreqgetdefault=>_de': ')
  static CursorReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CursorReq>(create);
  static CursorReq? _defaultInstance;

  /// 翻页游标 (透传上一页的游标)
  @$pb.TagNumber(1)
  Cursor get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(Cursor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  Cursor ensureCursor() => $_ensure(0);

  /// 业务类型
  ///
  /// - 全部: `all`
  /// - 视频: `archive`
  /// - 直播: `live`
  /// - 专栏: `article`
  @$pb.TagNumber(2)
  $core.String get business => $_getSZ(1);
  @$pb.TagNumber(2)
  set business($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBusiness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBusiness() => $_clearField(2);

  /// 秒开参数
  @$pb.TagNumber(3)
  PlayerPreloadParams get playerPreload => $_getN(2);
  @$pb.TagNumber(3)
  set playerPreload(PlayerPreloadParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPlayerPreload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayerPreload() => $_clearField(3);
  @$pb.TagNumber(3)
  PlayerPreloadParams ensurePlayerPreload() => $_ensure(2);

  /// 秒开参数
  @$pb.TagNumber(4)
  $3.PlayerArgs get playerArgs => $_getN(3);
  @$pb.TagNumber(4)
  set playerArgs($3.PlayerArgs value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPlayerArgs() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerArgs() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.PlayerArgs ensurePlayerArgs() => $_ensure(3);
}

/// 历史记录顶部 tab
class CursorTab extends $pb.GeneratedMessage {
  factory CursorTab({
    $core.String? business,
    $core.String? name,
    $core.String? router,
    $core.bool? focus,
  }) {
    final result = create();
    if (business != null) result.business = business;
    if (name != null) result.name = name;
    if (router != null) result.router = router;
    if (focus != null) result.focus = focus;
    return result;
  }

  CursorTab._();

  factory CursorTab.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorTab.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursortabgetdefault=>_de': ')
  static CursorTab getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CursorTab>(create);
  static CursorTab? _defaultInstance;

  /// 业务类型
  @$pb.TagNumber(1)
  $core.String get business => $_getSZ(0);
  @$pb.TagNumber(1)
  set business($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBusiness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusiness() => $_clearField(1);

  /// 业务名称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// ? app 内部跳转路由
  @$pb.TagNumber(3)
  $core.String get router => $_getSZ(2);
  @$pb.TagNumber(3)
  set router($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRouter() => $_has(2);
  @$pb.TagNumber(3)
  void clearRouter() => $_clearField(3);

  /// ? 是否选中
  @$pb.TagNumber(4)
  $core.bool get focus => $_getBF(3);
  @$pb.TagNumber(4)
  set focus($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFocus() => $_has(3);
  @$pb.TagNumber(4)
  void clearFocus() => $_clearField(4);
}

/// 参见 [`CursorReply`]
class CursorV2Reply extends $pb.GeneratedMessage {
  factory CursorV2Reply({
    $core.Iterable<CursorItem>? items,
    Cursor? cursor,
    $core.bool? hasMore,
    $core.String? emptyLink,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (cursor != null) result.cursor = cursor;
    if (hasMore != null) result.hasMore = hasMore;
    if (emptyLink != null) result.emptyLink = emptyLink;
    return result;
  }

  CursorV2Reply._();

  factory CursorV2Reply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorV2Reply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticcursorv2replygetdefault=': ')
  static CursorV2Reply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CursorV2Reply>(create);
  static CursorV2Reply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CursorItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  Cursor get cursor => $_getN(1);
  @$pb.TagNumber(2)
  set cursor(Cursor value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => $_clearField(2);
  @$pb.TagNumber(2)
  Cursor ensureCursor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get hasMore => $_getBF(2);
  @$pb.TagNumber(3)
  set hasMore($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasMore() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get emptyLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set emptyLink($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEmptyLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmptyLink() => $_clearField(4);
}

/// 参见 [`CursorReq`]
class CursorV2Req extends $pb.GeneratedMessage {
  factory CursorV2Req({
    Cursor? cursor,
    $core.String? business,
    PlayerPreloadParams? playerPreload,
    $3.PlayerArgs? playerArgs,
    $core.bool? isLocal,
  }) {
    final result = create();
    if (cursor != null) result.cursor = cursor;
    if (business != null) result.business = business;
    if (playerPreload != null) result.playerPreload = playerPreload;
    if (playerArgs != null) result.playerArgs = playerArgs;
    if (isLocal != null) result.isLocal = isLocal;
    return result;
  }

  CursorV2Req._();

  factory CursorV2Req.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CursorV2Req.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdecocardfangetdefault=>_': ')
  static DecoCardFan getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecoCardFan>(create);
  static DecoCardFan? _defaultInstance;

  /// 是否是粉丝
  @$pb.TagNumber(1)
  $core.int get isFan => $_getIZ(0);
  @$pb.TagNumber(1)
  set isFan($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsFan() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFan() => $_clearField(1);

  /// 数量
  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);

  /// 颜色
  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);
}

/// 装扮卡片
class DecorateCard extends $pb.GeneratedMessage {
  factory DecorateCard({
    $fixnum.Int64? id,
    $core.String? cardUrl,
    $core.String? jumpUrl,
    DecoCardFan? fan,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (cardUrl != null) result.cardUrl = cardUrl;
    if (jumpUrl != null) result.jumpUrl = jumpUrl;
    if (fan != null) result.fan = fan;
    return result;
  }

  DecorateCard._();

  factory DecorateCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecorateCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdecoratecardgetdefault=>': ')
  static DecorateCard getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecorateCard>(create);
  static DecorateCard? _defaultInstance;

  /// 装扮卡片 ID
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// 装扮卡片链接
  @$pb.TagNumber(2)
  $core.String get cardUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCardUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardUrl() => $_clearField(2);

  /// 装扮卡片点击跳转链接
  @$pb.TagNumber(3)
  $core.String get jumpUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set jumpUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasJumpUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumpUrl() => $_clearField(3);

  /// 粉丝样式
  @$pb.TagNumber(4)
  DecoCardFan get fan => $_getN(3);
  @$pb.TagNumber(4)
  set fan(DecoCardFan value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFan() => $_has(3);
  @$pb.TagNumber(4)
  void clearFan() => $_clearField(4);
  @$pb.TagNumber(4)
  DecoCardFan ensureFan() => $_ensure(3);
}

/// 文本描述
class Description extends $pb.GeneratedMessage {
  factory Description({
    $core.String? text,
    $core.String? type,
    $core.String? uri,
    $core.String? emojiType,
    $core.String? goodsType,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (type != null) result.type = type;
    if (uri != null) result.uri = uri;
    if (emojiType != null) result.emojiType = emojiType;
    if (goodsType != null) result.goodsType = goodsType;
    return result;
  }

  Description._();

  factory Description.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Description.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdefaultwordsreqgetdefaul': ')
  static DefaultWordsReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DefaultWordsReq>(create);
  static DefaultWordsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get from => $_getI64(0);
  @$pb.TagNumber(1)
  set from($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get loginEvent => $_getI64(1);
  @$pb.TagNumber(2)
  set loginEvent($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLoginEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoginEvent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get teenagersMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set teenagersMode($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTeenagersMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearTeenagersMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get lessonsMode => $_getIZ(3);
  @$pb.TagNumber(4)
  set lessonsMode($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLessonsMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearLessonsMode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tab => $_getSZ(4);
  @$pb.TagNumber(5)
  set tab($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTab() => $_has(4);
  @$pb.TagNumber(5)
  void clearTab() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get eventId => $_getSZ(5);
  @$pb.TagNumber(6)
  set eventId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEventId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get avid => $_getSZ(6);
  @$pb.TagNumber(7)
  set avid($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAvid() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvid() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get query => $_getSZ(7);
  @$pb.TagNumber(8)
  set query($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQuery() => $_has(7);
  @$pb.TagNumber(8)
  void clearQuery() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get an => $_getI64(8);
  @$pb.TagNumber(9)
  set an($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAn() => $_has(8);
  @$pb.TagNumber(9)
  void clearAn() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get isFresh => $_getI64(9);
  @$pb.TagNumber(10)
  set isFresh($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsFresh() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsFresh() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get splashGuide => $_getSZ(10);
  @$pb.TagNumber(11)
  set splashGuide($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasSplashGuide() => $_has(10);
  @$pb.TagNumber(11)
  void clearSplashGuide() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get splashId => $_getI64(11);
  @$pb.TagNumber(12)
  set splashId($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasSplashId() => $_has(11);
  @$pb.TagNumber(12)
  void clearSplashId() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get refreshType => $_getI64(12);
  @$pb.TagNumber(13)
  set refreshType($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRefreshType() => $_has(12);
  @$pb.TagNumber(13)
  void clearRefreshType() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get userAct => $_getSZ(13);
  @$pb.TagNumber(14)
  set userAct($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasUserAct() => $_has(13);
  @$pb.TagNumber(14)
  void clearUserAct() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get searchPageReturn => $_getIZ(14);
  @$pb.TagNumber(15)
  set searchPageReturn($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSearchPageReturn() => $_has(14);
  @$pb.TagNumber(15)
  void clearSearchPageReturn() => $_clearField(15);
}

/// 历史记录删除请求参数
class DeleteReq extends $pb.GeneratedMessage {
  factory DeleteReq({
    $core.Iterable<HisInfo>? hisInfo,
    $core.String? tab,
  }) {
    final result = create();
    if (hisInfo != null) result.hisInfo.addAll(hisInfo);
    if (tab != null) result.tab = tab;
    return result;
  }

  DeleteReq._();

  factory DeleteReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdeletereqgetdefault=>_de': ')
  static DeleteReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReq>(create);
  static DeleteReq? _defaultInstance;

  /// 要删除的历史信息
  @$pb.TagNumber(1)
  $pb.PbList<HisInfo> get hisInfo => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get tab => $_getSZ(1);
  @$pb.TagNumber(2)
  set tab($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTab() => $_has(1);
  @$pb.TagNumber(2)
  void clearTab() => $_clearField(2);
}

/// 设备类型
class DeviceType extends $pb.GeneratedMessage {
  factory DeviceType({
    DT? type,
    $core.String? icon,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (icon != null) result.icon = icon;
    return result;
  }

  DeviceType._();

  factory DeviceType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdescriptiongetdefault=>_': ')
  static Description getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Description>(create);
  static Description? _defaultInstance;

  /// 文本内容
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  /// 文本类型
  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// emoji 类型
  @$pb.TagNumber(4)
  $core.String get emojiType => $_getSZ(3);
  @$pb.TagNumber(4)
  set emojiType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEmojiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmojiType() => $_clearField(4);

  /// 商品类型
  @$pb.TagNumber(5)
  $core.String get goodsType => $_getSZ(4);
  @$pb.TagNumber(5)
  set goodsType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGoodsType() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsType() => $_clearField(5);
}

/// 分辨率信息
class Dimension extends $pb.GeneratedMessage {
  factory Dimension({
    $fixnum.Int64? height,
    $fixnum.Int64? width,
    $fixnum.Int64? rotate,
  }) {
    final result = create();
    if (height != null) result.height = height;
    if (width != null) result.width = width;
    if (rotate != null) result.rotate = rotate;
    return result;
  }

  Dimension._();

  factory Dimension.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Dimension.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdevicetypegetdefault=>_d': ')
  static DeviceType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceType>(create);
  static DeviceType? _defaultInstance;

  /// 设备类型
  @$pb.TagNumber(1)
  DT get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(DT value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// 图标
  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);
}

class Dynamic extends $pb.GeneratedMessage {
  factory Dynamic({
    $4.DynamicItem? dynamic,
  }) {
    final result = create();
    if (dynamic != null) result.dynamic = dynamic;
    return result;
  }

  Dynamic._();

  factory Dynamic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Dynamic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdimensiongetdefault=>_de': ')
  static Dimension getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dimension>(create);
  static Dimension? _defaultInstance;

  /// 高
  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => $_clearField(1);

  /// 宽
  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  /// 是否为竖屏
  @$pb.TagNumber(3)
  $fixnum.Int64 get rotate => $_getI64(2);
  @$pb.TagNumber(3)
  set rotate($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRotate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotate() => $_clearField(3);
}

/// 通过动态 ID 批量获取动态详情返回值
class DynDetailsReply extends $pb.GeneratedMessage {
  factory DynDetailsReply({
    $core.Iterable<DynamicItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  DynDetailsReply._();

  factory DynDetailsReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynDetailsReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynamicitemgetdefault=>_': ')
  static DynamicItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynamicItem>(create);
  static DynamicItem? _defaultInstance;

  /// 动态卡片类型
  ///
  /// - 转发: `forward`
  /// - 稿件视频: `av`
  /// - 折叠: `fold`
  /// - PGC 内容: `pgc`
  /// - 付费视频: `courses`
  /// - 最近访问列表: `upList`
  /// - 我的追番列表: `followList`
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => $_clearField(1);

  /// 转发类型的 items 的类型
  @$pb.TagNumber(2)
  $core.String get itemType => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => $_clearField(2);

  /// 模块内容
  @$pb.TagNumber(3)
  $pb.PbList<Module> get modules => $_getList(2);

  /// 动态 ID (string)
  @$pb.TagNumber(4)
  $core.String get dynIdStr => $_getSZ(3);
  @$pb.TagNumber(4)
  set dynIdStr($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDynIdStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearDynIdStr() => $_clearField(4);

  /// 转发源动态 ID(string)
  @$pb.TagNumber(5)
  $core.String get origDynIdStr => $_getSZ(4);
  @$pb.TagNumber(5)
  set origDynIdStr($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOrigDynIdStr() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrigDynIdStr() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get rType => $_getIZ(5);
  @$pb.TagNumber(6)
  set rType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRType() => $_has(5);
  @$pb.TagNumber(6)
  void clearRType() => $_clearField(6);

  /// 该卡片下面是否含折叠卡片
  @$pb.TagNumber(7)
  $core.int get hasFold => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasFold($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasFold() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasFold() => $_clearField(7);
}

class Exp extends $pb.GeneratedMessage {
  factory Exp({
    $core.String? expName,
    $core.String? expGroup,
  }) {
    final result = create();
    if (expName != null) result.expName = expName;
    if (expGroup != null) result.expGroup = expGroup;
    return result;
  }

  Exp._();

  factory Exp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Exp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdyndetailsreplygetdefaul': ')
  static DynDetailsReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynDetailsReply>(create);
  static DynDetailsReply? _defaultInstance;

  /// 动态列表
  @$pb.TagNumber(1)
  $pb.PbList<DynamicItem> get list => $_getList(0);
}

/// 通过动态 ID 批量获取动态详情请求参数
class DynDetailsReq extends $pb.GeneratedMessage {
  factory DynDetailsReq({
    $core.int? teenagersMode,
    $core.String? dynamicIds,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final result = create();
    if (teenagersMode != null) result.teenagersMode = teenagersMode;
    if (dynamicIds != null) result.dynamicIds = dynamicIds;
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    return result;
  }

  DynDetailsReq._();

  factory DynDetailsReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynDetailsReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdyndetailsreqgetdefault=': ')
  static DynDetailsReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynDetailsReq>(create);
  static DynDetailsReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => $_clearField(1);

  /// 动态 ID
  @$pb.TagNumber(2)
  $core.String get dynamicIds => $_getSZ(1);
  @$pb.TagNumber(2)
  set dynamicIds($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDynamicIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynamicIds() => $_clearField(2);

  /// 清晰度 (供秒开)
  @$pb.TagNumber(3)
  $core.int get qn => $_getIZ(2);
  @$pb.TagNumber(3)
  set qn($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQn() => $_has(2);
  @$pb.TagNumber(3)
  void clearQn() => $_clearField(3);

  /// 功能版本号 (供秒开)
  @$pb.TagNumber(4)
  $core.int get fnver => $_getIZ(3);
  @$pb.TagNumber(4)
  set fnver($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFnver() => $_has(3);
  @$pb.TagNumber(4)
  void clearFnver() => $_clearField(4);

  /// 功能标识 (供秒开)
  @$pb.TagNumber(5)
  $core.int get fnval => $_getIZ(4);
  @$pb.TagNumber(5)
  set fnval($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFnval() => $_has(4);
  @$pb.TagNumber(5)
  void clearFnval() => $_clearField(5);

  /// 返回 playurl 是否强制使用域名 (供秒开)
  @$pb.TagNumber(6)
  $core.int get forceHost => $_getIZ(5);
  @$pb.TagNumber(6)
  set forceHost($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasForceHost() => $_has(5);
  @$pb.TagNumber(6)
  void clearForceHost() => $_clearField(6);

  /// 是否需要 4K 视频 (供秒开)
  @$pb.TagNumber(7)
  $core.int get fourk => $_getIZ(6);
  @$pb.TagNumber(7)
  set fourk($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFourk() => $_has(6);
  @$pb.TagNumber(7)
  void clearFourk() => $_clearField(7);
}

class DynMixUpListSearchReply extends $pb.GeneratedMessage {
  factory DynMixUpListSearchReply({
    $core.Iterable<MixUpListItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  DynMixUpListSearchReply._();

  factory DynMixUpListSearchReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynMixUpListSearchReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynmixuplistviewmorerepl': ')
  static DynMixUpListViewMoreReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynMixUpListViewMoreReply>(create);
  static DynMixUpListViewMoreReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MixUpListItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get searchDefaultText => $_getSZ(1);
  @$pb.TagNumber(2)
  set searchDefaultText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSearchDefaultText() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchDefaultText() => $_clearField(2);
}

/// 动态同城物料
class DynOurCityItem extends $pb.GeneratedMessage {
  factory DynOurCityItem({
    $core.String? cardType,
    $fixnum.Int64? dynId,
    $core.String? uri,
    $core.Iterable<DynOurCityModule>? modules,
    $fixnum.Int64? rid,
    $core.String? debugInfo,
  }) {
    final result = create();
    if (cardType != null) result.cardType = cardType;
    if (dynId != null) result.dynId = dynId;
    if (uri != null) result.uri = uri;
    if (modules != null) result.modules.addAll(modules);
    if (rid != null) result.rid = rid;
    if (debugInfo != null) result.debugInfo = debugInfo;
    return result;
  }

  DynOurCityItem._();

  factory DynOurCityItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcityitemgetdefault': ')
  static DynOurCityItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityItem>(create);
  static DynOurCityItem? _defaultInstance;

  /// 卡片类型
  ///
  /// - av: 稿件
  /// - draw: 图文
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => $_clearField(1);

  /// 动态 ID
  @$pb.TagNumber(2)
  $fixnum.Int64 get dynId => $_getI64(1);
  @$pb.TagNumber(2)
  set dynId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDynId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynId() => $_clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);

  /// 模块列表
  @$pb.TagNumber(4)
  $pb.PbList<DynOurCityModule> get modules => $_getList(3);

  /// 资源 ID
  @$pb.TagNumber(5)
  $fixnum.Int64 get rid => $_getI64(4);
  @$pb.TagNumber(5)
  set rid($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRid() => $_has(4);
  @$pb.TagNumber(5)
  void clearRid() => $_clearField(5);

  /// ? DEBUG 信息
  @$pb.TagNumber(6)
  $core.String get debugInfo => $_getSZ(5);
  @$pb.TagNumber(6)
  set debugInfo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDebugInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearDebugInfo() => $_clearField(6);
}

enum DynOurCityModule_ModuleItem {
  moduleCover,
  moduleDesc,
  moduleAuthor,
  moduleExtend,
  notSet
}

/// 动态同城物料模块
class DynOurCityModule extends $pb.GeneratedMessage {
  factory DynOurCityModule({
    $core.String? moduleType,
    DynOurCityModuleCover? moduleCover,
    DynOurCityModuleDesc? moduleDesc,
    DynOurCityModuleAuthor? moduleAuthor,
    DynOurCityModuleExtend? moduleExtend,
  }) {
    final result = create();
    if (moduleType != null) result.moduleType = moduleType;
    if (moduleCover != null) result.moduleCover = moduleCover;
    if (moduleDesc != null) result.moduleDesc = moduleDesc;
    if (moduleAuthor != null) result.moduleAuthor = moduleAuthor;
    if (moduleExtend != null) result.moduleExtend = moduleExtend;
    return result;
  }

  DynOurCityModule._();

  factory DynOurCityModule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DynOurCityModule_ModuleItem>
      _DynOurCityModule_ModuleItemByTag = {
    2: DynOurCityModule_ModuleItem.moduleCover,
    3: DynOurCityModule_ModuleItem.moduleDesc,
    4: DynOurCityModule_ModuleItem.moduleAuthor,
    5: DynOurCityModule_ModuleItem.moduleExtend,
    0: DynOurCityModule_ModuleItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymoduleauthorge': ')
  static DynOurCityModuleAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleAuthor>(create);
  static DynOurCityModuleAuthor? _defaultInstance;

  /// 发布人 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  /// 发布人昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// 发布人头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  /// 跳转地址
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => $_clearField(4);
}

/// 动态同城物料封面模块
class DynOurCityModuleCover extends $pb.GeneratedMessage {
  factory DynOurCityModuleCover({
    $core.Iterable<$core.String>? covers,
    $core.int? style,
    $core.int? coverLeftIcon1,
    $core.String? coverLeftText1,
    $core.int? coverLeftIcon2,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $core.Iterable<VideoBadge>? badge,
  }) {
    final result = create();
    if (covers != null) result.covers.addAll(covers);
    if (style != null) result.style = style;
    if (coverLeftIcon1 != null) result.coverLeftIcon1 = coverLeftIcon1;
    if (coverLeftText1 != null) result.coverLeftText1 = coverLeftText1;
    if (coverLeftIcon2 != null) result.coverLeftIcon2 = coverLeftIcon2;
    if (coverLeftText2 != null) result.coverLeftText2 = coverLeftText2;
    if (coverLeftText3 != null) result.coverLeftText3 = coverLeftText3;
    if (badge != null) result.badge.addAll(badge);
    return result;
  }

  DynOurCityModuleCover._();

  factory DynOurCityModuleCover.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModuleCover.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymodulecoverget': ')
  static DynOurCityModuleCover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleCover>(create);
  static DynOurCityModuleCover? _defaultInstance;

  /// 封面图
  ///
  /// 单图样式取第一个元素
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get covers => $_getList(0);

  /// 封面样式
  ///
  /// - 1: 横图
  /// - 2: 竖图
  /// - 3: 方图
  @$pb.TagNumber(2)
  $core.int get style => $_getIZ(1);
  @$pb.TagNumber(2)
  set style($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);

  /// 视频封面展示项图标 1
  @$pb.TagNumber(3)
  $core.int get coverLeftIcon1 => $_getIZ(2);
  @$pb.TagNumber(3)
  set coverLeftIcon1($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCoverLeftIcon1() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverLeftIcon1() => $_clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => $_clearField(4);

  /// 视频封面展示项图标 2
  @$pb.TagNumber(5)
  $core.int get coverLeftIcon2 => $_getIZ(4);
  @$pb.TagNumber(5)
  set coverLeftIcon2($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoverLeftIcon2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftIcon2() => $_clearField(5);

  /// 视频封面展示项 2
  @$pb.TagNumber(6)
  $core.String get coverLeftText2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText2($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText2() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText2() => $_clearField(6);

  /// 视频封面展示项 3
  @$pb.TagNumber(7)
  $core.String get coverLeftText3 => $_getSZ(6);
  @$pb.TagNumber(7)
  set coverLeftText3($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCoverLeftText3() => $_has(6);
  @$pb.TagNumber(7)
  void clearCoverLeftText3() => $_clearField(7);

  /// 角标
  @$pb.TagNumber(8)
  $pb.PbList<VideoBadge> get badge => $_getList(7);
}

/// 动态同城物料详情模块
class DynOurCityModuleDesc extends $pb.GeneratedMessage {
  factory DynOurCityModuleDesc({
    $core.String? desc,
  }) {
    final result = create();
    if (desc != null) result.desc = desc;
    return result;
  }

  DynOurCityModuleDesc._();

  factory DynOurCityModuleDesc.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModuleDesc.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymoduledescgetd': ')
  static DynOurCityModuleDesc getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleDesc>(create);
  static DynOurCityModuleDesc? _defaultInstance;

  /// 详情
  @$pb.TagNumber(1)
  $core.String get desc => $_getSZ(0);
  @$pb.TagNumber(1)
  set desc($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDesc() => $_has(0);
  @$pb.TagNumber(1)
  void clearDesc() => $_clearField(1);
}

enum DynOurCityModuleExtend_Extend { extendLbs, notSet }

/// 动态同城物料拓展模块
class DynOurCityModuleExtend extends $pb.GeneratedMessage {
  factory DynOurCityModuleExtend({
    $core.String? type,
    DynOurCityModuleExtendLBS? extendLbs,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (extendLbs != null) result.extendLbs = extendLbs;
    return result;
  }

  DynOurCityModuleExtend._();

  factory DynOurCityModuleExtend.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModuleExtend.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DynOurCityModuleExtend_Extend>
      _DynOurCityModuleExtend_ExtendByTag = {
    2: DynOurCityModuleExtend_Extend.extendLbs,
    0: DynOurCityModuleExtend_Extend.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymoduleextendge': ')
  static DynOurCityModuleExtend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleExtend>(create);
  static DynOurCityModuleExtend? _defaultInstance;

  @$pb.TagNumber(2)
  DynOurCityModuleExtend_Extend whichExtend() =>
      _DynOurCityModuleExtend_ExtendByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  void clearExtend() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  DynOurCityModuleExtendLBS get extendLbs => $_getN(1);
  @$pb.TagNumber(2)
  set extendLbs(DynOurCityModuleExtendLBS value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExtendLbs() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtendLbs() => $_clearField(2);
  @$pb.TagNumber(2)
  DynOurCityModuleExtendLBS ensureExtendLbs() => $_ensure(1);
}

/// 动态同城物料拓展模块: LBS
class DynOurCityModuleExtendLBS extends $pb.GeneratedMessage {
  factory DynOurCityModuleExtendLBS({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
    $core.int? poiType,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (icon != null) result.icon = icon;
    if (poiType != null) result.poiType = poiType;
    return result;
  }

  DynOurCityModuleExtendLBS._();

  factory DynOurCityModuleExtendLBS.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModuleExtendLBS.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymoduleextendlb': ')
  static DynOurCityModuleExtendLBS getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleExtendLBS>(create);
  static DynOurCityModuleExtendLBS? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get poiType => $_getIZ(3);
  @$pb.TagNumber(4)
  set poiType($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPoiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPoiType() => $_clearField(4);
}

/// 动态同城页请求返回值
class DynOurCityReply extends $pb.GeneratedMessage {
  factory DynOurCityReply({
    $core.String? offset,
    $core.int? hasMore,
    $core.int? style,
    $core.String? topLabel,
    $core.Iterable<DynOurCityItem>? list,
    $core.String? topButtonLabel,
    $core.int? cityId,
    $core.String? cityName,
  }) {
    final result = create();
    if (offset != null) result.offset = offset;
    if (hasMore != null) result.hasMore = hasMore;
    if (style != null) result.style = style;
    if (topLabel != null) result.topLabel = topLabel;
    if (list != null) result.list.addAll(list);
    if (topButtonLabel != null) result.topButtonLabel = topButtonLabel;
    if (cityId != null) result.cityId = cityId;
    if (cityName != null) result.cityName = cityName;
    return result;
  }

  DynOurCityReply._();

  factory DynOurCityReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcitymodulegetdefau': ')
  static DynOurCityModule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModule>(create);
  static DynOurCityModule? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  DynOurCityModule_ModuleItem whichModuleItem() =>
      _DynOurCityModule_ModuleItemByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearModuleItem() => $_clearField($_whichOneof(0));

  /// 模块类型
  ///
  /// - `cover`: 封面
  /// - `desc`: 描述
  /// - `author`: 发布人
  /// - `extend`: 扩展部分
  @$pb.TagNumber(1)
  $core.String get moduleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleType() => $_clearField(1);

  /// 参见 [`DynOurCityModuleCover`]
  @$pb.TagNumber(2)
  DynOurCityModuleCover get moduleCover => $_getN(1);
  @$pb.TagNumber(2)
  set moduleCover(DynOurCityModuleCover value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasModuleCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleCover() => $_clearField(2);
  @$pb.TagNumber(2)
  DynOurCityModuleCover ensureModuleCover() => $_ensure(1);

  /// 参见 [`DynOurCityModuleDesc`]
  @$pb.TagNumber(3)
  DynOurCityModuleDesc get moduleDesc => $_getN(2);
  @$pb.TagNumber(3)
  set moduleDesc(DynOurCityModuleDesc value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasModuleDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleDesc() => $_clearField(3);
  @$pb.TagNumber(3)
  DynOurCityModuleDesc ensureModuleDesc() => $_ensure(2);

  /// 参见 [`DynOurCityModuleAuthor`]
  @$pb.TagNumber(4)
  DynOurCityModuleAuthor get moduleAuthor => $_getN(3);
  @$pb.TagNumber(4)
  set moduleAuthor(DynOurCityModuleAuthor value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasModuleAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleAuthor() => $_clearField(4);
  @$pb.TagNumber(4)
  DynOurCityModuleAuthor ensureModuleAuthor() => $_ensure(3);

  /// 参见 [`DynOurCityModuleExtend`]
  @$pb.TagNumber(5)
  DynOurCityModuleExtend get moduleExtend => $_getN(4);
  @$pb.TagNumber(5)
  set moduleExtend(DynOurCityModuleExtend value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasModuleExtend() => $_has(4);
  @$pb.TagNumber(5)
  void clearModuleExtend() => $_clearField(5);
  @$pb.TagNumber(5)
  DynOurCityModuleExtend ensureModuleExtend() => $_ensure(4);
}

/// 动态同城物料发布人模块
class DynOurCityModuleAuthor extends $pb.GeneratedMessage {
  factory DynOurCityModuleAuthor({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    $core.String? uri,
  }) {
    final result = create();
    if (mid != null) result.mid = mid;
    if (name != null) result.name = name;
    if (face != null) result.face = face;
    if (uri != null) result.uri = uri;
    return result;
  }

  DynOurCityModuleAuthor._();

  factory DynOurCityModuleAuthor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityModuleAuthor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcityreplygetdefaul': ')
  static DynOurCityReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityReply>(create);
  static DynOurCityReply? _defaultInstance;

  /// 翻页游标
  @$pb.TagNumber(1)
  $core.String get offset => $_getSZ(0);
  @$pb.TagNumber(1)
  set offset($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => $_clearField(1);

  /// 是否还有更多
  @$pb.TagNumber(2)
  $core.int get hasMore => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasMore($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => $_clearField(2);

  /// 样式类型
  ///
  /// - 1: 双列
  /// - 2: 瀑布流
  @$pb.TagNumber(3)
  $core.int get style => $_getIZ(2);
  @$pb.TagNumber(3)
  set style($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyle() => $_clearField(3);

  /// ? 顶部导引信息
  @$pb.TagNumber(4)
  $core.String get topLabel => $_getSZ(3);
  @$pb.TagNumber(4)
  set topLabel($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTopLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopLabel() => $_clearField(4);

  /// 列表详情
  @$pb.TagNumber(5)
  $pb.PbList<DynOurCityItem> get list => $_getList(4);

  /// ? 顶部导引按钮信息
  @$pb.TagNumber(6)
  $core.String get topButtonLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set topButtonLabel($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopButtonLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopButtonLabel() => $_clearField(6);

  /// 城市 ID
  @$pb.TagNumber(7)
  $core.int get cityId => $_getIZ(6);
  @$pb.TagNumber(7)
  set cityId($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCityId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCityId() => $_clearField(7);

  /// 城市名称
  @$pb.TagNumber(8)
  $core.String get cityName => $_getSZ(7);
  @$pb.TagNumber(8)
  set cityName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCityName() => $_has(7);
  @$pb.TagNumber(8)
  void clearCityName() => $_clearField(8);
}

/// 动态同城页请求参数
class DynOurCityReq extends $pb.GeneratedMessage {
  factory DynOurCityReq({
    $fixnum.Int64? cityId,
    $core.double? lat,
    $core.double? lng,
    $core.String? offset,
    $core.int? pageSize,
    $core.int? teenagersMode,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
    $core.int? lbsState,
    $core.int? refreshCity,
    ExpConf? expConf,
    $1.PlayerArgs? playerArgs,
    $fixnum.Int64? cityCode,
    $fixnum.Int64? buildTime,
  }) {
    final result = create();
    if (cityId != null) result.cityId = cityId;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (offset != null) result.offset = offset;
    if (pageSize != null) result.pageSize = pageSize;
    if (teenagersMode != null) result.teenagersMode = teenagersMode;
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    if (lbsState != null) result.lbsState = lbsState;
    if (refreshCity != null) result.refreshCity = refreshCity;
    if (expConf != null) result.expConf = expConf;
    if (playerArgs != null) result.playerArgs = playerArgs;
    if (cityCode != null) result.cityCode = cityCode;
    if (buildTime != null) result.buildTime = buildTime;
    return result;
  }

  DynOurCityReq._();

  factory DynOurCityReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCityReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcityreqgetdefault=': ')
  static DynOurCityReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityReq>(create);
  static DynOurCityReq? _defaultInstance;

  /// 城市 ID
  @$pb.TagNumber(1)
  $fixnum.Int64 get cityId => $_getI64(0);
  @$pb.TagNumber(1)
  set cityId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCityId() => $_clearField(1);

  /// 纬度
  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => $_clearField(2);

  /// 精度
  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => $_clearField(3);

  /// 透传上一次接口请求返回的 offset
  @$pb.TagNumber(4)
  $core.String get offset => $_getSZ(3);
  @$pb.TagNumber(4)
  set offset($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);

  /// 每页元素个数
  @$pb.TagNumber(5)
  $core.int get pageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageSize($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageSize() => $_clearField(5);

  /// 青少年模式
  @$pb.TagNumber(6)
  $core.int get teenagersMode => $_getIZ(5);
  @$pb.TagNumber(6)
  set teenagersMode($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTeenagersMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearTeenagersMode() => $_clearField(6);

  /// 清晰度 (供秒开)
  @$pb.TagNumber(7)
  $core.int get qn => $_getIZ(6);
  @$pb.TagNumber(7)
  set qn($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasQn() => $_has(6);
  @$pb.TagNumber(7)
  void clearQn() => $_clearField(7);

  /// 功能版本号 (供秒开)
  @$pb.TagNumber(8)
  $core.int get fnver => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnver($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFnver() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnver() => $_clearField(8);

  /// 功能标识 (供秒开)
  @$pb.TagNumber(9)
  $core.int get fnval => $_getIZ(8);
  @$pb.TagNumber(9)
  set fnval($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFnval() => $_has(8);
  @$pb.TagNumber(9)
  void clearFnval() => $_clearField(9);

  /// 返回 playurl 是否强制使用域名 (供秒开)
  @$pb.TagNumber(10)
  $core.int get forceHost => $_getIZ(9);
  @$pb.TagNumber(10)
  set forceHost($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasForceHost() => $_has(9);
  @$pb.TagNumber(10)
  void clearForceHost() => $_clearField(10);

  /// 是否需要 4K 视频 (供秒开)
  @$pb.TagNumber(11)
  $core.int get fourk => $_getIZ(10);
  @$pb.TagNumber(11)
  set fourk($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFourk() => $_has(10);
  @$pb.TagNumber(11)
  void clearFourk() => $_clearField(11);

  /// 是否开启 LBS
  @$pb.TagNumber(12)
  $core.int get lbsState => $_getIZ(11);
  @$pb.TagNumber(12)
  set lbsState($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLbsState() => $_has(11);
  @$pb.TagNumber(12)
  void clearLbsState() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get refreshCity => $_getIZ(12);
  @$pb.TagNumber(13)
  set refreshCity($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRefreshCity() => $_has(12);
  @$pb.TagNumber(13)
  void clearRefreshCity() => $_clearField(13);

  /// ab 测试配置
  @$pb.TagNumber(14)
  ExpConf get expConf => $_getN(13);
  @$pb.TagNumber(14)
  set expConf(ExpConf value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasExpConf() => $_has(13);
  @$pb.TagNumber(14)
  void clearExpConf() => $_clearField(14);
  @$pb.TagNumber(14)
  ExpConf ensureExpConf() => $_ensure(13);

  /// 播放器参数 (供秒开)
  @$pb.TagNumber(15)
  $1.PlayerArgs get playerArgs => $_getN(14);
  @$pb.TagNumber(15)
  set playerArgs($1.PlayerArgs value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPlayerArgs() => $_has(14);
  @$pb.TagNumber(15)
  void clearPlayerArgs() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.PlayerArgs ensurePlayerArgs() => $_ensure(14);

  @$pb.TagNumber(16)
  $fixnum.Int64 get cityCode => $_getI64(15);
  @$pb.TagNumber(16)
  set cityCode($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCityCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearCityCode() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get buildTime => $_getI64(16);
  @$pb.TagNumber(17)
  set buildTime($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasBuildTime() => $_has(16);
  @$pb.TagNumber(17)
  void clearBuildTime() => $_clearField(17);
}

/// 动态同城开关请求参数
class DynOurCitySwitchReq extends $pb.GeneratedMessage {
  factory DynOurCitySwitchReq({
    $core.int? switch_1,
  }) {
    final result = create();
    if (switch_1 != null) result.switch_1 = switch_1;
    return result;
  }

  DynOurCitySwitchReq._();

  factory DynOurCitySwitchReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynOurCitySwitchReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynourcityswitchreqgetde': ')
  static DynOurCitySwitchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCitySwitchReq>(create);
  static DynOurCitySwitchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get switch_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set switch_1($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSwitch_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitch_1() => $_clearField(1);
}

/// 红点具体信息
class DynRedItem extends $pb.GeneratedMessage {
  factory DynRedItem({
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (count != null) result.count = count;
    return result;
  }

  DynRedItem._();

  factory DynRedItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynRedItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynreditemgetdefault=>_d': ')
  static DynRedItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedItem>(create);
  static DynRedItem? _defaultInstance;

  /// 数字红点有效更新数
  @$pb.TagNumber(1)
  $fixnum.Int64 get count => $_getI64(0);
  @$pb.TagNumber(1)
  set count($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => $_clearField(1);
}

/// 动态红点返回值
class DynRedReply extends $pb.GeneratedMessage {
  factory DynRedReply({
    $core.String? redType,
    DynRedItem? dynRedItem,
    $core.String? defaultTab,
    DynRedStyle? redStyle,
    $core.String? tabRecallExtra,
    BubbleInfo? bubbleInfo,
  }) {
    final result = create();
    if (redType != null) result.redType = redType;
    if (dynRedItem != null) result.dynRedItem = dynRedItem;
    if (defaultTab != null) result.defaultTab = defaultTab;
    if (redStyle != null) result.redStyle = redStyle;
    if (tabRecallExtra != null) result.tabRecallExtra = tabRecallExtra;
    if (bubbleInfo != null) result.bubbleInfo = bubbleInfo;
    return result;
  }

  DynRedReply._();

  factory DynRedReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynRedReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynredreplygetdefault=>_': ')
  static DynRedReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedReply>(create);
  static DynRedReply? _defaultInstance;

  /// 动态红点类型
  ///
  /// - count: 数字红点
  /// - point: 普通红点
  /// - no_point: 没有红点
  @$pb.TagNumber(1)
  $core.String get redType => $_getSZ(0);
  @$pb.TagNumber(1)
  set redType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRedType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedType() => $_clearField(1);

  /// 动态红点具体信息, 参见 [`DynRedItem`]
  @$pb.TagNumber(2)
  DynRedItem get dynRedItem => $_getN(1);
  @$pb.TagNumber(2)
  set dynRedItem(DynRedItem value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDynRedItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynRedItem() => $_clearField(2);
  @$pb.TagNumber(2)
  DynRedItem ensureDynRedItem() => $_ensure(1);

  /// 动态红点默认 tab 值, 对应 tab 接口下发的 anchor
  @$pb.TagNumber(3)
  $core.String get defaultTab => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultTab($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultTab() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultTab() => $_clearField(3);

  /// 动态红点样式
  @$pb.TagNumber(4)
  DynRedStyle get redStyle => $_getN(3);
  @$pb.TagNumber(4)
  set redStyle(DynRedStyle value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRedStyle() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedStyle() => $_clearField(4);
  @$pb.TagNumber(4)
  DynRedStyle ensureRedStyle() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get tabRecallExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set tabRecallExtra($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTabRecallExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearTabRecallExtra() => $_clearField(5);

  @$pb.TagNumber(6)
  BubbleInfo get bubbleInfo => $_getN(5);
  @$pb.TagNumber(6)
  set bubbleInfo(BubbleInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBubbleInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearBubbleInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  BubbleInfo ensureBubbleInfo() => $_ensure(5);
}

/// 动态红点请求参数
class DynRedReq extends $pb.GeneratedMessage {
  factory DynRedReq({
    $core.Iterable<TabOffset>? tabOffset,
    $core.bool? isNewInstall,
    $core.bool? isCodeStart,
    $core.Iterable<$fixnum.Int64>? newFollowUpMids,
    DynRedReq_DynRedReqScene? reqScene,
  }) {
    final result = create();
    if (tabOffset != null) result.tabOffset.addAll(tabOffset);
    if (isNewInstall != null) result.isNewInstall = isNewInstall;
    if (isCodeStart != null) result.isCodeStart = isCodeStart;
    if (newFollowUpMids != null) result.newFollowUpMids.addAll(newFollowUpMids);
    if (reqScene != null) result.reqScene = reqScene;
    return result;
  }

  DynRedReq._();

  factory DynRedReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynRedReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynredreqgetdefault=>_de': ')
  static DynRedReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynRedReq>(create);
  static DynRedReq? _defaultInstance;

  /// 参见 [`TabOffset`]
  @$pb.TagNumber(1)
  $pb.PbList<TabOffset> get tabOffset => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isNewInstall => $_getBF(1);
  @$pb.TagNumber(2)
  set isNewInstall($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsNewInstall() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNewInstall() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isCodeStart => $_getBF(2);
  @$pb.TagNumber(3)
  set isCodeStart($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsCodeStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsCodeStart() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get newFollowUpMids => $_getList(3);

  @$pb.TagNumber(5)
  DynRedReq_DynRedReqScene get reqScene => $_getN(4);
  @$pb.TagNumber(5)
  set reqScene(DynRedReq_DynRedReqScene value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReqScene() => $_has(4);
  @$pb.TagNumber(5)
  void clearReqScene() => $_clearField(5);
}

/// 动态红点样式
class DynRedStyle extends $pb.GeneratedMessage {
  factory DynRedStyle({
    BgType? bgType,
    CornerType? cornerType,
    $core.int? displayTime,
    $core.String? cornerMark,
    DynRedStyleUp? up,
    StyleType? type,
    CornerInfo? cornerInfo,
  }) {
    final result = create();
    if (bgType != null) result.bgType = bgType;
    if (cornerType != null) result.cornerType = cornerType;
    if (displayTime != null) result.displayTime = displayTime;
    if (cornerMark != null) result.cornerMark = cornerMark;
    if (up != null) result.up = up;
    if (type != null) result.type = type;
    if (cornerInfo != null) result.cornerInfo = cornerInfo;
    return result;
  }

  DynRedStyle._();

  factory DynRedStyle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynRedStyle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynredstyleupgetdefault=': ')
  static DynRedStyleUp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedStyleUp>(create);
  static DynRedStyleUp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get face => $_getSZ(1);
  @$pb.TagNumber(2)
  set face($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFace() => $_has(1);
  @$pb.TagNumber(2)
  void clearFace() => $_clearField(2);

  @$pb.TagNumber(3)
  StyleType get faceType => $_getN(2);
  @$pb.TagNumber(3)
  set faceType(StyleType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFaceType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFaceType() => $_clearField(3);

  @$pb.TagNumber(4)
  Color get borderColor => $_getN(3);
  @$pb.TagNumber(4)
  set borderColor(Color value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBorderColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorderColor() => $_clearField(4);
  @$pb.TagNumber(4)
  Color ensureBorderColor() => $_ensure(3);
}

/// 动态 tab
class DynTab extends $pb.GeneratedMessage {
  factory DynTab({
    $core.String? title,
    $core.String? uri,
    $core.String? bubble,
    $core.int? redPoint,
    $fixnum.Int64? cityId,
    $core.int? isPopup,
    Popup? popup,
    $core.bool? defaultTab,
    $core.String? subTitle,
    $core.String? anchor,
    $core.String? internalTest,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (bubble != null) result.bubble = bubble;
    if (redPoint != null) result.redPoint = redPoint;
    if (cityId != null) result.cityId = cityId;
    if (isPopup != null) result.isPopup = isPopup;
    if (popup != null) result.popup = popup;
    if (defaultTab != null) result.defaultTab = defaultTab;
    if (subTitle != null) result.subTitle = subTitle;
    if (anchor != null) result.anchor = anchor;
    if (internalTest != null) result.internalTest = internalTest;
    return result;
  }

  DynTab._();

  factory DynTab.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynTab.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdyntabgetdefault=>_defau': ')
  static DynTab getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynTab>(create);
  static DynTab? _defaultInstance;

  /// tab 标题
  ///
  /// 优先展示用, 未开启状态第一次请求返回 `同城`, 后续请求返回对应城市名
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转链接
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 气泡内容
  @$pb.TagNumber(3)
  $core.String get bubble => $_getSZ(2);
  @$pb.TagNumber(3)
  set bubble($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBubble() => $_has(2);
  @$pb.TagNumber(3)
  void clearBubble() => $_clearField(3);

  /// 是否推红点
  @$pb.TagNumber(4)
  $core.int get redPoint => $_getIZ(3);
  @$pb.TagNumber(4)
  set redPoint($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRedPoint() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedPoint() => $_clearField(4);

  /// 城市 ID
  @$pb.TagNumber(5)
  $fixnum.Int64 get cityId => $_getI64(4);
  @$pb.TagNumber(5)
  set cityId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCityId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCityId() => $_clearField(5);

  /// 是否弹窗
  @$pb.TagNumber(6)
  $core.int get isPopup => $_getIZ(5);
  @$pb.TagNumber(6)
  set isPopup($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsPopup() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPopup() => $_clearField(6);

  /// 弹窗内容
  @$pb.TagNumber(7)
  Popup get popup => $_getN(6);
  @$pb.TagNumber(7)
  set popup(Popup value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPopup() => $_has(6);
  @$pb.TagNumber(7)
  void clearPopup() => $_clearField(7);
  @$pb.TagNumber(7)
  Popup ensurePopup() => $_ensure(6);

  /// 是否默认 tab
  @$pb.TagNumber(8)
  $core.bool get defaultTab => $_getBF(7);
  @$pb.TagNumber(8)
  set defaultTab($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDefaultTab() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefaultTab() => $_clearField(8);

  /// 副标题
  ///
  /// 对应城市名
  @$pb.TagNumber(9)
  $core.String get subTitle => $_getSZ(8);
  @$pb.TagNumber(9)
  set subTitle($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSubTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearSubTitle() => $_clearField(9);

  /// 锚点字段
  @$pb.TagNumber(10)
  $core.String get anchor => $_getSZ(9);
  @$pb.TagNumber(10)
  set anchor($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAnchor() => $_has(9);
  @$pb.TagNumber(10)
  void clearAnchor() => $_clearField(10);

  /// ? 内部测试
  @$pb.TagNumber(11)
  $core.String get internalTest => $_getSZ(10);
  @$pb.TagNumber(11)
  set internalTest($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasInternalTest() => $_has(10);
  @$pb.TagNumber(11)
  void clearInternalTest() => $_clearField(11);
}

/// 动态 tab 请求返回值
class DynTabReply extends $pb.GeneratedMessage {
  factory DynTabReply({
    $core.Iterable<DynTab>? dynTab,
  }) {
    final result = create();
    if (dynTab != null) result.dynTab.addAll(dynTab);
    return result;
  }

  DynTabReply._();

  factory DynTabReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynTabReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdyntabreplygetdefault=>_': ')
  static DynTabReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynTabReply>(create);
  static DynTabReply? _defaultInstance;

  /// 参见 [`DynTab`]
  @$pb.TagNumber(1)
  $pb.PbList<DynTab> get dynTab => $_getList(0);
}

/// 动态 tab 请求参数
class DynTabReq extends $pb.GeneratedMessage {
  factory DynTabReq({
    $core.int? teenagersMode,
  }) {
    final result = create();
    if (teenagersMode != null) result.teenagersMode = teenagersMode;
    return result;
  }

  DynTabReq._();

  factory DynTabReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynTabReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdyntabreqgetdefault=>_de': ')
  static DynTabReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynTabReq>(create);
  static DynTabReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => $_clearField(1);
}

/// 最近访问标记已读请求参数
class DynUpdOffsetReq extends $pb.GeneratedMessage {
  factory DynUpdOffsetReq({
    $fixnum.Int64? hostUid,
    $core.String? readOffset,
  }) {
    final result = create();
    if (hostUid != null) result.hostUid = hostUid;
    if (readOffset != null) result.readOffset = readOffset;
    return result;
  }

  DynUpdOffsetReq._();

  factory DynUpdOffsetReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynUpdOffsetReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynupdoffsetreqgetdefaul': ')
  static DynUpdOffsetReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynUpdOffsetReq>(create);
  static DynUpdOffsetReq? _defaultInstance;

  /// 被访问者的 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get hostUid => $_getI64(0);
  @$pb.TagNumber(1)
  set hostUid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostUid() => $_clearField(1);

  /// 用户已读进度
  @$pb.TagNumber(2)
  $core.String get readOffset => $_getSZ(1);
  @$pb.TagNumber(2)
  set readOffset($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReadOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadOffset() => $_clearField(2);
}

/// 最近访问个人视频 feed 流返回值
class DynVideoPersonalReply extends $pb.GeneratedMessage {
  factory DynVideoPersonalReply({
    $core.Iterable<DynamicItem>? list,
    $core.String? offset,
    $core.int? hasMore,
    $core.String? readOffset,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (offset != null) result.offset = offset;
    if (hasMore != null) result.hasMore = hasMore;
    if (readOffset != null) result.readOffset = readOffset;
    return result;
  }

  DynVideoPersonalReply._();

  factory DynVideoPersonalReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynVideoPersonalReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynvideopersonalreplyget': ')
  static DynVideoPersonalReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoPersonalReply>(create);
  static DynVideoPersonalReply? _defaultInstance;

  /// 参见 [`DynamicItem`]
  @$pb.TagNumber(1)
  $pb.PbList<DynamicItem> get list => $_getList(0);

  /// 偏移量
  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);

  /// 是否还有更多
  @$pb.TagNumber(3)
  $core.int get hasMore => $_getIZ(2);
  @$pb.TagNumber(3)
  set hasMore($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasMore() => $_clearField(3);

  /// 已读进度
  @$pb.TagNumber(4)
  $core.String get readOffset => $_getSZ(3);
  @$pb.TagNumber(4)
  set readOffset($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReadOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadOffset() => $_clearField(4);
}

/// 最近访问个人视频 feed 流请求参数
class DynVideoPersonalReq extends $pb.GeneratedMessage {
  factory DynVideoPersonalReq({
    $core.int? teenagersMode,
    $fixnum.Int64? hostUid,
    $core.String? offset,
    $core.int? page,
    $core.int? isPreload,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final result = create();
    if (teenagersMode != null) result.teenagersMode = teenagersMode;
    if (hostUid != null) result.hostUid = hostUid;
    if (offset != null) result.offset = offset;
    if (page != null) result.page = page;
    if (isPreload != null) result.isPreload = isPreload;
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    return result;
  }

  DynVideoPersonalReq._();

  factory DynVideoPersonalReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynVideoPersonalReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynvideopersonalreqgetde': ')
  static DynVideoPersonalReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoPersonalReq>(create);
  static DynVideoPersonalReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => $_clearField(1);

  /// 被访问者的 mid
  @$pb.TagNumber(2)
  $fixnum.Int64 get hostUid => $_getI64(1);
  @$pb.TagNumber(2)
  set hostUid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHostUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostUid() => $_clearField(2);

  /// 偏移量
  ///
  /// 第一页可传空
  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => $_clearField(3);

  /// 标明下拉几次
  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => $_clearField(4);

  /// 是否是预加载
  @$pb.TagNumber(5)
  $core.int get isPreload => $_getIZ(4);
  @$pb.TagNumber(5)
  set isPreload($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsPreload() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPreload() => $_clearField(5);

  /// 清晰度 (供秒开)
  @$pb.TagNumber(6)
  $core.int get qn => $_getIZ(5);
  @$pb.TagNumber(6)
  set qn($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasQn() => $_has(5);
  @$pb.TagNumber(6)
  void clearQn() => $_clearField(6);

  /// 功能版本号 (供秒开)
  @$pb.TagNumber(7)
  $core.int get fnver => $_getIZ(6);
  @$pb.TagNumber(7)
  set fnver($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFnver() => $_has(6);
  @$pb.TagNumber(7)
  void clearFnver() => $_clearField(7);

  /// 功能标识 (供秒开)
  @$pb.TagNumber(8)
  $core.int get fnval => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnval($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFnval() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnval() => $_clearField(8);

  /// 返回 playurl 是否强制使用域名 (供秒开)
  @$pb.TagNumber(9)
  $core.int get forceHost => $_getIZ(8);
  @$pb.TagNumber(9)
  set forceHost($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasForceHost() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceHost() => $_clearField(9);

  /// 是否需要 4K 视频 (供秒开)
  @$pb.TagNumber(10)
  $core.int get fourk => $_getIZ(9);
  @$pb.TagNumber(10)
  set fourk($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFourk() => $_has(9);
  @$pb.TagNumber(10)
  void clearFourk() => $_clearField(10);
}

/// 动态视频页请求参数
class DynVideoReq extends $pb.GeneratedMessage {
  factory DynVideoReq({
    $core.int? teenagersMode,
    $core.String? updateBaseline,
    $core.String? offset,
    $core.int? page,
    $core.int? refreshType,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final result = create();
    if (teenagersMode != null) result.teenagersMode = teenagersMode;
    if (updateBaseline != null) result.updateBaseline = updateBaseline;
    if (offset != null) result.offset = offset;
    if (page != null) result.page = page;
    if (refreshType != null) result.refreshType = refreshType;
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    return result;
  }

  DynVideoReq._();

  factory DynVideoReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynVideoReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynvideoreqgetdefault=>_': ')
  static DynVideoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoReq>(create);
  static DynVideoReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => $_clearField(1);

  /// 透传参数
  @$pb.TagNumber(2)
  $core.String get updateBaseline => $_getSZ(1);
  @$pb.TagNumber(2)
  set updateBaseline($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdateBaseline() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateBaseline() => $_clearField(2);

  /// 透传参数
  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => $_clearField(3);

  /// 向下翻页数
  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => $_clearField(4);

  /// 刷新方式
  ///
  /// - 1: 向上刷新
  /// - 2: 向下翻页
  @$pb.TagNumber(5)
  $core.int get refreshType => $_getIZ(4);
  @$pb.TagNumber(5)
  set refreshType($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRefreshType() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshType() => $_clearField(5);

  /// 清晰度 (供秒开)
  @$pb.TagNumber(6)
  $core.int get qn => $_getIZ(5);
  @$pb.TagNumber(6)
  set qn($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasQn() => $_has(5);
  @$pb.TagNumber(6)
  void clearQn() => $_clearField(6);

  /// 功能版本号 (供秒开)
  @$pb.TagNumber(7)
  $core.int get fnver => $_getIZ(6);
  @$pb.TagNumber(7)
  set fnver($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFnver() => $_has(6);
  @$pb.TagNumber(7)
  void clearFnver() => $_clearField(7);

  /// 功能标识 (供秒开)
  @$pb.TagNumber(8)
  $core.int get fnval => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnval($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFnval() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnval() => $_clearField(8);

  /// 返回 playurl 是否强制使用域名 (供秒开)
  @$pb.TagNumber(9)
  $core.int get forceHost => $_getIZ(8);
  @$pb.TagNumber(9)
  set forceHost($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasForceHost() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceHost() => $_clearField(9);

  /// 是否需要 4K 视频 (供秒开)
  @$pb.TagNumber(10)
  $core.int get fourk => $_getIZ(9);
  @$pb.TagNumber(10)
  set fourk($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFourk() => $_has(9);
  @$pb.TagNumber(10)
  void clearFourk() => $_clearField(10);
}

/// 动态视频页返回值
class DynVideoReqReply extends $pb.GeneratedMessage {
  factory DynVideoReqReply({
    $core.Iterable<DynamicItem>? list,
    $core.int? updateNum,
    $core.String? historyOffset,
    $core.String? updateBaseline,
    $core.int? hasMore,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (updateNum != null) result.updateNum = updateNum;
    if (historyOffset != null) result.historyOffset = historyOffset;
    if (updateBaseline != null) result.updateBaseline = updateBaseline;
    if (hasMore != null) result.hasMore = hasMore;
    return result;
  }

  DynVideoReqReply._();

  factory DynVideoReqReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynVideoReqReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticdynvideoreqreplygetdefau': ')
  static DynVideoReqReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoReqReply>(create);
  static DynVideoReqReply? _defaultInstance;

  /// 动态列表
  @$pb.TagNumber(1)
  $pb.PbList<DynamicItem> get list => $_getList(0);

  /// 更新的动态数
  @$pb.TagNumber(2)
  $core.int get updateNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set updateNum($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdateNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateNum() => $_clearField(2);

  /// 历史偏移
  @$pb.TagNumber(3)
  $core.String get historyOffset => $_getSZ(2);
  @$pb.TagNumber(3)
  set historyOffset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHistoryOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryOffset() => $_clearField(3);

  /// 更新基础信息
  @$pb.TagNumber(4)
  $core.String get updateBaseline => $_getSZ(3);
  @$pb.TagNumber(4)
  set updateBaseline($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdateBaseline() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateBaseline() => $_clearField(4);

  /// 是否还有更多
  @$pb.TagNumber(5)
  $core.int get hasMore => $_getIZ(4);
  @$pb.TagNumber(5)
  set hasMore($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHasMore() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasMore() => $_clearField(5);
}

/// 动态卡片项
class DynamicItem extends $pb.GeneratedMessage {
  factory DynamicItem({
    $core.String? cardType,
    $core.String? itemType,
    $core.Iterable<Module>? modules,
    $core.String? dynIdStr,
    $core.String? origDynIdStr,
    $core.int? rType,
    $core.int? hasFold,
  }) {
    final result = create();
    if (cardType != null) result.cardType = cardType;
    if (itemType != null) result.itemType = itemType;
    if (modules != null) result.modules.addAll(modules);
    if (dynIdStr != null) result.dynIdStr = dynIdStr;
    if (origDynIdStr != null) result.origDynIdStr = origDynIdStr;
    if (rType != null) result.rType = rType;
    if (hasFold != null) result.hasFold = hasFold;
    return result;
  }

  DynamicItem._();

  factory DynamicItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynamicItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticentranceitemgetdefault=>': ')
  static EntranceItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntranceItem>(create);
  static EntranceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get goto => $_getSZ(0);
  @$pb.TagNumber(1)
  set goto($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoto() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get moduleId => $_getSZ(3);
  @$pb.TagNumber(4)
  set moduleId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasModuleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get uri => $_getSZ(4);
  @$pb.TagNumber(5)
  set uri($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUri() => $_has(4);
  @$pb.TagNumber(5)
  void clearUri() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get entranceId => $_getI64(5);
  @$pb.TagNumber(6)
  set entranceId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEntranceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntranceId() => $_clearField(6);

  @$pb.TagNumber(7)
  Bubble get bubble => $_getN(6);
  @$pb.TagNumber(7)
  set bubble(Bubble value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBubble() => $_has(6);
  @$pb.TagNumber(7)
  void clearBubble() => $_clearField(7);
  @$pb.TagNumber(7)
  Bubble ensureBubble() => $_ensure(6);

  /// 入口类型
  ///
  /// - 1: 分品类热门
  @$pb.TagNumber(8)
  $core.int get entranceType => $_getIZ(7);
  @$pb.TagNumber(8)
  set entranceType($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasEntranceType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEntranceType() => $_clearField(8);
}

class FunctionalButton extends $pb.GeneratedMessage {
  factory FunctionalButton({
    $core.int? type,
    $core.Iterable<FunctionalButtonMeta>? buttonMetas,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (buttonMetas != null) result.buttonMetas.addAll(buttonMetas);
    return result;
  }

  FunctionalButton._();

  factory FunctionalButton.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FunctionalButton.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticexpconfgetdefault=>_defa': ')
  static ExpConf getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpConf>(create);
  static ExpConf? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get expEnable => $_getIZ(0);
  @$pb.TagNumber(1)
  set expEnable($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExpEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpEnable() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Exp> get exps => $_getList(1);
}

/// 拓展信息: 游戏小卡
class ExtInfoGame extends $pb.GeneratedMessage {
  factory ExtInfoGame({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (icon != null) result.icon = icon;
    return result;
  }

  ExtInfoGame._();

  factory ExtInfoGame.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExtInfoGame.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticextendgetdefault=>_defau': ')
  static Extend getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Extend>(create);
  static Extend? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Extend_Extend whichExtend() => _Extend_ExtendByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearExtend() => $_clearField($_whichOneof(0));

  /// 类型
  ///
  /// - 话题小卡: `topic`
  /// - lbs: `lbs`
  /// - 热门视频: `hot`
  /// - 游戏: `game`
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// 参见 [`ExtInfoTopic`]
  @$pb.TagNumber(2)
  ExtInfoTopic get extInfoTopic => $_getN(1);
  @$pb.TagNumber(2)
  set extInfoTopic(ExtInfoTopic value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExtInfoTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtInfoTopic() => $_clearField(2);
  @$pb.TagNumber(2)
  ExtInfoTopic ensureExtInfoTopic() => $_ensure(1);

  /// 参见 [`ExtInfoLBS`]
  @$pb.TagNumber(3)
  ExtInfoLBS get extInfoLbs => $_getN(2);
  @$pb.TagNumber(3)
  set extInfoLbs(ExtInfoLBS value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExtInfoLbs() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtInfoLbs() => $_clearField(3);
  @$pb.TagNumber(3)
  ExtInfoLBS ensureExtInfoLbs() => $_ensure(2);

  /// 参见 [`ExtInfoHot`]
  @$pb.TagNumber(4)
  ExtInfoHot get extInfoHot => $_getN(3);
  @$pb.TagNumber(4)
  set extInfoHot(ExtInfoHot value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExtInfoHot() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtInfoHot() => $_clearField(4);
  @$pb.TagNumber(4)
  ExtInfoHot ensureExtInfoHot() => $_ensure(3);

  /// 参见 [`ExtInfoGame`]
  @$pb.TagNumber(5)
  ExtInfoGame get extInfoGame => $_getN(4);
  @$pb.TagNumber(5)
  set extInfoGame(ExtInfoGame value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtInfoGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtInfoGame() => $_clearField(5);
  @$pb.TagNumber(5)
  ExtInfoGame ensureExtInfoGame() => $_ensure(4);
}

/// 我的追番列表项目
class FollowListItem extends $pb.GeneratedMessage {
  factory FollowListItem({
    $core.int? seasonId,
    $core.String? title,
    $core.String? cover,
    $core.String? url,
    NewEP? newEp,
  }) {
    final result = create();
    if (seasonId != null) result.seasonId = seasonId;
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (url != null) result.url = url;
    if (newEp != null) result.newEp = newEp;
    return result;
  }

  FollowListItem._();

  factory FollowListItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FollowListItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticextinfogamegetdefault=>_': ')
  static ExtInfoGame getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoGame>(create);
  static ExtInfoGame? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);
}

/// 拓展信息: 热门视频
class ExtInfoHot extends $pb.GeneratedMessage {
  factory ExtInfoHot({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (icon != null) result.icon = icon;
    return result;
  }

  ExtInfoHot._();

  factory ExtInfoHot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExtInfoHot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticextinfohotgetdefault=>_d': ')
  static ExtInfoHot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoHot>(create);
  static ExtInfoHot? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);
}

/// 拓展信息: LBS
class ExtInfoLBS extends $pb.GeneratedMessage {
  factory ExtInfoLBS({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
    $core.int? poiType,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (icon != null) result.icon = icon;
    if (poiType != null) result.poiType = poiType;
    return result;
  }

  ExtInfoLBS._();

  factory ExtInfoLBS.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExtInfoLBS.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticextinfolbsgetdefault=>_d': ')
  static ExtInfoLBS getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoLBS>(create);
  static ExtInfoLBS? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get poiType => $_getIZ(3);
  @$pb.TagNumber(4)
  set poiType($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPoiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPoiType() => $_clearField(4);
}

/// 拓展信息: 话题小卡
class ExtInfoTopic extends $pb.GeneratedMessage {
  factory ExtInfoTopic({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (uri != null) result.uri = uri;
    if (icon != null) result.icon = icon;
    return result;
  }

  ExtInfoTopic._();

  factory ExtInfoTopic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExtInfoTopic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticextinfotopicgetdefault=>': ')
  static ExtInfoTopic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoTopic>(create);
  static ExtInfoTopic? _defaultInstance;

  /// 话题名
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// 图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);
}

enum Extend_Extend { extInfoTopic, extInfoLbs, extInfoHot, extInfoGame, notSet }

/// 拓展
class Extend extends $pb.GeneratedMessage {
  factory Extend({
    $core.String? type,
    ExtInfoTopic? extInfoTopic,
    ExtInfoLBS? extInfoLbs,
    ExtInfoHot? extInfoHot,
    ExtInfoGame? extInfoGame,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (extInfoTopic != null) result.extInfoTopic = extInfoTopic;
    if (extInfoLbs != null) result.extInfoLbs = extInfoLbs;
    if (extInfoHot != null) result.extInfoHot = extInfoHot;
    if (extInfoGame != null) result.extInfoGame = extInfoGame;
    return result;
  }

  Extend._();

  factory Extend.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Extend.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Extend_Extend> _Extend_ExtendByTag = {
    2: Extend_Extend.extInfoTopic,
    3: Extend_Extend.extInfoLbs,
    4: Extend_Extend.extInfoHot,
    5: Extend_Extend.extInfoGame,
    0: Extend_Extend.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticfollowlistitemgetdefault': ')
  static FollowListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FollowListItem>(create);
  static FollowListItem? _defaultInstance;

  /// 剧集 ID
  @$pb.TagNumber(1)
  $core.int get seasonId => $_getIZ(0);
  @$pb.TagNumber(1)
  set seasonId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeasonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeasonId() => $_clearField(1);

  /// 标题
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  /// 封面
  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);

  /// 跳转链接
  @$pb.TagNumber(4)
  $core.String get url => $_getSZ(3);
  @$pb.TagNumber(4)
  set url($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => $_clearField(4);

  /// 剧集最新分集
  @$pb.TagNumber(5)
  NewEP get newEp => $_getN(4);
  @$pb.TagNumber(5)
  set newEp(NewEP value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasNewEp() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewEp() => $_clearField(5);
  @$pb.TagNumber(5)
  NewEP ensureNewEp() => $_ensure(4);
}

class GeoCoderReply extends $pb.GeneratedMessage {
  factory GeoCoderReply({
    $core.String? address,
    AddressComponent? addressComponent,
    AdInfo? adInfo,
  }) {
    final result = create();
    if (address != null) result.address = address;
    if (addressComponent != null) result.addressComponent = addressComponent;
    if (adInfo != null) result.adInfo = adInfo;
    return result;
  }

  GeoCoderReply._();

  factory GeoCoderReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GeoCoderReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticfuture<int>gettotalsizeo': ')
  static Future<int> getTotalSizeOfFilesInDir(final Directory file) async {
    int total = 0;
    await for (final child in file.list(recursive: false)) {
      if (child is File) {
        total += await child.length();
      } else if (child is Directory) {
        if (path.equals(child.path, manager.cacheDir)) {
          total += manager.getTotalLength();
        } else {
          await for (final i in child.list(recursive: true)) {
            if (i is File) {
              total += await i.length();
            }
          }
        }
      }
    }
    return total;
  }

  // 缓存大小格式转换
  static String formatSize(num value) {
    const unitArr = [',
  'general.staticfuture<int>loadapplicati': ')
  static Future<int> loadApplicationCache() async {
    try {
      final Directory tempDirectory = await getTemporaryDirectory();
      if (PlatformUtils.isDesktop) {
        return manager.getTotalLength();
      }

      if (tempDirectory.existsSync()) {
        return await getTotalSizeOfFilesInDir(tempDirectory);
      }
    } catch (_) {}
    return 0;
  }

  // 循环计算文件的大小
  @pragma(',
  'general.staticgpsgetdefault=>_defaulti': ')
  static Gps getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gps>(create);
  static Gps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => $_clearField(2);
}

/// 点赞动画
class LikeAnimation extends $pb.GeneratedMessage {
  factory LikeAnimation({
    $core.String? begin,
    $core.String? proc,
    $core.String? end,
    $fixnum.Int64? likeIconId,
  }) {
    final result = create();
    if (begin != null) result.begin = begin;
    if (proc != null) result.proc = proc;
    if (end != null) result.end = end;
    if (likeIconId != null) result.likeIconId = likeIconId;
    return result;
  }

  LikeAnimation._();

  factory LikeAnimation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeAnimation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticlikeanimationgetdefault=': ')
  static LikeAnimation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikeAnimation>(create);
  static LikeAnimation? _defaultInstance;

  /// 开始动画
  @$pb.TagNumber(1)
  $core.String get begin => $_getSZ(0);
  @$pb.TagNumber(1)
  set begin($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearBegin() => $_clearField(1);

  /// 过程动画
  @$pb.TagNumber(2)
  $core.String get proc => $_getSZ(1);
  @$pb.TagNumber(2)
  set proc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProc() => $_has(1);
  @$pb.TagNumber(2)
  void clearProc() => $_clearField(2);

  /// 结束动画
  @$pb.TagNumber(3)
  $core.String get end => $_getSZ(2);
  @$pb.TagNumber(3)
  set end($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnd() => $_clearField(3);

  /// ID
  @$pb.TagNumber(4)
  $fixnum.Int64 get likeIconId => $_getI64(3);
  @$pb.TagNumber(4)
  set likeIconId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLikeIconId() => $_has(3);
  @$pb.TagNumber(4)
  void clearLikeIconId() => $_clearField(4);
}

/// 点赞拓展信息
class LikeInfo extends $pb.GeneratedMessage {
  factory LikeInfo({
    LikeAnimation? animation,
    $core.int? isLike,
  }) {
    final result = create();
    if (animation != null) result.animation = animation;
    if (isLike != null) result.isLike = isLike;
    return result;
  }

  LikeInfo._();

  factory LikeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticlikeinfogetdefault=>_def': ')
  static LikeInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeInfo>(create);
  static LikeInfo? _defaultInstance;

  /// 点赞动画
  @$pb.TagNumber(1)
  LikeAnimation get animation => $_getN(0);
  @$pb.TagNumber(1)
  set animation(LikeAnimation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAnimation() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnimation() => $_clearField(1);
  @$pb.TagNumber(1)
  LikeAnimation ensureAnimation() => $_ensure(0);

  /// 是否点赞
  @$pb.TagNumber(2)
  $core.int get isLike => $_getIZ(1);
  @$pb.TagNumber(2)
  set isLike($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLike() => $_clearField(2);
}

/// 点赞用户
class LikeUser extends $pb.GeneratedMessage {
  factory LikeUser({
    $fixnum.Int64? uid,
    $core.String? uname,
    $core.String? uri,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (uname != null) result.uname = uname;
    if (uri != null) result.uri = uri;
    return result;
  }

  LikeUser._();

  factory LikeUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticlikeusergetdefault=>_def': ')
  static LikeUser getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeUser>(create);
  static LikeUser? _defaultInstance;

  /// 点赞用户 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  /// 点赞用户昵称
  @$pb.TagNumber(2)
  $core.String get uname => $_getSZ(1);
  @$pb.TagNumber(2)
  set uname($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUname() => $_clearField(2);

  /// 点击跳转链接
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);
}

/// 直播信息
class LiveInfo extends $pb.GeneratedMessage {
  factory LiveInfo({
    $core.int? isLiving,
    $core.String? uri,
  }) {
    final result = create();
    if (isLiving != null) result.isLiving = isLiving;
    if (uri != null) result.uri = uri;
    return result;
  }

  LiveInfo._();

  factory LiveInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LiveInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticliveinfogetdefault=>_def': ')
  static LiveInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveInfo>(create);
  static LiveInfo? _defaultInstance;

  /// 正在直播
  @$pb.TagNumber(1)
  $core.int get isLiving => $_getIZ(0);
  @$pb.TagNumber(1)
  set isLiving($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsLiving() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLiving() => $_clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);
}

class MixUpListItem extends $pb.GeneratedMessage {
  factory MixUpListItem({
    $fixnum.Int64? uid,
    $core.int? specialAttention,
    $core.int? reddotState,
    MixUpListLiveItem? liveInfo,
    $core.String? name,
    $core.String? face,
    OfficialVerify? official,
    VipInfo? vip,
    Relation? relation,
    $core.int? premiereState,
    $core.String? uri,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (specialAttention != null) result.specialAttention = specialAttention;
    if (reddotState != null) result.reddotState = reddotState;
    if (liveInfo != null) result.liveInfo = liveInfo;
    if (name != null) result.name = name;
    if (face != null) result.face = face;
    if (official != null) result.official = official;
    if (vip != null) result.vip = vip;
    if (relation != null) result.relation = relation;
    if (premiereState != null) result.premiereState = premiereState;
    if (uri != null) result.uri = uri;
    return result;
  }

  MixUpListItem._();

  factory MixUpListItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MixUpListItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmixuplistliveitemgetdefa': ')
  static MixUpListLiveItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MixUpListLiveItem>(create);
  static MixUpListLiveItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);
}

enum Module_ModuleItem {
  moduleFold,
  moduleAuthor,
  moduleDynamic,
  moduleState,
  moduleForward,
  moduleExtend,
  moduleDispute,
  moduleDesc,
  moduleLikeUser,
  moduleUpList,
  moduleFollowList,
  notSet
}

/// 卡片模块
class Module extends $pb.GeneratedMessage {
  factory Module({
    $core.String? moduleType,
    ModuleFold? moduleFold,
    ModuleAuthor? moduleAuthor,
    ModuleDynamic? moduleDynamic,
    ModuleState? moduleState,
    ModuleForward? moduleForward,
    ModuleExtend? moduleExtend,
    ModuleDispute? moduleDispute,
    ModuleDesc? moduleDesc,
    ModuleLikeUser? moduleLikeUser,
    ModuleDynUpList? moduleUpList,
    ModuleFollowList? moduleFollowList,
  }) {
    final result = create();
    if (moduleType != null) result.moduleType = moduleType;
    if (moduleFold != null) result.moduleFold = moduleFold;
    if (moduleAuthor != null) result.moduleAuthor = moduleAuthor;
    if (moduleDynamic != null) result.moduleDynamic = moduleDynamic;
    if (moduleState != null) result.moduleState = moduleState;
    if (moduleForward != null) result.moduleForward = moduleForward;
    if (moduleExtend != null) result.moduleExtend = moduleExtend;
    if (moduleDispute != null) result.moduleDispute = moduleDispute;
    if (moduleDesc != null) result.moduleDesc = moduleDesc;
    if (moduleLikeUser != null) result.moduleLikeUser = moduleLikeUser;
    if (moduleUpList != null) result.moduleUpList = moduleUpList;
    if (moduleFollowList != null) result.moduleFollowList = moduleFollowList;
    return result;
  }

  Module._();

  factory Module.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Module.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Module_ModuleItem> _Module_ModuleItemByTag =
      {
    2: Module_ModuleItem.moduleFold,
    3: Module_ModuleItem.moduleAuthor,
    4: Module_ModuleItem.moduleDynamic,
    5: Module_ModuleItem.moduleState,
    6: Module_ModuleItem.moduleForward,
    7: Module_ModuleItem.moduleExtend,
    8: Module_ModuleItem.moduleDispute,
    9: Module_ModuleItem.moduleDesc,
    10: Module_ModuleItem.moduleLikeUser,
    11: Module_ModuleItem.moduleUpList,
    12: Module_ModuleItem.moduleFollowList,
    0: Module_ModuleItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduleauthorgetdefault=>': ')
  static ModuleAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleAuthor>(create);
  static ModuleAuthor? _defaultInstance;

  /// 作者 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// 时间标签
  @$pb.TagNumber(2)
  $core.String get ptimeLabelText => $_getSZ(1);
  @$pb.TagNumber(2)
  set ptimeLabelText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPtimeLabelText() => $_has(1);
  @$pb.TagNumber(2)
  void clearPtimeLabelText() => $_clearField(2);

  /// 用户详情
  @$pb.TagNumber(3)
  UserInfo get author => $_getN(2);
  @$pb.TagNumber(3)
  set author(UserInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => $_clearField(3);
  @$pb.TagNumber(3)
  UserInfo ensureAuthor() => $_ensure(2);

  /// 装扮卡片
  @$pb.TagNumber(4)
  DecorateCard get decorateCard => $_getN(3);
  @$pb.TagNumber(4)
  set decorateCard(DecorateCard value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDecorateCard() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecorateCard() => $_clearField(4);
  @$pb.TagNumber(4)
  DecorateCard ensureDecorateCard() => $_ensure(3);
}

/// Module: 文本内容
class ModuleDesc extends $pb.GeneratedMessage {
  factory ModuleDesc({
    $core.Iterable<Description>? desc,
  }) {
    final result = create();
    if (desc != null) result.desc.addAll(desc);
    return result;
  }

  ModuleDesc._();

  factory ModuleDesc.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleDesc.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduledescgetdefault=>_d': ')
  static ModuleDesc getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDesc>(create);
  static ModuleDesc? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Description> get desc => $_getList(0);
}

/// Module: 争议小黄条
class ModuleDispute extends $pb.GeneratedMessage {
  factory ModuleDispute({
    $core.String? title,
    $core.String? desc,
    $core.String? uri,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (desc != null) result.desc = desc;
    if (uri != null) result.uri = uri;
    return result;
  }

  ModuleDispute._();

  factory ModuleDispute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleDispute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduledisputegetdefault=': ')
  static ModuleDispute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDispute>(create);
  static ModuleDispute? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 描述
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);
}

/// 最近访问 UP 主列表
class ModuleDynUpList extends $pb.GeneratedMessage {
  factory ModuleDynUpList({
    $core.String? moduleTitle,
    $core.String? showAll,
    $core.Iterable<UpListItem>? list,
  }) {
    final result = create();
    if (moduleTitle != null) result.moduleTitle = moduleTitle;
    if (showAll != null) result.showAll = showAll;
    if (list != null) result.list.addAll(list);
    return result;
  }

  ModuleDynUpList._();

  factory ModuleDynUpList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleDynUpList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduledynamicgetdefault=': ')
  static ModuleDynamic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDynamic>(create);
  static ModuleDynamic? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  ModuleDynamic_Card whichCard() => _ModuleDynamic_CardByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearCard() => $_clearField($_whichOneof(0));

  /// 动态卡片类型
  ///
  /// - UGC 视频卡片: `ugc`
  /// - PGC 视频卡片: `pgc`
  /// - 付费课程系列: `currSeason`
  /// - 付费课程批次: `currBatch`
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => $_clearField(1);

  /// UGC 视频卡片
  @$pb.TagNumber(2)
  CardUGC get cardUgc => $_getN(1);
  @$pb.TagNumber(2)
  set cardUgc(CardUGC value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCardUgc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardUgc() => $_clearField(2);
  @$pb.TagNumber(2)
  CardUGC ensureCardUgc() => $_ensure(1);

  /// PGC 视频卡片
  @$pb.TagNumber(3)
  CardPGC get cardPgc => $_getN(2);
  @$pb.TagNumber(3)
  set cardPgc(CardPGC value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCardPgc() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardPgc() => $_clearField(3);
  @$pb.TagNumber(3)
  CardPGC ensureCardPgc() => $_ensure(2);

  /// 付费课程系列
  @$pb.TagNumber(4)
  CardCurrSeason get cardCurrSeason => $_getN(3);
  @$pb.TagNumber(4)
  set cardCurrSeason(CardCurrSeason value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCardCurrSeason() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardCurrSeason() => $_clearField(4);
  @$pb.TagNumber(4)
  CardCurrSeason ensureCardCurrSeason() => $_ensure(3);

  /// 付费课程批次
  @$pb.TagNumber(5)
  CardCurrBatch get cardCurrBatch => $_getN(4);
  @$pb.TagNumber(5)
  set cardCurrBatch(CardCurrBatch value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCardCurrBatch() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardCurrBatch() => $_clearField(5);
  @$pb.TagNumber(5)
  CardCurrBatch ensureCardCurrBatch() => $_ensure(4);
}

/// Module: 拓展
class ModuleExtend extends $pb.GeneratedMessage {
  factory ModuleExtend({
    $core.Iterable<Extend>? extend,
  }) {
    final result = create();
    if (extend != null) result.extend.addAll(extend);
    return result;
  }

  ModuleExtend._();

  factory ModuleExtend.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleExtend.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduledynuplistgetdefaul': ')
  static ModuleDynUpList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDynUpList>(create);
  static ModuleDynUpList? _defaultInstance;

  /// 标题展示文案
  @$pb.TagNumber(1)
  $core.String get moduleTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleTitle() => $_clearField(1);

  /// ',
  'general.staticmoduleextendgetdefault=>': ')
  static ModuleExtend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleExtend>(create);
  static ModuleExtend? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Extend> get extend => $_getList(0);
}

/// Module: 折叠
class ModuleFold extends $pb.GeneratedMessage {
  factory ModuleFold({
    FoldType? foldType,
    $core.String? text,
    $core.String? foldIds,
    $core.Iterable<UserInfo>? foldUsers,
    FoldType? foldTypeV2,
  }) {
    final result = create();
    if (foldType != null) result.foldType = foldType;
    if (text != null) result.text = text;
    if (foldIds != null) result.foldIds = foldIds;
    if (foldUsers != null) result.foldUsers.addAll(foldUsers);
    if (foldTypeV2 != null) result.foldTypeV2 = foldTypeV2;
    return result;
  }

  ModuleFold._();

  factory ModuleFold.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleFold.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmodulefoldgetdefault=>_d': ')
  static ModuleFold getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleFold>(create);
  static ModuleFold? _defaultInstance;

  /// Deprecated, see [`Self::fold_type_v2`] instead.
  @$pb.TagNumber(1)
  FoldType get foldType => $_getN(0);
  @$pb.TagNumber(1)
  set foldType(FoldType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFoldType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFoldType() => $_clearField(1);

  /// 折叠文案
  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  /// 被折叠的动态
  @$pb.TagNumber(3)
  $core.String get foldIds => $_getSZ(2);
  @$pb.TagNumber(3)
  set foldIds($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFoldIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearFoldIds() => $_clearField(3);

  /// 被折叠的用户
  @$pb.TagNumber(4)
  $pb.PbList<UserInfo> get foldUsers => $_getList(3);

  /// 折叠分类
  @$pb.TagNumber(5)
  FoldType get foldTypeV2 => $_getN(4);
  @$pb.TagNumber(5)
  set foldTypeV2(FoldType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFoldTypeV2() => $_has(4);
  @$pb.TagNumber(5)
  void clearFoldTypeV2() => $_clearField(5);
}

/// 我的追番列表
class ModuleFollowList extends $pb.GeneratedMessage {
  factory ModuleFollowList({
    $core.String? viewAllLink,
    $core.Iterable<FollowListItem>? list,
  }) {
    final result = create();
    if (viewAllLink != null) result.viewAllLink = viewAllLink;
    if (list != null) result.list.addAll(list);
    return result;
  }

  ModuleFollowList._();

  factory ModuleFollowList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleFollowList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmodulefollowlistgetdefau': ')
  static ModuleFollowList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleFollowList>(create);
  static ModuleFollowList? _defaultInstance;

  /// 查看全部的跳转链接
  @$pb.TagNumber(1)
  $core.String get viewAllLink => $_getSZ(0);
  @$pb.TagNumber(1)
  set viewAllLink($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasViewAllLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearViewAllLink() => $_clearField(1);

  /// 参见 [`FollowListItem`]
  @$pb.TagNumber(2)
  $pb.PbList<FollowListItem> get list => $_getList(1);
}

/// Module: 转发
class ModuleForward extends $pb.GeneratedMessage {
  factory ModuleForward({
    $core.String? cardType,
    $core.Iterable<Module>? modules,
  }) {
    final result = create();
    if (cardType != null) result.cardType = cardType;
    if (modules != null) result.modules.addAll(modules);
    return result;
  }

  ModuleForward._();

  factory ModuleForward.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleForward.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmoduleforwardgetdefault=': ')
  static ModuleForward getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleForward>(create);
  static ModuleForward? _defaultInstance;

  /// 卡片类型
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => $_clearField(1);

  /// 嵌套的 modules
  @$pb.TagNumber(2)
  $pb.PbList<Module> get modules => $_getList(1);
}

/// Module: 点赞用户
class ModuleLikeUser extends $pb.GeneratedMessage {
  factory ModuleLikeUser({
    $core.Iterable<LikeUser>? likeUsers,
    $core.String? displayText,
  }) {
    final result = create();
    if (likeUsers != null) result.likeUsers.addAll(likeUsers);
    if (displayText != null) result.displayText = displayText;
    return result;
  }

  ModuleLikeUser._();

  factory ModuleLikeUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleLikeUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmodulegetdefault=>_defau': ')
  static Module getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  Module_ModuleItem whichModuleItem() =>
      _Module_ModuleItemByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  void clearModuleItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get moduleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleType() => $_clearField(1);

  /// 参见 [`ModuleFold`]
  @$pb.TagNumber(2)
  ModuleFold get moduleFold => $_getN(1);
  @$pb.TagNumber(2)
  set moduleFold(ModuleFold value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasModuleFold() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleFold() => $_clearField(2);
  @$pb.TagNumber(2)
  ModuleFold ensureModuleFold() => $_ensure(1);

  /// 参见 [`ModuleAuthor`]
  @$pb.TagNumber(3)
  ModuleAuthor get moduleAuthor => $_getN(2);
  @$pb.TagNumber(3)
  set moduleAuthor(ModuleAuthor value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasModuleAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleAuthor() => $_clearField(3);
  @$pb.TagNumber(3)
  ModuleAuthor ensureModuleAuthor() => $_ensure(2);

  /// 参见 [`ModuleDynamic`]
  @$pb.TagNumber(4)
  ModuleDynamic get moduleDynamic => $_getN(3);
  @$pb.TagNumber(4)
  set moduleDynamic(ModuleDynamic value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasModuleDynamic() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleDynamic() => $_clearField(4);
  @$pb.TagNumber(4)
  ModuleDynamic ensureModuleDynamic() => $_ensure(3);

  /// 参见 [`ModuleState`]
  @$pb.TagNumber(5)
  ModuleState get moduleState => $_getN(4);
  @$pb.TagNumber(5)
  set moduleState(ModuleState value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasModuleState() => $_has(4);
  @$pb.TagNumber(5)
  void clearModuleState() => $_clearField(5);
  @$pb.TagNumber(5)
  ModuleState ensureModuleState() => $_ensure(4);

  /// 参见 [`ModuleForward`]
  @$pb.TagNumber(6)
  ModuleForward get moduleForward => $_getN(5);
  @$pb.TagNumber(6)
  set moduleForward(ModuleForward value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasModuleForward() => $_has(5);
  @$pb.TagNumber(6)
  void clearModuleForward() => $_clearField(6);
  @$pb.TagNumber(6)
  ModuleForward ensureModuleForward() => $_ensure(5);

  /// 参见 [`ModuleExtend`]
  @$pb.TagNumber(7)
  ModuleExtend get moduleExtend => $_getN(6);
  @$pb.TagNumber(7)
  set moduleExtend(ModuleExtend value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasModuleExtend() => $_has(6);
  @$pb.TagNumber(7)
  void clearModuleExtend() => $_clearField(7);
  @$pb.TagNumber(7)
  ModuleExtend ensureModuleExtend() => $_ensure(6);

  /// 参见 [`ModuleDispute`]
  @$pb.TagNumber(8)
  ModuleDispute get moduleDispute => $_getN(7);
  @$pb.TagNumber(8)
  set moduleDispute(ModuleDispute value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasModuleDispute() => $_has(7);
  @$pb.TagNumber(8)
  void clearModuleDispute() => $_clearField(8);
  @$pb.TagNumber(8)
  ModuleDispute ensureModuleDispute() => $_ensure(7);

  /// 参见 [`ModuleDesc`]
  @$pb.TagNumber(9)
  ModuleDesc get moduleDesc => $_getN(8);
  @$pb.TagNumber(9)
  set moduleDesc(ModuleDesc value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasModuleDesc() => $_has(8);
  @$pb.TagNumber(9)
  void clearModuleDesc() => $_clearField(9);
  @$pb.TagNumber(9)
  ModuleDesc ensureModuleDesc() => $_ensure(8);

  /// 参见 [`ModuleLikeUser`]
  @$pb.TagNumber(10)
  ModuleLikeUser get moduleLikeUser => $_getN(9);
  @$pb.TagNumber(10)
  set moduleLikeUser(ModuleLikeUser value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasModuleLikeUser() => $_has(9);
  @$pb.TagNumber(10)
  void clearModuleLikeUser() => $_clearField(10);
  @$pb.TagNumber(10)
  ModuleLikeUser ensureModuleLikeUser() => $_ensure(9);

  /// 参见 [`ModuleDynUpList`]
  @$pb.TagNumber(11)
  ModuleDynUpList get moduleUpList => $_getN(10);
  @$pb.TagNumber(11)
  set moduleUpList(ModuleDynUpList value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasModuleUpList() => $_has(10);
  @$pb.TagNumber(11)
  void clearModuleUpList() => $_clearField(11);
  @$pb.TagNumber(11)
  ModuleDynUpList ensureModuleUpList() => $_ensure(10);

  /// 参见 [`ModuleFollowList`]
  @$pb.TagNumber(12)
  ModuleFollowList get moduleFollowList => $_getN(11);
  @$pb.TagNumber(12)
  set moduleFollowList(ModuleFollowList value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasModuleFollowList() => $_has(11);
  @$pb.TagNumber(12)
  void clearModuleFollowList() => $_clearField(12);
  @$pb.TagNumber(12)
  ModuleFollowList ensureModuleFollowList() => $_ensure(11);
}

/// Module: 作者信息
class ModuleAuthor extends $pb.GeneratedMessage {
  factory ModuleAuthor({
    $fixnum.Int64? id,
    $core.String? ptimeLabelText,
    UserInfo? author,
    DecorateCard? decorateCard,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (ptimeLabelText != null) result.ptimeLabelText = ptimeLabelText;
    if (author != null) result.author = author;
    if (decorateCard != null) result.decorateCard = decorateCard;
    return result;
  }

  ModuleAuthor._();

  factory ModuleAuthor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleAuthor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmodulelikeusergetdefault': ')
  static ModuleLikeUser getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleLikeUser>(create);
  static ModuleLikeUser? _defaultInstance;

  /// 点赞用户
  @$pb.TagNumber(1)
  $pb.PbList<LikeUser> get likeUsers => $_getList(0);

  /// 文案
  @$pb.TagNumber(2)
  $core.String get displayText => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayText() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayText() => $_clearField(2);
}

/// Module: 计数状态
class ModuleState extends $pb.GeneratedMessage {
  factory ModuleState({
    $core.int? repost,
    $core.int? like,
    $core.int? reply,
    LikeInfo? likeInfo,
    $core.bool? noComment,
    $core.bool? noForward,
  }) {
    final result = create();
    if (repost != null) result.repost = repost;
    if (like != null) result.like = like;
    if (reply != null) result.reply = reply;
    if (likeInfo != null) result.likeInfo = likeInfo;
    if (noComment != null) result.noComment = noComment;
    if (noForward != null) result.noForward = noForward;
    return result;
  }

  ModuleState._();

  factory ModuleState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticmodulestategetdefault=>_': ')
  static ModuleState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleState>(create);
  static ModuleState? _defaultInstance;

  /// 转发数
  @$pb.TagNumber(1)
  $core.int get repost => $_getIZ(0);
  @$pb.TagNumber(1)
  set repost($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRepost() => $_has(0);
  @$pb.TagNumber(1)
  void clearRepost() => $_clearField(1);

  /// 点赞数
  @$pb.TagNumber(2)
  $core.int get like => $_getIZ(1);
  @$pb.TagNumber(2)
  set like($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearLike() => $_clearField(2);

  /// 评论数
  @$pb.TagNumber(3)
  $core.int get reply => $_getIZ(2);
  @$pb.TagNumber(3)
  set reply($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReply() => $_has(2);
  @$pb.TagNumber(3)
  void clearReply() => $_clearField(3);

  /// 点赞拓展信息
  @$pb.TagNumber(4)
  LikeInfo get likeInfo => $_getN(3);
  @$pb.TagNumber(4)
  set likeInfo(LikeInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLikeInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearLikeInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  LikeInfo ensureLikeInfo() => $_ensure(3);

  /// 禁止评论
  @$pb.TagNumber(5)
  $core.bool get noComment => $_getBF(4);
  @$pb.TagNumber(5)
  set noComment($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNoComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoComment() => $_clearField(5);

  /// 禁止转发
  @$pb.TagNumber(6)
  $core.bool get noForward => $_getBF(5);
  @$pb.TagNumber(6)
  set noForward($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNoForward() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoForward() => $_clearField(6);
}

/// 认证名牌
class Nameplate extends $pb.GeneratedMessage {
  factory Nameplate({
    $fixnum.Int64? nid,
    $core.String? name,
    $core.String? image,
    $core.String? imageSmall,
    $core.String? level,
    $core.String? condition,
  }) {
    final result = create();
    if (nid != null) result.nid = nid;
    if (name != null) result.name = name;
    if (image != null) result.image = image;
    if (imageSmall != null) result.imageSmall = imageSmall;
    if (level != null) result.level = level;
    if (condition != null) result.condition = condition;
    return result;
  }

  Nameplate._();

  factory Nameplate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Nameplate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticnameplategetdefault=>_de': ')
  static Nameplate getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nameplate>(create);
  static Nameplate? _defaultInstance;

  /// 认证名牌 ID
  @$pb.TagNumber(1)
  $fixnum.Int64 get nid => $_getI64(0);
  @$pb.TagNumber(1)
  set nid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNid() => $_clearField(1);

  /// 认证名牌名称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// 认证名牌图片
  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  /// 认证名牌图片(小)
  @$pb.TagNumber(4)
  $core.String get imageSmall => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageSmall($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImageSmall() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageSmall() => $_clearField(4);

  /// 等级
  @$pb.TagNumber(5)
  $core.String get level => $_getSZ(4);
  @$pb.TagNumber(5)
  set level($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => $_clearField(5);

  /// 获取条件
  @$pb.TagNumber(6)
  $core.String get condition => $_getSZ(5);
  @$pb.TagNumber(6)
  set condition($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearCondition() => $_clearField(6);
}

/// 剧集最新分集
class NewEP extends $pb.GeneratedMessage {
  factory NewEP({
    $core.int? id,
    $core.String? indexShow,
    $core.String? cover,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (indexShow != null) result.indexShow = indexShow;
    if (cover != null) result.cover = cover;
    return result;
  }

  NewEP._();

  factory NewEP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NewEP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticnewepgetdefault=>_defaul': ')
  static NewEP getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewEP>(create);
  static NewEP? _defaultInstance;

  /// 剧集最新分集的 ID
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// 更新至 XX 话
  @$pb.TagNumber(2)
  $core.String get indexShow => $_getSZ(1);
  @$pb.TagNumber(2)
  set indexShow($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIndexShow() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndexShow() => $_clearField(2);

  /// 更新剧集的封面
  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);
}

class NoReply extends $pb.GeneratedMessage {
  factory NoReply() => create();

  NoReply._();

  factory NoReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NoReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticnoreqgetdefault=>_defaul': ')
  static NoReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoReq>(create);
  static NoReq? _defaultInstance;
}

/// 认证信息
class OfficialVerify extends $pb.GeneratedMessage {
  factory OfficialVerify({
    $core.int? type,
    $core.String? desc,
    $core.int? isAtten,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (desc != null) result.desc = desc;
    if (isAtten != null) result.isAtten = isAtten;
    return result;
  }

  OfficialVerify._();

  factory OfficialVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OfficialVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticofficialverifygetdefault': ')
  static OfficialVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OfficialVerify>(create);
  static OfficialVerify? _defaultInstance;

  /// - 0: 个人
  /// - 1: 官方
  /// - 127: 未认证
  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// 认证描述
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get isAtten => $_getIZ(2);
  @$pb.TagNumber(3)
  set isAtten($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsAtten() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAtten() => $_clearField(3);
}

class OurCityClickReportReply extends $pb.GeneratedMessage {
  factory OurCityClickReportReply() => create();

  OurCityClickReportReply._();

  factory OurCityClickReportReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OurCityClickReportReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticourcityclickreportreqget': ')
  static OurCityClickReportReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OurCityClickReportReq>(create);
  static OurCityClickReportReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dynamicId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dynamicId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDynamicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDynamicId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cityId => $_getI64(1);
  @$pb.TagNumber(2)
  set cityId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get lat => $_getN(2);
  @$pb.TagNumber(3)
  set lat($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLat() => $_has(2);
  @$pb.TagNumber(3)
  void clearLat() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get lng => $_getN(3);
  @$pb.TagNumber(4)
  set lng($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLng() => $_has(3);
  @$pb.TagNumber(4)
  void clearLng() => $_clearField(4);
}

/// PGC 剧集信息
class PGCSeason extends $pb.GeneratedMessage {
  factory PGCSeason({
    $core.int? isFinish,
    $core.String? title,
    $core.int? type,
  }) {
    final result = create();
    if (isFinish != null) result.isFinish = isFinish;
    if (title != null) result.title = title;
    if (type != null) result.type = type;
    return result;
  }

  PGCSeason._();

  factory PGCSeason.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PGCSeason.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticpagegetdefault=>_default': ')
  static Page getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Page>(create);
  static Page? _defaultInstance;

  /// 视频流 CID
  @$pb.TagNumber(1)
  $fixnum.Int64 get cid => $_getI64(0);
  @$pb.TagNumber(1)
  set cid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => $_clearField(1);

  /// 视频序号
  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);

  /// 视频来源
  ///
  /// - vupload
  /// - qq: Tencent
  /// - hunan: Hunan TV
  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => $_clearField(3);

  /// 视频标题
  @$pb.TagNumber(4)
  $core.String get part => $_getSZ(3);
  @$pb.TagNumber(4)
  set part($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPart() => $_has(3);
  @$pb.TagNumber(4)
  void clearPart() => $_clearField(4);

  /// 视频时长 (seconds)
  @$pb.TagNumber(5)
  $fixnum.Int64 get duration => $_getI64(4);
  @$pb.TagNumber(5)
  set duration($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDuration() => $_has(4);
  @$pb.TagNumber(5)
  void clearDuration() => $_clearField(5);

  /// 站外视频 vid
  @$pb.TagNumber(6)
  $core.String get vid => $_getSZ(5);
  @$pb.TagNumber(6)
  set vid($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVid() => $_has(5);
  @$pb.TagNumber(6)
  void clearVid() => $_clearField(6);

  /// 视频简介
  @$pb.TagNumber(7)
  $core.String get desc => $_getSZ(6);
  @$pb.TagNumber(7)
  set desc($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDesc() => $_has(6);
  @$pb.TagNumber(7)
  void clearDesc() => $_clearField(7);

  /// 站外视频跳转地址
  @$pb.TagNumber(8)
  $core.String get webLink => $_getSZ(7);
  @$pb.TagNumber(8)
  set webLink($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWebLink() => $_has(7);
  @$pb.TagNumber(8)
  void clearWebLink() => $_clearField(8);

  /// 见 [`Dimension`]
  @$pb.TagNumber(9)
  Dimension get dimension => $_getN(8);
  @$pb.TagNumber(9)
  set dimension(Dimension value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDimension() => $_has(8);
  @$pb.TagNumber(9)
  void clearDimension() => $_clearField(9);
  @$pb.TagNumber(9)
  Dimension ensureDimension() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get firstFrame => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstFrame($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFirstFrame() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstFrame() => $_clearField(10);
}

/// 常用属性, 0 否 1 是
class Rights extends $pb.GeneratedMessage {
  factory Rights({
    $core.int? bp,
    $core.int? elec,
    $core.int? download,
    $core.int? movie,
    $core.int? pay,
    $core.int? hd5,
    $core.int? noReprint,
    $core.int? autoplay,
    $core.int? ugcPay,
    $core.int? isCooperation,
    $core.int? ugcPayPreview,
    $core.int? noBackground,
    $core.int? arcPay,
    $core.int? payFreeWatch,
  }) {
    final result = create();
    if (bp != null) result.bp = bp;
    if (elec != null) result.elec = elec;
    if (download != null) result.download = download;
    if (movie != null) result.movie = movie;
    if (pay != null) result.pay = pay;
    if (hd5 != null) result.hd5 = hd5;
    if (noReprint != null) result.noReprint = noReprint;
    if (autoplay != null) result.autoplay = autoplay;
    if (ugcPay != null) result.ugcPay = ugcPay;
    if (isCooperation != null) result.isCooperation = isCooperation;
    if (ugcPayPreview != null) result.ugcPayPreview = ugcPayPreview;
    if (noBackground != null) result.noBackground = noBackground;
    if (arcPay != null) result.arcPay = arcPay;
    if (payFreeWatch != null) result.payFreeWatch = payFreeWatch;
    return result;
  }

  Rights._();

  factory Rights.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rights.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticpgcseasongetdefault=>_de': ')
  static PGCSeason getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PGCSeason>(create);
  static PGCSeason? _defaultInstance;

  /// 已完结
  @$pb.TagNumber(1)
  $core.int get isFinish => $_getIZ(0);
  @$pb.TagNumber(1)
  set isFinish($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsFinish() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFinish() => $_clearField(1);

  /// 标题
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  /// 类型
  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);
}

class PlayerPreloadParams extends $pb.GeneratedMessage {
  factory PlayerPreloadParams({
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final result = create();
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    return result;
  }

  PlayerPreloadParams._();

  factory PlayerPreloadParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlayerPreloadParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticplayerpreloadparamsgetde': ')
  static PlayerPreloadParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayerPreloadParams>(create);
  static PlayerPreloadParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get qn => $_getIZ(0);
  @$pb.TagNumber(1)
  set qn($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQn() => $_has(0);
  @$pb.TagNumber(1)
  void clearQn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get fnver => $_getIZ(1);
  @$pb.TagNumber(2)
  set fnver($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFnver() => $_has(1);
  @$pb.TagNumber(2)
  void clearFnver() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get fnval => $_getIZ(2);
  @$pb.TagNumber(3)
  set fnval($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFnval() => $_has(2);
  @$pb.TagNumber(3)
  void clearFnval() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get forceHost => $_getIZ(3);
  @$pb.TagNumber(4)
  set forceHost($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasForceHost() => $_has(3);
  @$pb.TagNumber(4)
  void clearForceHost() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get fourk => $_getIZ(4);
  @$pb.TagNumber(5)
  set fourk($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFourk() => $_has(4);
  @$pb.TagNumber(5)
  void clearFourk() => $_clearField(5);
}

/// 动态 tab 弹窗详情
class Popup extends $pb.GeneratedMessage {
  factory Popup({
    $core.String? title,
    $core.String? desc,
    $core.String? uri,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (desc != null) result.desc = desc;
    if (uri != null) result.uri = uri;
    return result;
  }

  Popup._();

  factory Popup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Popup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticpopupgetdefault=>_defaul': ')
  static Popup getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Popup>(create);
  static Popup? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  /// 文案
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);

  /// 文案附加跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => $_clearField(3);
}

class Relation extends $pb.GeneratedMessage {
  factory Relation({
    RelationStatus? status,
    $core.int? isFollow,
    $core.int? isFollowed,
    $core.String? title,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (isFollow != null) result.isFollow = isFollow;
    if (isFollowed != null) result.isFollowed = isFollowed;
    if (title != null) result.title = title;
    return result;
  }

  Relation._();

  factory Relation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Relation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticreasonstylegetdefault=>_': ')
  static ReasonStyle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReasonStyle>(create);
  static ReasonStyle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get textColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTextColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get textColorNight => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColorNight($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTextColorNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColorNight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bgColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set bgColor($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBgColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBgColor() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bgColorNight => $_getSZ(4);
  @$pb.TagNumber(5)
  set bgColorNight($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBgColorNight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBgColorNight() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get borderColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set borderColor($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBorderColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearBorderColor() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get borderColorNight => $_getSZ(6);
  @$pb.TagNumber(7)
  set borderColorNight($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBorderColorNight() => $_has(6);
  @$pb.TagNumber(7)
  void clearBorderColorNight() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get bgStyle => $_getIZ(7);
  @$pb.TagNumber(8)
  set bgStyle($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBgStyle() => $_has(7);
  @$pb.TagNumber(8)
  void clearBgStyle() => $_clearField(8);
}

/// 新关注组件
class Relation extends $pb.GeneratedMessage {
  factory Relation({
    $core.int? status,
    $core.int? isFollow,
    $core.int? isFollowed,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (isFollow != null) result.isFollow = isFollow;
    if (isFollowed != null) result.isFollowed = isFollowed;
    return result;
  }

  Relation._();

  factory Relation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Relation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticrelationgetdefault=>_def': ')
  static Relation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relation>(create);
  static Relation? _defaultInstance;

  /// 按钮展示文案
  ///
  /// - 1: 未关注
  /// - 2: 已关注
  /// - 3: 被关注
  /// - 4: 互相关注
  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// 用户关注 UP 主
  ///
  /// - 0: 未关注
  /// - 1: 已关注
  @$pb.TagNumber(2)
  $core.int get isFollow => $_getIZ(1);
  @$pb.TagNumber(2)
  set isFollow($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsFollow() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFollow() => $_clearField(2);

  /// UP 主关注用户
  ///
  /// - 0: 未被关注
  /// - 1: 已被关注
  @$pb.TagNumber(3)
  $core.int get isFollowed => $_getIZ(2);
  @$pb.TagNumber(3)
  set isFollowed($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsFollowed() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFollowed() => $_clearField(3);
}

class ResultItem extends $pb.GeneratedMessage {
  factory ResultItem({
    $core.String? from,
    $core.String? title,
    $core.String? keyword,
    $core.int? position,
    $core.String? cover,
    $core.double? coverSize,
    $core.String? sugType,
    $core.int? termType,
    $core.String? goto,
    $core.String? uri,
    OfficialVerify? officialVerify,
    $core.String? param,
    $fixnum.Int64? mid,
    $core.int? fans,
    $core.int? level,
    $core.int? archives,
    $fixnum.Int64? ptime,
    $core.String? seasonTypeName,
    $core.String? area,
    $core.String? style,
    $core.String? label,
    $core.double? rating,
    $core.int? vote,
    $core.Iterable<ReasonStyle>? badges,
    $core.String? styles,
    $fixnum.Int64? moduleId,
    $core.String? liveLink,
    $core.int? faceNftNew,
    NftFaceIcon? nftFaceIcon,
    $core.int? isSeniorMember,
    $core.int? isSugStyleExp,
  }) {
    final result = create();
    if (from != null) result.from = from;
    if (title != null) result.title = title;
    if (keyword != null) result.keyword = keyword;
    if (position != null) result.position = position;
    if (cover != null) result.cover = cover;
    if (coverSize != null) result.coverSize = coverSize;
    if (sugType != null) result.sugType = sugType;
    if (termType != null) result.termType = termType;
    if (goto != null) result.goto = goto;
    if (uri != null) result.uri = uri;
    if (officialVerify != null) result.officialVerify = officialVerify;
    if (param != null) result.param = param;
    if (mid != null) result.mid = mid;
    if (fans != null) result.fans = fans;
    if (level != null) result.level = level;
    if (archives != null) result.archives = archives;
    if (ptime != null) result.ptime = ptime;
    if (seasonTypeName != null) result.seasonTypeName = seasonTypeName;
    if (area != null) result.area = area;
    if (style != null) result.style = style;
    if (label != null) result.label = label;
    if (rating != null) result.rating = rating;
    if (vote != null) result.vote = vote;
    if (badges != null) result.badges.addAll(badges);
    if (styles != null) result.styles = styles;
    if (moduleId != null) result.moduleId = moduleId;
    if (liveLink != null) result.liveLink = liveLink;
    if (faceNftNew != null) result.faceNftNew = faceNftNew;
    if (nftFaceIcon != null) result.nftFaceIcon = nftFaceIcon;
    if (isSeniorMember != null) result.isSeniorMember = isSeniorMember;
    if (isSugStyleExp != null) result.isSugStyleExp = isSugStyleExp;
    return result;
  }

  ResultItem._();

  factory ResultItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticrightsgetdefault=>_defau': ')
  static Rights getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rights>(create);
  static Rights? _defaultInstance;

  /// 是否付费(旧版)
  @$pb.TagNumber(1)
  $core.int get bp => $_getIZ(0);
  @$pb.TagNumber(1)
  set bp($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBp() => $_has(0);
  @$pb.TagNumber(1)
  void clearBp() => $_clearField(1);

  /// 是否支持充电
  @$pb.TagNumber(2)
  $core.int get elec => $_getIZ(1);
  @$pb.TagNumber(2)
  set elec($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasElec() => $_has(1);
  @$pb.TagNumber(2)
  void clearElec() => $_clearField(2);

  /// 是否下载
  @$pb.TagNumber(3)
  $core.int get download => $_getIZ(2);
  @$pb.TagNumber(3)
  set download($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDownload() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownload() => $_clearField(3);

  /// 是否电影
  @$pb.TagNumber(4)
  $core.int get movie => $_getIZ(3);
  @$pb.TagNumber(4)
  set movie($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMovie() => $_has(3);
  @$pb.TagNumber(4)
  void clearMovie() => $_clearField(4);

  /// 是否是需要付费的 PGC 稿件
  @$pb.TagNumber(5)
  $core.int get pay => $_getIZ(4);
  @$pb.TagNumber(5)
  set pay($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPay() => $_has(4);
  @$pb.TagNumber(5)
  void clearPay() => $_clearField(5);

  /// Deprecated
  @$pb.TagNumber(6)
  $core.int get hd5 => $_getIZ(5);
  @$pb.TagNumber(6)
  set hd5($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHd5() => $_has(5);
  @$pb.TagNumber(6)
  void clearHd5() => $_clearField(6);

  /// 是否允许转发
  @$pb.TagNumber(7)
  $core.int get noReprint => $_getIZ(6);
  @$pb.TagNumber(7)
  set noReprint($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNoReprint() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoReprint() => $_clearField(7);

  /// 是否可以自动播放
  @$pb.TagNumber(8)
  $core.int get autoplay => $_getIZ(7);
  @$pb.TagNumber(8)
  set autoplay($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAutoplay() => $_has(7);
  @$pb.TagNumber(8)
  void clearAutoplay() => $_clearField(8);

  /// 是否是需要付费的 UGC 稿件
  @$pb.TagNumber(9)
  $core.int get ugcPay => $_getIZ(8);
  @$pb.TagNumber(9)
  set ugcPay($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUgcPay() => $_has(8);
  @$pb.TagNumber(9)
  void clearUgcPay() => $_clearField(9);

  /// 是否联合投稿
  @$pb.TagNumber(10)
  $core.int get isCooperation => $_getIZ(9);
  @$pb.TagNumber(10)
  set isCooperation($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsCooperation() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsCooperation() => $_clearField(10);

  /// 需要付费的 PGC 稿件是否支持预览
  @$pb.TagNumber(11)
  $core.int get ugcPayPreview => $_getIZ(10);
  @$pb.TagNumber(11)
  set ugcPayPreview($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasUgcPayPreview() => $_has(10);
  @$pb.TagNumber(11)
  void clearUgcPayPreview() => $_clearField(11);

  /// 是否禁止后台播放
  @$pb.TagNumber(12)
  $core.int get noBackground => $_getIZ(11);
  @$pb.TagNumber(12)
  set noBackground($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasNoBackground() => $_has(11);
  @$pb.TagNumber(12)
  void clearNoBackground() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get arcPay => $_getIZ(12);
  @$pb.TagNumber(13)
  set arcPay($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasArcPay() => $_has(12);
  @$pb.TagNumber(13)
  void clearArcPay() => $_clearField(13);

  /// ? 需要付费的稿件是否支持免费畅览
  @$pb.TagNumber(14)
  $core.int get payFreeWatch => $_getIZ(13);
  @$pb.TagNumber(14)
  set payFreeWatch($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasPayFreeWatch() => $_has(13);
  @$pb.TagNumber(14)
  void clearPayFreeWatch() => $_clearField(14);
}

class SeasonTheme extends $pb.GeneratedMessage {
  factory SeasonTheme({
    $core.String? bgColor,
    $core.String? selectedBgColor,
    $core.String? textColor,
  }) {
    final result = create();
    if (bgColor != null) result.bgColor = bgColor;
    if (selectedBgColor != null) result.selectedBgColor = selectedBgColor;
    if (textColor != null) result.textColor = textColor;
    return result;
  }

  SeasonTheme._();

  factory SeasonTheme.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SeasonTheme.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticseasonthemegetdefault=>_': ')
  static SeasonTheme getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SeasonTheme>(create);
  static SeasonTheme? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bgColor => $_getSZ(0);
  @$pb.TagNumber(1)
  set bgColor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBgColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgColor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get selectedBgColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set selectedBgColor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSelectedBgColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelectedBgColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get textColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTextColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColor() => $_clearField(3);
}

/// 联合投稿成员
class StaffInfo extends $pb.GeneratedMessage {
  factory StaffInfo({
    $fixnum.Int64? mid,
    $core.String? title,
    $fixnum.Int64? attribute,
  }) {
    final result = create();
    if (mid != null) result.mid = mid;
    if (title != null) result.title = title;
    if (attribute != null) result.attribute = attribute;
    return result;
  }

  StaffInfo._();

  factory StaffInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StaffInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticshareinfogetdefault=>_de': ')
  static ShareInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareInfo>(create);
  static ShareInfo? _defaultInstance;

  /// 稿件 avid
  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  /// 稿件 bvid
  @$pb.TagNumber(2)
  $core.String get bvid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bvid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBvid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBvid() => $_clearField(2);

  /// 稿件标题
  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  /// 稿件字幕
  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  /// 稿件方面
  @$pb.TagNumber(5)
  $core.String get cover => $_getSZ(4);
  @$pb.TagNumber(5)
  set cover($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCover() => $_has(4);
  @$pb.TagNumber(5)
  void clearCover() => $_clearField(5);

  /// UP 主 mid
  @$pb.TagNumber(6)
  $fixnum.Int64 get mid => $_getI64(5);
  @$pb.TagNumber(6)
  set mid($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMid() => $_has(5);
  @$pb.TagNumber(6)
  void clearMid() => $_clearField(6);

  /// UP 主昵称
  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => $_clearField(7);
}

/// 动态红点接口各 tab offset 信息
class TabOffset extends $pb.GeneratedMessage {
  factory TabOffset({
    $core.int? tab,
    $core.String? offset,
  }) {
    final result = create();
    if (tab != null) result.tab = tab;
    if (offset != null) result.offset = offset;
    return result;
  }

  TabOffset._();

  factory TabOffset.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TabOffset.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticshareplanegetdefault=>_d': ')
  static SharePlane getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SharePlane>(create);
  static SharePlane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get shareSubtitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set shareSubtitle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShareSubtitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareSubtitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get cover => $_getSZ(3);
  @$pb.TagNumber(4)
  set cover($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get aid => $_getI64(4);
  @$pb.TagNumber(5)
  set aid($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAid() => $_has(4);
  @$pb.TagNumber(5)
  void clearAid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bvid => $_getSZ(5);
  @$pb.TagNumber(6)
  set bvid($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBvid() => $_has(5);
  @$pb.TagNumber(6)
  void clearBvid() => $_clearField(6);

  /// 分享渠道, 如: `',
  'general.staticsmallcoverv5getdefault=>': ')
  static SmallCoverV5 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmallCoverV5>(create);
  static SmallCoverV5? _defaultInstance;

  @$pb.TagNumber(1)
  Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(Base value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => $_clearField(1);
  @$pb.TagNumber(1)
  Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverGif => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverGif($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCoverGif() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverGif() => $_clearField(2);

  @$pb.TagNumber(3)
  Up get up => $_getN(2);
  @$pb.TagNumber(3)
  set up(Up value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUp() => $_has(2);
  @$pb.TagNumber(3)
  void clearUp() => $_clearField(3);
  @$pb.TagNumber(3)
  Up ensureUp() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get coverRightText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverRightText1($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCoverRightText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverRightText1() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get rightDesc1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set rightDesc1($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRightDesc1() => $_has(4);
  @$pb.TagNumber(5)
  void clearRightDesc1() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get rightDesc2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set rightDesc2($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRightDesc2() => $_has(5);
  @$pb.TagNumber(6)
  void clearRightDesc2() => $_clearField(6);

  @$pb.TagNumber(7)
  ReasonStyle get rcmdReasonStyle => $_getN(6);
  @$pb.TagNumber(7)
  set rcmdReasonStyle(ReasonStyle value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRcmdReasonStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearRcmdReasonStyle() => $_clearField(7);
  @$pb.TagNumber(7)
  ReasonStyle ensureRcmdReasonStyle() => $_ensure(6);

  @$pb.TagNumber(8)
  HotwordEntrance get hotwordEntrance => $_getN(7);
  @$pb.TagNumber(8)
  set hotwordEntrance(HotwordEntrance value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHotwordEntrance() => $_has(7);
  @$pb.TagNumber(8)
  void clearHotwordEntrance() => $_clearField(8);
  @$pb.TagNumber(8)
  HotwordEntrance ensureHotwordEntrance() => $_ensure(7);

  /// 直播小卡角标
  @$pb.TagNumber(9)
  ReasonStyle get cornerMarkStyle => $_getN(8);
  @$pb.TagNumber(9)
  set cornerMarkStyle(ReasonStyle value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCornerMarkStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearCornerMarkStyle() => $_clearField(9);
  @$pb.TagNumber(9)
  ReasonStyle ensureCornerMarkStyle() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get rightIcon1 => $_getIZ(9);
  @$pb.TagNumber(10)
  set rightIcon1($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRightIcon1() => $_has(9);
  @$pb.TagNumber(10)
  void clearRightIcon1() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get rightIcon2 => $_getIZ(10);
  @$pb.TagNumber(11)
  set rightIcon2($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRightIcon2() => $_has(10);
  @$pb.TagNumber(11)
  void clearRightIcon2() => $_clearField(11);

  @$pb.TagNumber(12)
  ReasonStyle get leftCornerMarkStyle => $_getN(11);
  @$pb.TagNumber(12)
  set leftCornerMarkStyle(ReasonStyle value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasLeftCornerMarkStyle() => $_has(11);
  @$pb.TagNumber(12)
  void clearLeftCornerMarkStyle() => $_clearField(12);
  @$pb.TagNumber(12)
  ReasonStyle ensureLeftCornerMarkStyle() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get coverRightTextContentDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set coverRightTextContentDescription($core.String value) =>
      $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCoverRightTextContentDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearCoverRightTextContentDescription() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get rightDesc1ContentDescription => $_getSZ(13);
  @$pb.TagNumber(14)
  set rightDesc1ContentDescription($core.String value) =>
      $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasRightDesc1ContentDescription() => $_has(13);
  @$pb.TagNumber(14)
  void clearRightDesc1ContentDescription() => $_clearField(14);
}

class SmallCoverV5Ad extends $pb.GeneratedMessage {
  factory SmallCoverV5Ad({
    Base? base,
    $core.String? coverGif,
    Up? up,
    $core.String? coverRightText1,
    $core.String? rightDesc1,
    $core.String? rightDesc2,
    ReasonStyle? rcmdReasonStyle,
    HotwordEntrance? hotwordEntrance,
    ReasonStyle? cornerMarkStyle,
    $core.int? rightIcon1,
    $core.int? rightIcon2,
    ReasonStyle? leftCornerMarkStyle,
    $core.String? coverRightTextContentDescription,
    $core.String? rightDesc1ContentDescription,
  }) {
    final result = create();
    if (base != null) result.base = base;
    if (coverGif != null) result.coverGif = coverGif;
    if (up != null) result.up = up;
    if (coverRightText1 != null) result.coverRightText1 = coverRightText1;
    if (rightDesc1 != null) result.rightDesc1 = rightDesc1;
    if (rightDesc2 != null) result.rightDesc2 = rightDesc2;
    if (rcmdReasonStyle != null) result.rcmdReasonStyle = rcmdReasonStyle;
    if (hotwordEntrance != null) result.hotwordEntrance = hotwordEntrance;
    if (cornerMarkStyle != null) result.cornerMarkStyle = cornerMarkStyle;
    if (rightIcon1 != null) result.rightIcon1 = rightIcon1;
    if (rightIcon2 != null) result.rightIcon2 = rightIcon2;
    if (leftCornerMarkStyle != null)
      result.leftCornerMarkStyle = leftCornerMarkStyle;
    if (coverRightTextContentDescription != null)
      result.coverRightTextContentDescription =
          coverRightTextContentDescription;
    if (rightDesc1ContentDescription != null)
      result.rightDesc1ContentDescription = rightDesc1ContentDescription;
    return result;
  }

  SmallCoverV5Ad._();

  factory SmallCoverV5Ad.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SmallCoverV5Ad.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticstaffinfogetdefault=>_de': ')
  static StaffInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StaffInfo>(create);
  static StaffInfo? _defaultInstance;

  /// 联合投稿成员 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  /// 联合投稿成员角色
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  /// 属性
  @$pb.TagNumber(3)
  $fixnum.Int64 get attribute => $_getI64(2);
  @$pb.TagNumber(3)
  set attribute($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAttribute() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttribute() => $_clearField(3);
}

/// 计数相关信息
class Stat extends $pb.GeneratedMessage {
  factory Stat({
    $fixnum.Int64? aid,
    $core.int? view,
    $core.int? danmaku,
    $core.int? reply,
    $core.int? fav,
    $core.int? coin,
    $core.int? share,
    $core.int? nowRank,
    $core.int? hisRank,
    $core.int? like,
    $core.int? dislike,
  }) {
    final result = create();
    if (aid != null) result.aid = aid;
    if (view != null) result.view = view;
    if (danmaku != null) result.danmaku = danmaku;
    if (reply != null) result.reply = reply;
    if (fav != null) result.fav = fav;
    if (coin != null) result.coin = coin;
    if (share != null) result.share = share;
    if (nowRank != null) result.nowRank = nowRank;
    if (hisRank != null) result.hisRank = hisRank;
    if (like != null) result.like = like;
    if (dislike != null) result.dislike = dislike;
    return result;
  }

  Stat._();

  factory Stat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Stat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticstatgetdefault=>_default': ')
  static Stat getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stat>(create);
  static Stat? _defaultInstance;

  /// 稿件 avid
  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  /// 播放量
  @$pb.TagNumber(2)
  $core.int get view => $_getIZ(1);
  @$pb.TagNumber(2)
  set view($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasView() => $_has(1);
  @$pb.TagNumber(2)
  void clearView() => $_clearField(2);

  /// 弹幕数
  @$pb.TagNumber(3)
  $core.int get danmaku => $_getIZ(2);
  @$pb.TagNumber(3)
  set danmaku($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDanmaku() => $_has(2);
  @$pb.TagNumber(3)
  void clearDanmaku() => $_clearField(3);

  /// 评论数
  @$pb.TagNumber(4)
  $core.int get reply => $_getIZ(3);
  @$pb.TagNumber(4)
  set reply($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReply() => $_has(3);
  @$pb.TagNumber(4)
  void clearReply() => $_clearField(4);

  /// 收藏数
  @$pb.TagNumber(5)
  $core.int get fav => $_getIZ(4);
  @$pb.TagNumber(5)
  set fav($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFav() => $_has(4);
  @$pb.TagNumber(5)
  void clearFav() => $_clearField(5);

  /// 投币数
  @$pb.TagNumber(6)
  $core.int get coin => $_getIZ(5);
  @$pb.TagNumber(6)
  set coin($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoin() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoin() => $_clearField(6);

  /// 分享数
  @$pb.TagNumber(7)
  $core.int get share => $_getIZ(6);
  @$pb.TagNumber(7)
  set share($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasShare() => $_has(6);
  @$pb.TagNumber(7)
  void clearShare() => $_clearField(7);

  /// 当前排名
  @$pb.TagNumber(8)
  $core.int get nowRank => $_getIZ(7);
  @$pb.TagNumber(8)
  set nowRank($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNowRank() => $_has(7);
  @$pb.TagNumber(8)
  void clearNowRank() => $_clearField(8);

  /// 历史最高排名
  @$pb.TagNumber(9)
  $core.int get hisRank => $_getIZ(8);
  @$pb.TagNumber(9)
  set hisRank($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHisRank() => $_has(8);
  @$pb.TagNumber(9)
  void clearHisRank() => $_clearField(9);

  /// 点赞数
  @$pb.TagNumber(10)
  $core.int get like => $_getIZ(9);
  @$pb.TagNumber(10)
  set like($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLike() => $_has(9);
  @$pb.TagNumber(10)
  void clearLike() => $_clearField(10);

  /// 点踩数 (Deprecated)
  @$pb.TagNumber(11)
  $core.int get dislike => $_getIZ(10);
  @$pb.TagNumber(11)
  set dislike($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDislike() => $_has(10);
  @$pb.TagNumber(11)
  void clearDislike() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment(',
  'general.staticsvideoreplygetdefault=>_': ')
  static SVideoReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoReply>(create);
  static SVideoReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SVideoItem> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get hasMore => $_getIZ(2);
  @$pb.TagNumber(3)
  set hasMore($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasMore() => $_clearField(3);

  @$pb.TagNumber(4)
  SVideoTop get top => $_getN(3);
  @$pb.TagNumber(4)
  set top(SVideoTop value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearTop() => $_clearField(4);
  @$pb.TagNumber(4)
  SVideoTop ensureTop() => $_ensure(3);
}

/// 小视频连播页请求参数
class SVideoReq extends $pb.GeneratedMessage {
  factory SVideoReq({
    $fixnum.Int64? oid,
    SVideoType? type,
    $core.String? offset,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
    $core.String? spmid,
    $core.String? fromSpmid,
    PlayerPreloadParams? playerPreload,
    $fixnum.Int64? focusAid,
    $1.PlayerArgs? playerArgs,
  }) {
    final result = create();
    if (oid != null) result.oid = oid;
    if (type != null) result.type = type;
    if (offset != null) result.offset = offset;
    if (qn != null) result.qn = qn;
    if (fnver != null) result.fnver = fnver;
    if (fnval != null) result.fnval = fnval;
    if (forceHost != null) result.forceHost = forceHost;
    if (fourk != null) result.fourk = fourk;
    if (spmid != null) result.spmid = spmid;
    if (fromSpmid != null) result.fromSpmid = fromSpmid;
    if (playerPreload != null) result.playerPreload = playerPreload;
    if (focusAid != null) result.focusAid = focusAid;
    if (playerArgs != null) result.playerArgs = playerArgs;
    return result;
  }

  SVideoReq._();

  factory SVideoReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SVideoReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticsvideotopgetdefault=>_de': ')
  static SVideoTop getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SVideoTop>(create);
  static SVideoTop? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);
}

/// 分享信息
class ShareInfo extends $pb.GeneratedMessage {
  factory ShareInfo({
    $fixnum.Int64? aid,
    $core.String? bvid,
    $core.String? title,
    $core.String? subtitle,
    $core.String? cover,
    $fixnum.Int64? mid,
    $core.String? name,
  }) {
    final result = create();
    if (aid != null) result.aid = aid;
    if (bvid != null) result.bvid = bvid;
    if (title != null) result.title = title;
    if (subtitle != null) result.subtitle = subtitle;
    if (cover != null) result.cover = cover;
    if (mid != null) result.mid = mid;
    if (name != null) result.name = name;
    return result;
  }

  ShareInfo._();

  factory ShareInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShareInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.statictaboffsetgetdefault=>_de': ')
  static TabOffset getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabOffset>(create);
  static TabOffset? _defaultInstance;

  /// - 1: 综合页
  /// - 2: 视频页
  @$pb.TagNumber(1)
  $core.int get tab => $_getIZ(0);
  @$pb.TagNumber(1)
  set tab($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTab() => $_has(0);
  @$pb.TagNumber(1)
  void clearTab() => $_clearField(1);

  /// 上一次对应列表页 offset
  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);
}

/// UP 主列表
class UpListItem extends $pb.GeneratedMessage {
  factory UpListItem({
    $core.int? hasUpdate,
    $core.String? face,
    $core.String? name,
    $fixnum.Int64? uid,
  }) {
    final result = create();
    if (hasUpdate != null) result.hasUpdate = hasUpdate;
    if (face != null) result.face = face;
    if (name != null) result.name = name;
    if (uid != null) result.uid = uid;
    return result;
  }

  UpListItem._();

  factory UpListItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpListItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticuplistitemgetdefault=>_d': ')
  static UpListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpListItem>(create);
  static UpListItem? _defaultInstance;

  /// 是否有更新
  @$pb.TagNumber(1)
  $core.int get hasUpdate => $_getIZ(0);
  @$pb.TagNumber(1)
  set hasUpdate($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHasUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasUpdate() => $_clearField(1);

  /// 头像
  @$pb.TagNumber(2)
  $core.String get face => $_getSZ(1);
  @$pb.TagNumber(2)
  set face($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFace() => $_has(1);
  @$pb.TagNumber(2)
  void clearFace() => $_clearField(2);

  /// 昵称
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// mid
  @$pb.TagNumber(4)
  $fixnum.Int64 get uid => $_getI64(3);
  @$pb.TagNumber(4)
  set uid($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => $_clearField(4);
}

/// 用户信息
class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    OfficialVerify? official,
    VipInfo? vip,
    LiveInfo? live,
    $core.String? uri,
    UserPendant? pendant,
    Nameplate? nameplate,
  }) {
    final result = create();
    if (mid != null) result.mid = mid;
    if (name != null) result.name = name;
    if (face != null) result.face = face;
    if (official != null) result.official = official;
    if (vip != null) result.vip = vip;
    if (live != null) result.live = live;
    if (uri != null) result.uri = uri;
    if (pendant != null) result.pendant = pendant;
    if (nameplate != null) result.nameplate = nameplate;
    return result;
  }

  UserInfo._();

  factory UserInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticuserinfogetdefault=>_def': ')
  static UserInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  /// 用户 mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// 用户头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  /// 用户认证信息
  @$pb.TagNumber(4)
  OfficialVerify get official => $_getN(3);
  @$pb.TagNumber(4)
  set official(OfficialVerify value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOfficial() => $_has(3);
  @$pb.TagNumber(4)
  void clearOfficial() => $_clearField(4);
  @$pb.TagNumber(4)
  OfficialVerify ensureOfficial() => $_ensure(3);

  /// 用户大会员信息
  @$pb.TagNumber(5)
  VipInfo get vip => $_getN(4);
  @$pb.TagNumber(5)
  set vip(VipInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasVip() => $_has(4);
  @$pb.TagNumber(5)
  void clearVip() => $_clearField(5);
  @$pb.TagNumber(5)
  VipInfo ensureVip() => $_ensure(4);

  /// 用户直播信息
  @$pb.TagNumber(6)
  LiveInfo get live => $_getN(5);
  @$pb.TagNumber(6)
  set live(LiveInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearLive() => $_clearField(6);
  @$pb.TagNumber(6)
  LiveInfo ensureLive() => $_ensure(5);

  /// 空间页跳转链接
  @$pb.TagNumber(7)
  $core.String get uri => $_getSZ(6);
  @$pb.TagNumber(7)
  set uri($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearUri() => $_clearField(7);

  /// 挂件
  @$pb.TagNumber(8)
  UserPendant get pendant => $_getN(7);
  @$pb.TagNumber(8)
  set pendant(UserPendant value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPendant() => $_has(7);
  @$pb.TagNumber(8)
  void clearPendant() => $_clearField(8);
  @$pb.TagNumber(8)
  UserPendant ensurePendant() => $_ensure(7);

  /// 认证名牌
  @$pb.TagNumber(9)
  Nameplate get nameplate => $_getN(8);
  @$pb.TagNumber(9)
  set nameplate(Nameplate value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasNameplate() => $_has(8);
  @$pb.TagNumber(9)
  void clearNameplate() => $_clearField(9);
  @$pb.TagNumber(9)
  Nameplate ensureNameplate() => $_ensure(8);
}

/// 挂件
class UserPendant extends $pb.GeneratedMessage {
  factory UserPendant({
    $fixnum.Int64? pid,
    $core.String? name,
    $core.String? image,
    $fixnum.Int64? expire,
  }) {
    final result = create();
    if (pid != null) result.pid = pid;
    if (name != null) result.name = name;
    if (image != null) result.image = image;
    if (expire != null) result.expire = expire;
    return result;
  }

  UserPendant._();

  factory UserPendant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPendant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticuserpendantgetdefault=>_': ')
  static UserPendant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPendant>(create);
  static UserPendant? _defaultInstance;

  /// 挂件 ID
  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => $_clearField(1);

  /// 挂件名称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// 挂件图片
  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  /// 挂件有效期
  @$pb.TagNumber(4)
  $fixnum.Int64 get expire => $_getI64(3);
  @$pb.TagNumber(4)
  set expire($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExpire() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpire() => $_clearField(4);
}

/// 角标
class VideoBadge extends $pb.GeneratedMessage {
  factory VideoBadge({
    $core.String? text,
    $core.String? textColor,
    $core.String? textColorNight,
    $core.String? bgColor,
    $core.String? bgColorNight,
    $core.String? borderColor,
    $core.String? borderColorNight,
    $core.int? bgStyle,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (textColor != null) result.textColor = textColor;
    if (textColorNight != null) result.textColorNight = textColorNight;
    if (bgColor != null) result.bgColor = bgColor;
    if (bgColorNight != null) result.bgColorNight = bgColorNight;
    if (borderColor != null) result.borderColor = borderColor;
    if (borderColorNight != null) result.borderColorNight = borderColorNight;
    if (bgStyle != null) result.bgStyle = bgStyle;
    return result;
  }

  VideoBadge._();

  factory VideoBadge.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VideoBadge.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticvideobadgegetdefault=>_d': ')
  static VideoBadge getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoBadge>(create);
  static VideoBadge? _defaultInstance;

  /// 文案
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  /// 文案文本颜色
  @$pb.TagNumber(2)
  $core.String get textColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTextColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColor() => $_clearField(2);

  /// 文案文本颜色 (暗黑模式下)
  @$pb.TagNumber(3)
  $core.String get textColorNight => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColorNight($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTextColorNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColorNight() => $_clearField(3);

  /// 背景颜色
  @$pb.TagNumber(4)
  $core.String get bgColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set bgColor($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBgColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBgColor() => $_clearField(4);

  /// 背景颜色 (暗黑模式下)
  @$pb.TagNumber(5)
  $core.String get bgColorNight => $_getSZ(4);
  @$pb.TagNumber(5)
  set bgColorNight($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBgColorNight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBgColorNight() => $_clearField(5);

  /// 边框颜色
  @$pb.TagNumber(6)
  $core.String get borderColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set borderColor($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBorderColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearBorderColor() => $_clearField(6);

  /// 边框颜色 (暗黑模式下)
  @$pb.TagNumber(7)
  $core.String get borderColorNight => $_getSZ(6);
  @$pb.TagNumber(7)
  set borderColorNight($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBorderColorNight() => $_has(6);
  @$pb.TagNumber(7)
  void clearBorderColorNight() => $_clearField(7);

  /// 样式
  @$pb.TagNumber(8)
  $core.int get bgStyle => $_getIZ(7);
  @$pb.TagNumber(8)
  set bgStyle($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBgStyle() => $_has(7);
  @$pb.TagNumber(8)
  void clearBgStyle() => $_clearField(8);
}

/// 大会员信息
class VipInfo extends $pb.GeneratedMessage {
  factory VipInfo({
    $core.int? type,
    $core.int? status,
    $fixnum.Int64? dueDate,
    VipLabel? label,
    $core.int? themeType,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (status != null) result.status = status;
    if (dueDate != null) result.dueDate = dueDate;
    if (label != null) result.label = label;
    if (themeType != null) result.themeType = themeType;
    return result;
  }

  VipInfo._();

  factory VipInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VipInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticvipinfogetdefault=>_defa': ')
  static VipInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipInfo>(create);
  static VipInfo? _defaultInstance;

  /// 大会员类型
  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// 大会员状态
  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  /// 大会员过期时间
  @$pb.TagNumber(3)
  $fixnum.Int64 get dueDate => $_getI64(2);
  @$pb.TagNumber(3)
  set dueDate($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDueDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDueDate() => $_clearField(3);

  /// 大会员标签
  @$pb.TagNumber(4)
  VipLabel get label => $_getN(3);
  @$pb.TagNumber(4)
  set label(VipLabel value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabel() => $_clearField(4);
  @$pb.TagNumber(4)
  VipLabel ensureLabel() => $_ensure(3);

  /// 大会员主题
  @$pb.TagNumber(5)
  $core.int get themeType => $_getIZ(4);
  @$pb.TagNumber(5)
  set themeType($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasThemeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearThemeType() => $_clearField(5);
}

/// 大会员标签
class VipLabel extends $pb.GeneratedMessage {
  factory VipLabel({
    $core.String? path,
  }) {
    final result = create();
    if (path != null) result.path = path;
    return result;
  }

  VipLabel._();

  factory VipLabel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VipLabel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.staticviplabelgetdefault=>_def': ')
  static VipLabel getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipLabel>(create);
  static VipLabel? _defaultInstance;

  /// 图片地址
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment(',
  'general.staticvoid_resetadaptersfornet': ')
  static void _resetAdaptersForNetworkChange() {
    try {
      final (h11, connectionManager) = _createPool();
      if (connectionManager != null) {
        (dio.httpClientAdapter as Http2Adapter)
          ..connectionManager.close(force: true)
          ..connectionManager = connectionManager
          ..fallbackAdapter.close(force: true)
          ..fallbackAdapter = h11;
        _http11Dio?.httpClientAdapter = h11;
      } else {
        dio
          ..httpClientAdapter.close(force: true)
          ..httpClientAdapter = h11;
      }
    } catch (_) {}
  }

  /*
   * config it and create
   */
  Request._internal() {
    //BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: HttpString.apiBaseUrl,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(milliseconds: 10000),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(milliseconds: 10000),
      //Http请求头.
      headers: {
        ',
  'general.tf_hw（华为云）': 'tf_hw（华为云）',
  'general.tf_tx（腾讯云）': 'tf_tx（腾讯云）',
  'general.up主:${item.upper!.name!}': 'UP主: ${item.upper!.name!}',
  'general.up主:${owner.name}': 'UP主: ${owner.name}',
  'general.up主:${videodetail.owner!.name!': 'UP主: ${videoDetail.owner!.name!}',
  'general.up主已关闭弹幕': 'UP主已关闭弹幕',
  'general.up主等人': 'UP主等人 ',
  'general.voidondatadynamicdata{finalhea': ')
  void onData(dynamic data) {
    final header = PackageHeaderRes.fromBytesData(data as Uint8List);
    if (header != null) {
      List<int> decompressedData = const [];
      //心跳包回复不用处理
      if (header.operationCode == 3) return;
      if (header.operationCode == 8) {
        _heartBeat();
      }
      try {
        switch (header.protocolVer) {
          case 0:
          case 1:
            _processingData(data);
            return;
          case 2:
            decompressedData = ZLibDecoder().convert(
              Uint8List.sublistView(data, 0x10),
            );
            break;
          case 3:
            decompressedData = const BrotliDecoder().convert(
              Uint8List.sublistView(data, 0x10),
            );
          //debugPrint(',
  'general.voidvideopositionlistenduratio': ')
  void videoPositionListen(Duration position) {
    if (_controller == null || !playerController.enableShowDanmaku.value) {
      return;
    }

    if (!playerController.showDanmaku && !widget.isPipMode) {
      return;
    }

    if (!playerController.playerStatus.isPlaying) {
      return;
    }

    int currentPosition = position.inMilliseconds;
    currentPosition -= currentPosition % 100; //取整百的毫秒数
    if (currentPosition == latestAddedPosition) {
      return;
    }
    latestAddedPosition = currentPosition;

    List<DanmakuElem>? currentDanmakuList = _plDanmakuController
        .getCurrentDanmaku(currentPosition);
    if (currentDanmakuList != null) {
      final blockColorful = DanmakuOptions.blockColorful;
      for (DanmakuElem e in currentDanmakuList) {
        if (e.mode == 7) {
          try {
            _controller!.addDanmaku(
              SpecialDanmakuContentItem.fromList(
                DmUtils.decimalToColor(e.color),
                e.fontsize.toDouble(),
                jsonDecode(e.content.replaceAll(',
  'general.wheni.emoji!=null:finalsize=i.': ' when (i.emoji != null):
            final size = i.emoji!.size * 20.0;
            spanChildren.add(
              WidgetSpan(
                child: NetworkImgLayer(
                  src: i.emoji!.url,
                  type: ImageType.emote,
                  width: size,
                  height: size,
                ),
              ),
            );
            break;
          // 抽奖
          case ',
  'general.{controller.clear;ifsearchsugg': ') {
      controller.clear();
      if (searchSuggestion) searchSuggestList.clear();
      searchFocusNode.requestFocus();
      showUidBtn.value = false;
    } else {
      Get.back();
    }
  }

  // 搜索
  Future<void> submit() async {
    if (controller.text.isEmpty) {
      if (hintText.isNullOrEmpty) {
        return;
      }
      controller.text = hintText!;
      validateUid();
    }

    if (recordSearchHistory.value) {
      historyList
        ..remove(controller.text)
        ..insert(0, controller.text);
      GStorage.historyWord.put(',
  'general.},style:consttextstylecolor:co': '}),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        /// 时间进度 toast
        if (!isLive)
          IgnorePointer(
            ignoring: true,
            child: Align(
              alignment: Alignment.topCenter,
              child: FractionalTranslation(
                translation: isFullScreen
                    ? const Offset(0.0, 1.2)
                    : const Offset(0.0, 0.8),
                child: Obx(
                  () => AnimatedOpacity(
                    curve: Curves.easeInOut,
                    opacity: plPlayerController.isSliderMoving.value
                        ? 1.0
                        : 0.0,
                    duration: const Duration(milliseconds: 150),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x88000000),
                        borderRadius: BorderRadius.all(Radius.circular(64)),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Row(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() {
                            return Text(
                              DurationUtils.formatDuration(
                                plPlayerController
                                    .sliderTempPosition
                                    .value
                                    .inSeconds,
                              ),
                              style: textStyle,
                            );
                          }),
                          const Text(',
  'general.},};}//视频信息标题、简介staticfuture<l': '}),
    };
  }

  // 视频信息 标题、简介
  static Future<LoadingState<VideoDetailData>> videoIntro({
    required String bvid,
  }) async {
    final res = await Request().get(
      Api.videoIntro,
      queryParameters: {',
  'general.}]}}else{acksessionmsgmsgs.las': '}]}
      } else {
        ackSessionMsg(msgs.last.msgSeqno.toInt());
      }
      msgs.removeWhere((e) => e.msgType == MsgType.EN_MSG_TYPE_DRAW_BACK.value);
      eInfos ??= <EmotionInfo>[];
      eInfos!.addAll(response.response.eInfos);
    }
    return false;
  }

  // 消息标记已读
  Future<void> ackSessionMsg(int msgSeqno) async {
    final res = await MsgHttp.ackSessionMsg(
      talkerId: talkerId,
      ackSeqno: msgSeqno,
    );
    if (!res.isSuccess) {
      res.toast();
    }
  }

  late bool _isSending = false;
  Future<void> sendMsg({
    String? message,
    Map? picMsg,
    required VoidCallback onClearText,
    int? msgType,
    int? index,
  }) async {
    // debug
    // if (loadingState.value case Success(:final response)) {
    //   final list = List.of(response ?? <Msg>[])
    //     ..insert(
    //       0,
    //       Msg.create()..mergeFromProto3Json({
    //         ',
  'general.}也关注了ta': '}也关注了TA',
  'general.}关注': '}关注',
  'general.}关注数:${numutils.numformatitem.': '}    关注数: ${NumUtils.numFormat(item.fansNum ?? 0)}',
  'general.}后台播放': '}后台播放',
  'general.}已投1枚硬币': '}已投1枚硬币',
  'general.}收藏': '}收藏',
  'general.}收藏成功': '}收藏成功',
  'general.}的推荐': '}的推荐',
  'general.}的最近投币': '}的最近投币',
  'general.}绑定到此youtube视频$ytbid': '}绑定到此YouTube视频($ytbId)',
  'general.}置顶': '}置顶',
  'general.}置顶成功': '}置顶成功',
  'general.}订阅成功': '}订阅成功',
  'general.}预约': '}预约',
  'general.→16px（与旧版html专栏基准一致）//其余/null→': ' → 16px（与旧版 HTML 专栏基准一致）
  //   其余/null → 同 regular
  double get effectiveFontSize =>
      fontSize ?? (fontLevel == ',
  'general.「$label」的筛选结果': '「$label」的筛选结果',
  'general.万': '万',
  'general.三': '三',
  'general.三连成功': '三连成功',
  'general.上一页': '上一页',
  'general.上下翻转': ' 上下翻转 ',
  'general.上次看到第${itemasint+1}p，点击跳转': '上次看到第${(item as int) + 1}P，点击跳转',
  'general.上次看到这里\n点击刷新': '上次看到这里\n点击刷新',
  'general.下一页': '下一页',
  'general.下载完成': '下载完成',
  'general.下载文件:$suggestedfilename?': '下载文件: $suggestedFilename ?',
  'general.不丹': '不丹',
  'general.不产生查询或播放记录\n': '不产生查询或播放记录\n',
  'general.不再通知': '不再通知',
  'general.不支持投屏': '不支持投屏',
  'general.不支持播放该类型视频': '不支持播放该类型视频',
  'general.不支持的类型${element.paratype}': '不支持的类型 (${element.paraType})',
  'general.不能选gif': '不能选GIF',
  'general.不透明度${plplayercontroller.danma': '不透明度 ${plPlayerController.danmakuOpacity * 100}%',
  'general.与上次相同': '与上次相同',
  'general.与原$title相同': '与原$title相同',
  'general.专栏卡片': '专栏卡片',
  'general.业务通知': '业务通知',
  'general.个人空间': '个人空间',
  'general.个性签名': '个性签名',
  'general.中国台湾': '中国台湾',
  'general.中国大陆': '中国大陆',
  'general.中国澳门特别行政区': '中国澳门特别行政区',
  'general.中国香港特别行政区': '中国香港特别行政区',
  'general.临时屏蔽：${moduleauthor.name}': '临时屏蔽：${moduleAuthor.name}',
  'general.丹麦': '丹麦',
  'general.主播${_controller.counts[1]!=-1?': '主播 ${_controller.counts[1] != -1 ? _controller.counts[1] : ',
  'general.举报失败，您已经被禁言。': '举报失败，您已经被禁言。',
  'general.举报失败，系统拒绝受理您的举报请求。': '举报失败，系统拒绝受理您的举报请求。',
  'general.举报失败，系统错误。': '举报失败，系统错误。',
  'general.举报失败，请先激活账号。': '举报失败，请先激活账号。',
  'general.举报已提交': '举报已提交',
  'general.举报选中弹幕': '举报选中弹幕',
  'general.乌克兰': '乌克兰',
  'general.乌兹别克斯坦': '乌兹别克斯坦',
  'general.乌干达': '乌干达',
  'general.乌拉圭': '乌拉圭',
  'general.乍得': '乍得',
  'general.也门': '也门',
  'general.二': '二',
  'general.互动': '互动',
  'general.互动视频': '互动视频',
  'general.五': '五',
  'general.亚美尼亚': '亚美尼亚',
  'general.人为ta充电': '人为TA充电',
  'general.人加入大航海': '人加入大航海',
  'general.亿': '亿',
  'general.仅播放音频': '仅播放音频',
  'general.仅本次（默认）': '仅本次（默认）',
  'general.今天': '今天 ',
  'general.从黑名单移除up主': '从黑名单移除UP主',
  'general.以色列': '以色列',
  'general.伊拉克': '伊拉克',
  'general.伊朗': '伊朗',
  'general.会员': '会员',
  'general.伯利兹': '伯利兹',
  'general.低俗': '低俗',
  'general.低俗色情': '低俗色情',
  'general.佛得角': '佛得角',
  'general.佩戴中': '佩戴中',
  'general.佳作': '佳作',
  'general.使用app端api实现的功能将不可用': '使用App端Api实现的功能将不可用',
  'general.使用cookie登录': '使用Cookie登录',
  'general.使用手机短信验证码登录': '使用手机短信验证码登录',
  'general.使用账号密码登录': '使用账号密码登录',
  'general.侵犯个人权益': '侵犯个人权益',
  'general.侵犯隐私': '侵犯隐私',
  'general.俄罗斯': '俄罗斯',
  'general.保加利亚': '保加利亚',
  'general.保存为永久': '保存为永久',
  'general.保存失败:$e': '保存失败: $e',
  'general.保存字幕': '保存字幕',
  'general.保存成功': '保存成功',
  'general.保存至相册': '保存至相册',
  'general.保存至默认分组': '保存至默认分组',
  'general.保存评论': '保存评论',
  'general.保密': '保密',
  'general.修改$title': '修改$title',
  'general.修改名称': '修改名称',
  'general.修改成功': '修改成功',
  'general.倒序播放': '倒序播放',
  'general.停止': '停止',
  'general.充电排行榜': '充电排行榜',
  'general.克罗地亚': '克罗地亚',
  'general.入站必刷': '入站必刷',
  'general.全局屏蔽': '全局屏蔽',
  'general.全屏字体大小${danmakuoptions.danmaku': '全屏字体大小 ${(DanmakuOptions.danmakuFontScaleFS * 100).toStringAsFixed(1)}%',
  'general.全屏字体大小${subtitlefontscalefs*10': '全屏字体大小 ${(subtitleFontScaleFS * 100).toStringAsFixed(1)}%',
  'general.全部关注': '全部关注',
  'general.全部合集/列表': '全部合集/列表',
  'general.全部图文': '全部图文',
  'general.全部标签': '全部标签',
  'general.全部类型': '全部类型',
  'general.公开佩戴的粉丝勋章': '公开佩戴的粉丝勋章',
  'general.公开学校信息': '公开学校信息',
  'general.公开我的关注列表': '公开我的关注列表',
  'general.公开我的收藏': '公开我的收藏',
  'general.公开我的粉丝列表': '公开我的粉丝列表',
  'general.公开我的追漫': '公开我的追漫',
  'general.公开我的追番追剧': '公开我的追番追剧',
  'general.公开拥有的粉丝装扮': '公开拥有的粉丝装扮',
  'general.公开最近投币的视频': '公开最近投币的视频',
  'general.公开最近点赞的视频': '公开最近点赞的视频',
  'general.公开最近玩过的游戏': '公开最近玩过的游戏',
  'general.公开笔记': '公开笔记',
  'general.六': '六',
  'general.共$count视频': '共$count视频',
  'general.共${_controller.totalsize??0}首': '共${_controller.totalSize ?? 0}首',
  'general.共${_favdetailcontroller.folder': '共${_favDetailController.folderInfo.value.mediaCount}条视频',
  'general.共${folderinfo.mediacount}条视频·': '共${folderInfo.mediaCount}条视频 · ',
  'general.共${info.mediacount}条视频': '共${info.mediaCount}条视频',
  'general.共${item.mediacount}条视频·${biliu': ' 共${item.mediaCount}条视频 · ${BiliUtils.isPublicFavText(item.attr)}',
  'general.共${pages.length}集': '共${pages.length}集',
  'general.共${replyitem.count}条回复': '共${replyItem.count}条回复',
  'general.共拥有': '共拥有 ',
  'general.关于空降助手': '关于空降助手',
  'general.关岛': '关岛',
  'general.关注': ' 关注 ',
  'general.关注分组排序': '关注分组排序',
  'general.关注时间': '关注时间',
  'general.关注时间:${dateformatutils.longfor': '关注时间: ${DateFormatUtils.longFormatDs.format(
            DateTime.fromMillisecondsSinceEpoch(response.mtime! * 1000),
          )}',
  'general.关注直播': '关注直播',
  'general.关键词屏蔽': '关键词屏蔽',
  'general.其他应用打开': '其他应用打开',
  'general.其他问题': '其他问题',
  'general.其它': '其它',
  'general.其它${item.type}': '其它(${item.type})',
  'general.其它app打开': '其它app打开',
  'general.内容': '内容',
  'general.内容分区': '内容分区',
  'general.内容太多啦！超过1000不支持排序': '内容太多啦！超过1000不支持排序',
  'general.内容已失效': '内容已失效',
  'general.内容时长': '内容时长',
  'general.冈比亚': '冈比亚',
  'general.写短评': '写短评',
  'general.写长评': '写长评',
  'general.冰岛': '冰岛',
  'general.几内亚': '几内亚',
  'general.几内亚比绍': '几内亚比绍',
  'general.出生年月': '出生年月',
  'general.分享up主': '分享UP主',
  'general.分享v2消息': '分享v2消息',
  'general.分享到动态': ' 分享到动态',
  'general.分享我的主页': '分享我的主页',
  'general.分享消息': '分享消息',
  'general.分享直播间': '分享直播间',
  'general.分享视频': '分享视频',
  'general.分区:${controller.articlezonetyp': '分区: ${controller.articleZoneType!.value.label}',
  'general.分区:${item.areaname??': '分区: ${item.areaName ?? ',
  'general.分段进度条': '分段进度条 ',
  'general.分类': '分类',
  'general.分组排序': '分组排序',
  'general.切换${_controller.showfirstframe': '切换${_controller.showFirstFrame ? ',
  'general.切换${controller.showfirstframe?': '切换${controller.showFirstFrame ? ',
  'general.切换到：$title': '切换到：$title',
  'general.切换至${controller.nextthemetype.': '切换至${controller.nextThemeType.desc}主题',
  'general.切换路线': '切换路线',
  'general.列表': '列表',
  'general.刚刚': '刚刚',
  'general.刚刚开播': '刚刚开播',
  'general.刚果': '刚果',
  'general.刚果金': '刚果(金)',
  'general.创建': '创建',
  'general.创建者:${item.upper?.name}\n${ite': '创建者: ${item.upper?.name}\n${item.mediaCount}个视频 · ${NumUtils.numFormat(item.viewCount)}播放',
  'general.删除中...': '删除中...',
  'general.删除分组': '删除分组',
  'general.删除后，该分组下的用户依旧保留？': '删除后，该分组下的用户依旧保留？',
  'general.删除失败,$res': '删除失败, $res',
  'general.删除已看记录': '删除已看记录',
  'general.删除短评，同时删除评分？': '删除短评，同时删除评分？',
  'general.删除记录': '删除记录',
  'general.删除评论': '删除评论',
  'general.利比亚': '利比亚',
  'general.利比里亚': '利比里亚',
  'general.刷屏': '刷屏',
  'general.刷新二维码': '刷新二维码',
  'general.前往': '前往',
  'general.前往隐私设置了解详情': '(前往隐私设置了解详情)',
  'general.剧透': '剧透',
  'general.剩余有效时间:${_loginpagectr.qrcodel': '剩余有效时间: ${_loginPageCtr.qrCodeLeftTime} 秒',
  'general.功能菜单': '功能菜单',
  'general.加入过滤': '加入过滤',
  'general.加拿大': '加拿大',
  'general.加纳': '加纳',
  'general.加蓬': '加蓬',
  'general.加载中': '加载中',
  'general.加载全部收藏夹再排序': '加载全部收藏夹再排序',
  'general.加载失败:$e': '加载失败: $e',
  'general.加载字幕': '加载字幕',
  'general.动态${_controller.counts[1]!=-1?': '动态 ${_controller.counts[1] != -1 ? _controller.counts[1] : ',
  'general.勋章墙公开显示所有粉丝勋章': '勋章墙公开显示所有粉丝勋章',
  'general.匈牙利': '匈牙利',
  'general.千': '千',
  'general.单选': '单选         ',
  'general.南非': '南非',
  'general.博茨瓦纳': '博茨瓦纳',
  'general.卡塔尔': '卡塔尔',
  'general.卢旺达': '卢旺达',
  'general.卢森堡': '卢森堡',
  'general.印尼': '印尼',
  'general.印度': '印度',
  'general.即将移除该视频，确定是否移除': '即将移除该视频，确定是否移除',
  'general.厄瓜多尔': '厄瓜多尔',
  'general.厄立特里亚': '厄立特里亚',
  'general.历史记录': '历史记录',
  'general.历史记录功能已关闭': ' 历史记录功能已关闭',
  'general.原因': '原因',
  'general.原始弹幕消息======>${jsonencodeobj}': ' 原始弹幕消息 ======> ${jsonEncode(obj)}',
  'general.原文': '原文',
  'general.去ta的个人空间': '去TA的个人空间',
  'general.参数为空': '参数为空',
  'general.反对票': '反对票',
  'general.发个消息聊聊呗~': '发个消息聊聊呗~',
  'general.发布时间': '发布时间',
  'general.发现': '发现',
  'general.发表评论': '发表评论',
  'general.发起': '发起',
  'general.发送中...': '发送中...',
  'general.发送弹幕': '发送弹幕',
  'general.发送短信验证码失败，请尝试其它登录方式\n': '发送短信验证码失败，请尝试其它登录方式\n',
  'general.发送验证码': '发送验证码',
  'general.取消保存': '取消保存',
  'general.取消置顶成功': '取消置顶成功',
  'general.取消订阅': '取消订阅',
  'general.取消订阅成功': '取消订阅成功',
  'general.变化': '变化',
  'general.叙利亚': '叙利亚',
  'general.古巴': '古巴',
  'general.可填写简介': '可填写简介',
  'general.可见': '可见',
  'general.合作': '合作',
  'general.合集': '合集 ',
  'general.吉尔吉斯斯坦': '吉尔吉斯斯坦',
  'general.吉布提': '吉布提',
  'general.同时点赞': ' 同时点赞',
  'general.名称': '名称',
  'general.名称不能为空': '名称不能为空',
  'general.后台播放': ' 后台播放 ',
  'general.听视频': ' 听视频 ',
  'general.周${const[': '周${const [
                                                ',
  'general.哔哩哔哩登录已失效，请重新登录': '哔哩哔哩登录已失效，请重新登录',
  'general.哔哩哔哩认证': '哔哩哔哩认证',
  'general.哥伦比亚': '哥伦比亚',
  'general.哥斯达黎加': '哥斯达黎加',
  'general.啊叻？你要暂停历史记录功能吗？': '啊叻？你要暂停历史记录功能吗？',
  'general.啊叻？你要清空历史记录功能吗？': '啊叻？你要清空历史记录功能吗？',
  'general.啊叻？要恢复历史记录功能吗？': '啊叻？要恢复历史记录功能吗？',
  'general.喀麦隆': '喀麦隆',
  'general.四': '四',
  'general.回关': '回关',
  'general.回到底部': '回到底部',
  'general.回复${widget.replyitem!.member.n': ' 回复 @${widget.replyItem!.member.name} : $message',
  'general.固定转滚动': '固定转滚动',
  'general.图文': '图文',
  'general.图片卡片': '图片卡片',
  'general.图片消息': '图片消息',
  'general.图瓦卢': '图瓦卢',
  'general.土库曼斯坦': '土库曼斯坦',
  'general.土耳其': '土耳其',
  'general.圣卢西亚': '圣卢西亚',
  'general.圣多美和普林西比': '圣多美和普林西比',
  'general.圣皮埃尔和密克隆群岛': '圣皮埃尔和密克隆群岛',
  'general.圣马力诺': '圣马力诺',
  'general.在${item.item?.business}中了我': ' 在${item.item?.business}中@了我',
  'general.地址': '地址',
  'general.地理位置': '地理位置',
  'general.坦桑尼亚': '坦桑尼亚',
  'general.垃圾广告': '垃圾广告',
  'general.埃及': '埃及',
  'general.埃塞俄比亚': '埃塞俄比亚',
  'general.基础url（不推荐）': '基础URL（不推荐）',
  'general.基里巴斯': '基里巴斯',
  'general.塞内加尔': '塞内加尔',
  'general.塞尔维亚': '塞尔维亚',
  'general.塞拉利昂': '塞拉利昂',
  'general.塞浦路斯': '塞浦路斯',
  'general.塞舌尔共和国': '塞舌尔共和国',
  'general.墨西哥': '墨西哥',
  'general.备份失败:$e': '备份失败: $e',
  'general.备份失败，请检查配置:${res.second}': '备份失败，请检查配置: ${res.second}',
  'general.备份成功': '备份成功',
  'general.备份设置': '备份设置',
  'general.备用url': '备用URL',
  'general.复制sc信息': '复制 SC 信息',
  'general.复制全部': '复制全部',
  'general.复制弹幕信息': '复制弹幕信息',
  'general.多哥': '多哥',
  'general.多米尼加': '多米尼加',
  'general.多米尼加代表': '多米尼加代表',
  'general.多选': '多选',
  'general.大会员经验': '大会员经验',
  'general.大航海舰队': '大航海舰队',
  'general.天': ' 天',
  'general.失败:$i': '失败: $i',
  'general.失败:$res': '失败: $res',
  'general.头像': '头像',
  'general.头像挂件': '头像挂件',
  'general.奥地利': '奥地利',
  'general.女': '女',
  'general.委内瑞拉': '委内瑞拉',
  'general.字体大小${danmakuoptions.danmakufo': '字体大小 ${(DanmakuOptions.danmakuFontScale * 100).toStringAsFixed(1)}%',
  'general.字体大小${subtitlefontscale*100.to': '字体大小 ${(subtitleFontScale * 100).toStringAsFixed(1)}%',
  'general.字体粗细${danmakuoptions.danmakufo': '字体粗细 ${DanmakuOptions.danmakuFontWeight + 1}（可能无法精确调节）',
  'general.字体粗细${subtitlefontweight+1}（可能': '字体粗细 ${subtitleFontWeight + 1}（可能无法精确调节）',
  'general.字幕设置': '字幕设置',
  'general.孟加拉国': '孟加拉国',
  'general.安哥拉': '安哥拉',
  'general.安提瓜岛和巴布达': '安提瓜岛和巴布达',
  'general.安道尔': '安道尔',
  'general.完成': '完成',
  'general.完整榜单': '完整榜单',
  'general.定位至上次观看': '定位至上次观看',
  'general.密克罗尼西亚': '密克罗尼西亚',
  'general.密码': ' 密码',
  'general.对我的${item.item?.business}发布了${': ' 对我的${item.item?.business}发布了${item.counts}条评论',
  'general.对方主动回复或关注你前，最多发送1条消息': '对方主动回复或关注你前，最多发送1条消息',
  'general.对话列表': '对话列表',
  'general.导入': '导入',
  'general.导入/导出历史记录': '导入/导出历史记录',
  'general.导出': '导出',
  'general.封面': '封面',
  'general.小程序': '小程序',
  'general.尼加拉瓜': '尼加拉瓜',
  'general.尼日利亚': '尼日利亚',
  'general.尼日尔': '尼日尔',
  'general.尼泊尔': '尼泊尔',
  'general.屏蔽': '屏蔽',
  'general.屏蔽${isenable?': '屏蔽${isEnable ? ',
  'general.屏蔽发送者': '屏蔽发送者',
  'general.屏蔽成功': '屏蔽成功',
  'general.屏蔽管理${plplayercontroller.filte': '屏蔽管理(${plPlayerController.filters.count})',
  'general.左右翻转': ' 左右翻转 ',
  'general.左右边距$subtitlepaddingh': '左右边距 $subtitlePaddingH',
  'general.已': '已',
  'general.已${introcontroller.pgctype}': '已${introController.pgcType}',
  'general.已临时屏蔽${moduleauthor.name}${mod': '已临时屏蔽${moduleAuthor.name}(${moduleAuthor.mid!})，重启恢复',
  'general.已互关': '已互关',
  'general.已取消收藏': '已取消收藏',
  'general.已复制到剪贴板，可粘贴至已登录的app私信处发送，然后点击已': '已复制到剪贴板，可粘贴至已登录的app私信处发送，然后点击已发送的链接打开',
  'general.已完成三连': '已完成三连',
  'general.已拉黑': '已拉黑',
  'general.已收藏': '已收藏',
  'general.已标记为已读': '已标记为已读',
  'general.已清理': '已清理',
  'general.已看完': '已看完',
  'general.已禁用': '已禁用',
  'general.已结束': ' 已结束',
  'general.已设为临时无痕模式': '已设为临时无痕模式',
  'general.已设为永久无痕模式': '已设为永久无痕模式',
  'general.已设置为${result.desc}，正在重载视频': '已设置为 ${result.desc}，正在重载视频',
  'general.已跳至${item.segmenttype.shorttit': '已跳至${item.segmentType.shortTitle}',
  'general.已跳至第${item+1}p': '已跳至第${item + 1}P',
  'general.已跳过${item.segmenttype.shorttit': '已跳过${item.segmentType.shortTitle}片段',
  'general.已踩': '已踩',
  'general.已进入无痕模式': '已进入无痕模式',
  'general.已退出无痕模式': '已退出无痕模式',
  'general.已选:${_favdetailcontroller.chec': '已选: ${_favDetailController.checkedCount}',
  'general.已预约': '已预约',
  'general.巴哈马群岛': '巴哈马群岛',
  'general.巴基斯坦': '巴基斯坦',
  'general.巴巴多斯': '巴巴多斯',
  'general.巴布亚新几内亚': '巴布亚新几内亚',
  'general.巴拉圭': '巴拉圭',
  'general.巴拿马': '巴拿马',
  'general.巴林': '巴林',
  'general.巴西': '巴西',
  'general.布基纳法索': '布基纳法索',
  'general.布隆迪': '布隆迪',
  'general.希腊': '希腊',
  'general.帕劳': '帕劳',
  'general.广告骚扰': '广告骚扰',
  'general.库克岛': '库克岛',
  'general.底部': '底部',
  'general.底部边距$subtitlepaddingb': '底部边距 $subtitlePaddingB',
  'general.开始': '开始',
  'general.开始记笔记': '开始记笔记',
  'general.开播$duration': '开播$duration',
  'general.开曼群岛': '开曼群岛',
  'general.异形卡片': '异形卡片',
  'general.引战': '引战',
  'general.弹幕列表': '弹幕列表',
  'general.弹幕地址链接失败:$e': '弹幕地址链接失败: $e',
  'general.弹幕字号': '弹幕字号',
  'general.弹幕屏蔽': '弹幕屏蔽',
  'general.弹幕行高${danmakuoptions.danmakuli': '弹幕行高 ${DanmakuOptions.danmakuLineHeight}',
  'general.弹幕设置': '弹幕设置',
  'general.弹幕颜色': '弹幕颜色',
  'general.当前:${pref.playervolume.tostrin': '当前: ${Pref.playerVolume.toStringAsFixed(0)}%',
  'general.当前为${_loginpagectr.selectedcou': '当前为${_loginPageCtr.selectedCountryCodeId.cname}，',
  'general.当前画质${videodetailctr.currentvi': '当前画质 ${videoDetailCtr.currentVideoQa.value?.desc}',
  'general.当前直播间未开播': '当前直播间未开播',
  'general.当前网络：$network': '当前网络：$network',
  'general.当前网页将要打开外部链接，是否打开': '当前网页将要打开外部链接，是否打开',
  'general.当前视频不支持ai视频总结': '当前视频不支持AI视频总结',
  'general.当前视频不支持选择画质': '当前视频不支持选择画质',
  'general.当前视频不支持选择解码格式': '当前视频不支持选择解码格式',
  'general.当前视频暂不支持ai视频总结': '当前视频暂不支持AI视频总结',
  'general.当前解码格式${videodetailctr.current': '当前解码格式 ${videoDetailCtr.currentDecodeFormats.description}',
  'general.当前评论区不支持发送图片': '当前评论区不支持发送图片',
  'general.当前调用栈为：': '当前调用栈为：',
  'general.当前账号未支持手机号验证，请尝试其它登录方式': '当前账号未支持手机号验证，请尝试其它登录方式',
  'general.当前音质${videodetailctr.currentau': '当前音质 ${videoDetailCtr.currentAudioQa!.desc}',
  'general.当前：${videoutils.cdnservice.des': '当前：${VideoUtils.cdnService.desc}，无法播放请切换',
  'general.彩色': '彩色',
  'general.很好': '很好',
  'general.很差': '很差',
  'general.德国': '德国',
  'general.快速': '快速',
  'general.忽略短于此时长的片段': '忽略短于此时长的片段',
  'general.恢复': '恢复',
  'general.恢复失败:$e': '恢复失败: $e',
  'general.恢复失败，请检查配置:${res.second}': '恢复失败，请检查配置: ${res.second}',
  'general.恢复成功': '恢复成功',
  'general.恢复观看历史': '恢复观看历史',
  'general.恢复观看记录': '恢复观看记录',
  'general.恢复设置': '恢复设置',
  'general.恶意刷屏': '恶意刷屏',
  'general.悄悄关注': '悄悄关注',
  'general.您为大家节省了${numutils.formatpositi': '您为大家节省了 ${NumUtils.formatPositiveDecimal(viewCount)} 片段\n',
  'general.您已经举报过这条弹幕了。': '您已经举报过这条弹幕了。',
  'general.您提交了${numutils.formatpositived': '您提交了 ${NumUtils.formatPositiveDecimal(segmentCount)} 片段\n',
  'general.您的信息': '您的信息',
  'general.您的操作过于频繁，请稍后再试。': '您的操作过于频繁，请稍后再试。',
  'general.意大利': '意大利',
  'general.我与$name的': '我与$name的',
  'general.我们的共同关注': '我们的共同关注',
  'general.我关注的${controller.total.value}人': '我关注的${controller.total.value}人也关注了${controller.name.value ?? ',
  'general.我的': '@我的',
  'general.我的关注': '我的关注  ',
  'general.我的动态': '我的动态',
  'general.我的常用标签': '我的常用标签  ',
  'general.我的收藏': '我的收藏  ',
  'general.我的粉丝': '我的粉丝',
  'general.我的订阅': '我的订阅',
  'general.我的评论': '我的评论',
  'general.所罗门群岛': '所罗门群岛',
  'general.手机号': '手机号',
  'general.手机号仅用于bilibili官方发送验证码与登录接口，不予保': '手机号仅用于 bilibili 官方发送验证码与登录接口，不予保存；\n',
  'general.打开': '打开',
  'general.打开本地文件夹': '打开本地文件夹',
  'general.托克劳岛': '托克劳岛',
  'general.扫码': '扫码',
  'general.扫码成功': '扫码成功',
  'general.找回密码（手机版）': '找回密码（手机版）',
  'general.找回密码（电脑版）': '找回密码（电脑版）',
  'general.投屏': '投屏',
  'general.投币失败': '投币失败',
  'general.投票:${content.vote.title}': '投票: ${content.vote.title}',
  'general.投票失败:$i': '投票失败: $i',
  'general.投票成功': '投票成功',
  'general.投票：${i.text}': '投票：${i.text}',
  'general.投稿卡片': '投稿卡片',
  'general.投稿视频': '投稿视频',
  'general.投稿视频列表中展现包月充电专属视频': '投稿视频列表中展现包月充电专属视频',
  'general.投稿视频列表中展现直播回放': '投稿视频列表中展现直播回放',
  'general.投稿视频列表中展现课堂视频': '投稿视频列表中展现课堂视频',
  'general.拉脱维亚': '拉脱维亚',
  'general.按类型屏蔽': '按类型屏蔽',
  'general.按钮$pb.tagnumber4$core.boolgetd': ' 按钮
  @$pb.TagNumber(4)
  $core.bool get displayAttention => $_getBF(3);
  @$pb.TagNumber(4)
  set displayAttention($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisplayAttention() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayAttention() => $_clearField(4);

  /// 角标
  @$pb.TagNumber(5)
  $core.String get badge => $_getSZ(4);
  @$pb.TagNumber(5)
  set badge($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBadge() => $_has(4);
  @$pb.TagNumber(5)
  void clearBadge() => $_clearField(5);

  /// 新关注组件
  @$pb.TagNumber(6)
  Relation get relation => $_getN(5);
  @$pb.TagNumber(6)
  set relation(Relation value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRelation() => $_has(5);
  @$pb.TagNumber(6)
  void clearRelation() => $_clearField(6);
  @$pb.TagNumber(6)
  Relation ensureRelation() => $_ensure(5);
}

/// 付费课程卡片
class CardCheese extends $pb.GeneratedMessage {
  factory CardCheese({
    $core.String? cover,
    $fixnum.Int64? progress,
    $fixnum.Int64? duration,
    $core.String? subtitle,
    $fixnum.Int64? state,
  }) {
    final result = create();
    if (cover != null) result.cover = cover;
    if (progress != null) result.progress = progress;
    if (duration != null) result.duration = duration;
    if (subtitle != null) result.subtitle = subtitle;
    if (state != null) result.state = state;
    return result;
  }

  CardCheese._();

  factory CardCheese.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardCheese.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.按钮$pb.tagnumber6$core.boolgetd': ' 按钮
  @$pb.TagNumber(6)
  $core.bool get displayAttention => $_getBF(5);
  @$pb.TagNumber(6)
  set displayAttention($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDisplayAttention() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisplayAttention() => $_clearField(6);

  /// 新关注组件
  @$pb.TagNumber(7)
  Relation get relation => $_getN(6);
  @$pb.TagNumber(7)
  set relation(Relation value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRelation() => $_has(6);
  @$pb.TagNumber(7)
  void clearRelation() => $_clearField(7);
  @$pb.TagNumber(7)
  Relation ensureRelation() => $_ensure(6);
}

/// OGV 稿件卡片
class CardOGV extends $pb.GeneratedMessage {
  factory CardOGV({
    $core.String? cover,
    $fixnum.Int64? progress,
    $fixnum.Int64? duration,
    $core.String? subtitle,
    $core.String? badge,
    $fixnum.Int64? state,
  }) {
    final result = create();
    if (cover != null) result.cover = cover;
    if (progress != null) result.progress = progress;
    if (duration != null) result.duration = duration;
    if (subtitle != null) result.subtitle = subtitle;
    if (badge != null) result.badge = badge;
    if (state != null) result.state = state;
    return result;
  }

  CardOGV._();

  factory CardOGV.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardOGV.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.按钮文案$pb.tagnumber2$core.string': ' 按钮文案
  @$pb.TagNumber(2)
  $core.String get showAll => $_getSZ(1);
  @$pb.TagNumber(2)
  set showAll($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShowAll() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowAll() => $_clearField(2);

  /// UP 主列表
  @$pb.TagNumber(3)
  $pb.PbList<UpListItem> get list => $_getList(2);
}

enum ModuleDynamic_Card {
  cardUgc,
  cardPgc,
  cardCurrSeason,
  cardCurrBatch,
  notSet
}

/// Module: 动态详情
class ModuleDynamic extends $pb.GeneratedMessage {
  factory ModuleDynamic({
    $core.String? cardType,
    CardUGC? cardUgc,
    CardPGC? cardPgc,
    CardCurrSeason? cardCurrSeason,
    CardCurrBatch? cardCurrBatch,
  }) {
    final result = create();
    if (cardType != null) result.cardType = cardType;
    if (cardUgc != null) result.cardUgc = cardUgc;
    if (cardPgc != null) result.cardPgc = cardPgc;
    if (cardCurrSeason != null) result.cardCurrSeason = cardCurrSeason;
    if (cardCurrBatch != null) result.cardCurrBatch = cardCurrBatch;
    return result;
  }

  ModuleDynamic._();

  factory ModuleDynamic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleDynamic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ModuleDynamic_Card>
      _ModuleDynamic_CardByTag = {
    2: ModuleDynamic_Card.cardUgc,
    3: ModuleDynamic_Card.cardPgc,
    4: ModuleDynamic_Card.cardCurrSeason,
    5: ModuleDynamic_Card.cardCurrBatch,
    0: ModuleDynamic_Card.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? ',
  'general.挪威': '挪威',
  'general.捷克': '捷克',
  'general.排序:${_favdetailcontroller.fold': '排序: ${_favDetailController.folderInfo.value.title}',
  'general.排序:${controller.articleorderty': '排序: ${controller.articleOrderType.value.label}',
  'general.排序:${controller.userordertype!': '排序: ${controller.userOrderType!.value.label}',
  'general.排序完成': '排序完成',
  'general.排序方式': '排序方式',
  'general.接收通知': '接收通知',
  'general.描边粗细$subtitlestrokewidth': '描边粗细 $subtitleStrokeWidth',
  'general.描边粗细${danmakuoptions.danmakust': '描边粗细 ${DanmakuOptions.danmakuStrokeWidth}',
  'general.提交失败:$res': '提交失败: $res',
  'general.提交成功': '提交成功',
  'general.提交搬运视频${res.issuccess?': '提交搬运视频${res.isSuccess ? ',
  'general.提交片段': '提交片段',
  'general.插入内容': '插入内容',
  'general.搜索「${_controller.uname}」的动态、视频': '搜索「${_controller.uname}」的动态、视频',
  'general.搜索不携带身份信息\n': '搜索不携带身份信息\n',
  'general.搜索房间或主播': '搜索房间或主播',
  'general.摩尔多瓦': '摩尔多瓦',
  'general.摩洛哥': '摩洛哥',
  'general.摩纳哥': '摩纳哥',
  'general.撤回': '撤回',
  'general.撤回成功': '撤回成功',
  'general.撤回消息': '撤回消息',
  'general.播放信息': '播放信息',
  'general.播放倍速${_controller.speed}': '播放倍速(${_controller.speed})',
  'general.播放全部': '播放全部',
  'general.播放器音量:${player.getproperty': '播放器音量: ${player.getProperty(',
  'general.播放模式': '播放模式',
  'general.播放进度信息跟随视频取流\n': '播放进度信息跟随视频取流\n',
  'general.收藏于${dateformatutils.dateforma': '收藏于${DateFormatUtils.dateFormat(int.parse(item.ctime!))}',
  'general.收藏夹排序': '收藏夹排序',
  'general.政治敏感': '政治敏感',
  'general.数据': '数据',
  'general.数据不足以解析packageheader': '数据不足以解析PackageHeader',
  'general.文字': '文字',
  'general.文本提示': '文本提示',
  'general.文本消息': '文本消息',
  'general.文莱': '文莱',
  'general.文集号:${item.id}': '文集号: ${item.id}',
  'general.斐济': '斐济',
  'general.斯威士兰': '斯威士兰',
  'general.斯洛伐克': '斯洛伐克',
  'general.斯洛文尼亚': '斯洛文尼亚',
  'general.斯里兰卡': '斯里兰卡',
  'general.新关注': '新关注',
  'general.新加坡': '新加坡',
  'general.新增粉丝': '新增粉丝',
  'general.新西兰': '新西兰',
  'general.无序': '无序',
  'general.无法获取播放地址': '无法获取播放地址',
  'general.无痕': '无痕',
  'general.无痕搜索': '无痕搜索',
  'general.日': '日',
  'general.日本': '日本',
  'general.日本語': '日本語',
  'general.昨天${_twodigitsdate.hour}:${_tw': '昨天 ${_twoDigits(date.hour)}:${_twoDigits(date.minute)}',
  'general.是否将': '是否将',
  'general.是否确认评论过滤的变更：': '是否确认评论过滤的变更：',
  'general.昵称': '昵称',
  'general.显示': '显示',
  'general.显示区域${danmakuoptions.danmakush': '显示区域 ${DanmakuOptions.danmakuShowArea * 100}%',
  'general.显示密码': '显示密码',
  'general.显示窗口': '显示窗口',
  'general.显示菜单': '显示菜单',
  'general.显示跳过toast': '显示跳过Toast',
  'general.智利': '智利',
  'general.智能云屏蔽${danmakuoptions.danmakuw': '智能云屏蔽 ${DanmakuOptions.danmakuWeight} 级',
  'general.暂停中': '暂停中',
  'general.暂停观看历史': '暂停观看历史',
  'general.暂停观看记录': '暂停观看记录',
  'general.暂未支持的类型:\n${item.idstr}\n${ite': '暂未支持的类型: \n${item.idStr}\n${item.type}',
  'general.更多设置': '更多设置',
  'general.更改类别': '更改类别',
  'general.更新弹幕': '更新弹幕',
  'general.替换封面': '替换封面',
  'general.最多选$choicecnt项': '最多选$choiceCnt项',
  'general.最多选$e项': '最多选$e项',
  'general.最多选择$limit张图片': '最多选择$limit张图片',
  'general.最早添加': '最早添加',
  'general.最短片段时长': '最短片段时长',
  'general.最近${widget.tabtype==hometabtyp': '最近${widget.tabType == HomeTabType.bangumi ? ',
  'general.最近投币的视频': '最近投币的视频',
  'general.最近添加': '最近添加',
  'general.最近点赞的视频': '最近点赞的视频',
  'general.最高画质': '最高画质',
  'general.有害社区环境': '有害社区环境',
  'general.服务器地址': '服务器地址',
  'general.服务器状态': '服务器状态',
  'general.朝鲜': '朝鲜',
  'general.未': '未',
  'general.未匹配到bv号': '未匹配到 BV 号',
  'general.未发布笔记': '未发布笔记',
  'general.未知': '未知',
  'general.未绑定手机用户': '未绑定手机用户',
  'general.未能获取dislikereasons或feedbacks': '未能获取dislikeReasons或feedbacks',
  'general.未能获取threepoint': '未能获取threePoint',
  'general.未能获取手机号': '未能获取手机号',
  'general.本地仅存储登录凭证。\n': '本地仅存储登录凭证。\n',
  'general.本次登录环境存在风险,需使用手机号进行验证或绑定': '本次登录环境存在风险, 需使用手机号进行验证或绑定',
  'general.本次登录需要验证您的手机号': '本次登录需要验证您的手机号',
  'general.来自${item.itemsourcename}': '来自${item.itemSourceName}',
  'general.枚粉丝勋章': ' 枚粉丝勋章',
  'general.查看': '查看',
  'general.查看主页': '查看主页',
  'general.查看全部': '查看全部',
  'general.查看动态': '查看动态',
  'general.查看对话': '查看对话',
  'general.查看更多': '查看更多',
  'general.查看更多内容': '查看更多内容',
  'general.查看缓存': '查看缓存',
  'general.查看评论': '查看评论',
  'general.查看详情': '查看详情',
  'general.查看详情页': '查看详情页',
  'general.柬埔寨': '柬埔寨',
  'general.标准': '标准',
  'general.标灰画质需要bilibili会员（已是会员？请关闭无痕模式）': '标灰画质需要bilibili会员（已是会员？请关闭无痕模式）；4k和杜比视界播放效果可能不佳',
  'general.标记为${item.title}': '标记为${item.title}',
  'general.根据bilibili官方登录接口规范，密码将在本地加盐、加密': '根据 bilibili 官方登录接口规范，密码将在本地加盐、加密后传输。\n',
  'general.格林纳达': '格林纳达',
  'general.格陵兰岛': '格陵兰岛',
  'general.格鲁吉亚': '格鲁吉亚',
  'general.桑给巴尔岛': '桑给巴尔岛',
  'general.检查评论': '检查评论',
  'general.正在上传图片': '正在上传图片',
  'general.正在上传图片...': '正在上传图片...',
  'general.正在下载音频': '正在下载音频',
  'general.正在删除弹幕屏蔽规则……': '正在删除弹幕屏蔽规则……',
  'general.正在发送': '正在发送',
  'general.正在同步弹幕屏蔽规则……': '正在同步弹幕屏蔽规则……',
  'general.正在播放：': '正在播放：',
  'general.正在播放：${currepisode.longtitle??': ' 正在播放：${currEpisode.longTitle ?? currEpisode.title}',
  'general.正在播放：${pages[pageindex].part}': ' 正在播放：${pages[pageIndex].part}',
  'general.正在添加弹幕屏蔽规则……': '正在添加弹幕屏蔽规则……',
  'general.正在生成截图': '正在生成截图',
  'general.正在直播${_controller.counts[0]!=-': '正在直播 ${_controller.counts[0] != -1 ? _controller.counts[0] : ',
  'general.正在缓存': '正在缓存',
  'general.正在缓存${_downloadservice.waitdow': '正在缓存 (${_downloadService.waitDownloadQueue.length})',
  'general.正在获取ai总结': '正在获取AI总结',
  'general.正常': '正常',
  'general.正序': '正序',
  'general.正序播放': '正序播放',
  'general.此功能追踪您跳过了哪些片段，让用户知道他们提交的片段帮助了多': '此功能追踪您跳过了哪些片段，让用户知道他们提交的片段帮助了多少人。同时点赞会作为依据，确保垃圾信息不会污染数据库。在您每次跳过片段时，我们都会向服务器发送一条消息。希望大家开启此项设置，以便得到更准确的统计数据。:)',
  'general.此时调用栈为：': '此时调用栈为：',
  'general.此条消息为自动回复': '此条消息为自动回复',
  'general.每周必看': '每周必看',
  'general.每周必看${config?.label??': '每周必看 ${config?.label ?? ',
  'general.比利时': '比利时',
  'general.比赛详情': '比赛详情',
  'general.毛里塔尼亚': '毛里塔尼亚',
  'general.毛里求斯': '毛里求斯',
  'general.汤加': '汤加',
  'general.沙特阿拉伯': '沙特阿拉伯',
  'general.没有设备': '没有设备',
  'general.法国': '法国',
  'general.法属圭亚那': '法属圭亚那',
  'general.法属波利尼西亚': '法属波利尼西亚',
  'general.法罗岛': '法罗岛',
  'general.波兰': '波兰',
  'general.波多黎各': '波多黎各',
  'general.波黑': '波黑',
  'general.泰国': '泰国',
  'general.津巴布韦': '津巴布韦',
  'general.洪都拉斯': '洪都拉斯',
  'general.浏览器打开': '浏览器打开',
  'general.海地': '海地',
  'general.海量弹幕': '海量弹幕',
  'general.涉政谣言': '涉政谣言',
  'general.涉社会事件谣言': '涉社会事件谣言',
  'general.添加到收藏夹': '添加到收藏夹',
  'general.添加新的': '添加新的',
  'general.添加时间:${dateformatutils.formati': '添加时间: ${DateFormatUtils.format(item.mtime, format: DateFormatUtils.longFormatDs)}',
  'general.添加片段': '添加片段',
  'general.添加至「稍后再看」': '添加至「稍后再看」',
  'general.添加至桌面': '添加至桌面',
  'general.添加选项': ' 添加选项',
  'general.清空全部': '清空全部',
  'general.清空失效': '清空失效',
  'general.清空看完': '清空看完',
  'general.清空观看历史': '清空观看历史',
  'general.清空观看记录': '清空观看记录',
  'general.清除失效内容': '清除失效内容',
  'general.游戏赛事': '游戏赛事',
  'general.滚动': '滚动',
  'general.滚动弹幕固定速度': '滚动弹幕固定速度',
  'general.滚动弹幕时长${danmakuoptions.danmaku': '滚动弹幕时长 ${DanmakuOptions.danmakuDuration} 秒',
  'general.演职人员：': '演职人员：',
  'general.漫画': '漫画',
  'general.澳大利亚': '澳大利亚',
  'general.点击开启': '点击开启',
  'general.点击进入标签': '点击进入标签',
  'general.点此重新加载': '点此重新加载',
  'general.点评': '点评',
  'general.点评成功': '点评成功',
  'general.点赞等其它操作不受影响\n': '点赞等其它操作不受影响\n',
  'general.点赞详情': '点赞详情',
  'general.爱尔兰': '爱尔兰',
  'general.爱沙尼亚': '爱沙尼亚',
  'general.片段信息': '片段信息',
  'general.牙买加': '牙买加',
  'general.特克斯和凯科斯': '特克斯和凯科斯',
  'general.特别关注': '特别关注',
  'general.特立尼达和多巴哥': '特立尼达和多巴哥',
  'general.玻利维亚': '玻利维亚',
  'general.瑙鲁': '瑙鲁',
  'general.瑞典': '瑞典',
  'general.瑞士': '瑞士',
  'general.瓜德罗普岛': '瓜德罗普岛',
  'general.瓦利斯群岛和富图纳群岛': '瓦利斯群岛和富图纳群岛',
  'general.瓦努阿图': '瓦努阿图',
  'general.用户id': '用户ID',
  'general.用户id要求至少为30个字符长度的纯字符串': '用户ID要求至少为30个字符长度的纯字符串',
  'general.用户主页': '用户主页',
  'general.用户分类': '用户分类',
  'general.用户名或密码不能为空': '用户名或密码不能为空',
  'general.用户等级': '用户等级',
  'general.用户类型:${controller.usertype!.va': '用户类型: ${controller.userType!.value.label}',
  'general.用户粉丝数及等级排序顺序': '用户粉丝数及等级排序顺序',
  'general.电视剧': '电视剧',
  'general.男': '男',
  'general.画中画': '画中画',
  'general.画质已变为：${newqa.desc}': '画质已变为：${newQa.desc}',
  'general.登录失败:$e': '登录失败: $e',
  'general.登录失败，请尝试其它登录方式\n': '登录失败，请尝试其它登录方式\n',
  'general.登录异常，接口未返回数据：${res[': '登录异常，接口未返回数据：${res[',
  'general.登录异常，接口未返回身份信息，可能是因为账号风控，请尝试其它': '登录异常，接口未返回身份信息，可能是因为账号风控，请尝试其它登录方式。\n${res[',
  'general.登录成功,请先设置账号模式': '登录成功, 请先设置账号模式',
  'general.登录记录': '登录记录',
  'general.白俄罗斯': '白俄罗斯',
  'general.百慕大群岛': '百慕大群岛',
  'general.盐与公钥均由官方提供；以rsa/ecb/pkcs1paddi': '盐与公钥均由官方提供；以 RSA/ECB/PKCS1Padding 方式加密。\n',
  'general.直布罗陀': '直布罗陀',
  'general.直播未开播': '直播未开播',
  'general.直播预约:${reservecard.title}': '直播预约: ${reserveCard.title}',
  'general.相关回复共${numutils.numformatcount': '相关回复共${NumUtils.numFormat(count)}条',
  'general.相簿': '相簿',
  'general.看直播': '看直播',
  'general.短信': '短信',
  'general.短信验证码已发送，请查收': '短信验证码已发送，请查收',
  'general.硬币': '硬币 ',
  'general.硬币不足': '硬币不足',
  'general.硬币余额：${max0.0,_coins.todouble.': '硬币余额：${max(0.0, _coins.toDouble().toPrecision(1))}',
  'general.硬币记录': '硬币记录',
  'general.确定$filesize': '确定 ($fileSize)',
  'general.确定删除已选中的笔记吗？': '确定删除已选中的笔记吗？',
  'general.确定删除该对话？': '确定删除该对话？',
  'general.确定删除该收藏夹?': '确定删除该收藏夹?',
  'general.确定删除该规则？': '确定删除该规则？',
  'general.确定删除该视频？': '确定删除该视频？',
  'general.确定删除该通知?': '确定删除该通知?',
  'general.确定删除这条评论吗？\n\n': '确定删除这条评论吗？\n\n',
  'general.确定删除选中视频？': '确定删除选中视频？',
  'general.确定删除？': '确定删除？',
  'general.确定取消': '确定取消',
  'general.确定取消收藏该课堂？': '确定取消收藏该课堂？',
  'general.确定取消收藏？': '确定取消收藏？',
  'general.确定取消订阅吗？': '确定取消订阅吗？',
  'general.确定将$name移出黑名单？': '确定将 $name 移出黑名单？',
  'general.确定拉黑up主?': '确定拉黑UP主?',
  'general.确定提交': '确定提交',
  'general.确定无误再提交': '确定无误再提交',
  'general.确定清空已失效视频吗？': '确定清空已失效视频吗？',
  'general.确定清空已看完视频吗？': '确定清空已看完视频吗？',
  'general.确定清空搜索历史？': '确定清空搜索历史？',
  'general.确定清空稍后再看列表吗？': '确定清空稍后再看列表吗？',
  'general.确定移除${item.uname}？': '确定移除 ${item.uname} ？',
  'general.确定移除该视频？': '确定移除该视频？',
  'general.确定缓存全部？': '确定缓存全部？',
  'general.确认': '确认',
  'general.确认删除所选收藏吗？': '确认删除所选收藏吗？',
  'general.确认删除所选稍后再看吗？': '确认删除所选稍后再看吗？',
  'general.确认恢复': '确认恢复',
  'general.确认暂停': '确认暂停',
  'general.确认清空': '确认清空',
  'general.确认移除': '确认移除',
  'general.福克兰岛': '福克兰岛',
  'general.离线缓存': '离线缓存',
  'general.科威特': '科威特',
  'general.科摩罗': '科摩罗',
  'general.科特迪瓦': '科特迪瓦',
  'general.秘鲁': '秘鲁',
  'general.移除封面': '移除封面',
  'general.移除成功': '移除成功',
  'general.移除粉丝': '移除粉丝',
  'general.移除置顶': '移除置顶',
  'general.移除黑名单': '移除黑名单',
  'general.空空的~': '空空的~',
  'general.空间设置': '空间设置',
  'general.空降助手：搬运视频同步': '空降助手：搬运视频同步',
  'general.突尼斯': '突尼斯',
  'general.立即': '立即',
  'general.立陶宛': '立陶宛',
  'general.笔记${count==-1?': '笔记${count == -1 ? ',
  'general.第${currentindex.value+1}集，共${e': '第${currentIndex.value + 1}集，共${episodes.length}集',
  'general.第${index+1}话': '第${index + 1}话',
  'general.等${item.counts}人': ' 等${item.counts}人',
  'general.等${item.items!.length}人': '等${item.items!.length}人',
  'general.等人': ' 等人',
  'general.等待${_loginpagectr.smssendcoold': '等待${_loginPageCtr.smsSendCooldown}秒',
  'general.等待中': '等待中',
  'general.等级${card.levelinfo?.currentlev': '等级${card.levelInfo?.currentLevel}',
  'general.等级${item.level}': '等级${item.level}',
  'general.简介：': '简介：',
  'general.简介：${item.evaluate}': '简介：${item.evaluate}',
  'general.简体中文': '简体中文',
  'general.管理': '管理',
  'general.类别更改${i.issuccess?': '类别更改${i.isSuccess ? ',
  'general.粉丝勋章墙': '粉丝勋章墙',
  'general.粉丝：${numutils.numformatitem.fa': '粉丝：${NumUtils.numFormat(item.fans)}  视频：${NumUtils.numFormat(item.videos)}',
  'general.精确分享': '精确分享',
  'general.系统撤销': '系统撤销',
  'general.索引': '索引',
  'general.索马里': '索马里',
  'general.累计': '累计',
  'general.约旦': '约旦',
  'general.纪录片': '纪录片',
  'general.纳米比亚': '纳米比亚',
  'general.纽埃岛': '纽埃岛',
  'general.经验': '      经验 ',
  'general.经验记录': '经验记录',
  'general.结束': '结束',
  'general.继续播放': '继续播放',
  'general.维克岛': '维克岛',
  'general.维珍群岛美属': '维珍群岛(美属)',
  'general.维珍群岛英属': '维珍群岛(英属)',
  'general.综合': '综合',
  'general.缅甸': '缅甸',
  'general.缓存全部': '缓存全部',
  'general.编辑信息': '编辑信息',
  'general.编辑分组名称': '编辑分组名称',
  'general.编辑成功': '编辑成功',
  'general.编辑资料': '编辑资料',
  'general.网页投稿': '网页投稿',
  'general.网页链接': '网页链接',
  'general.罗马尼亚': '罗马尼亚',
  'general.置顶成功': '置顶成功',
  'general.美国': '美国',
  'general.翻译失败:$errmsg': '翻译失败: $errMsg',
  'general.翻译结果为空': '翻译结果为空',
  'general.老挝': '老挝',
  'general.聚会岛': '聚会岛',
  'general.肯尼亚': '肯尼亚',
  'general.背景不透明度${subtitlebgopacity*100.': '背景不透明度 ${(subtitleBgOpacity * 100).toInt()}%',
  'general.自动回复推送': '自动回复推送',
  'general.自定义表情': '自定义表情',
  'general.自由复制': '自由复制',
  'general.至': '至',
  'general.至${dateformatutils.format_vote': '至 ${DateFormatUtils.format(_voteInfo.endTime, format: DateFormatUtils.longFormatDs)}',
  'general.色情': '色情',
  'general.芬兰': '芬兰',
  'general.苏丹': '苏丹',
  'general.苏里南': '苏里南',
  'general.英国': '英国',
  'general.荷兰': '荷兰',
  'general.莫桑比克': '莫桑比克',
  'general.莱索托': '莱索托',
  'general.获取哔哩哔哩用户信息失败，可前往账号管理重试': '获取哔哩哔哩用户信息失败，可前往账号管理重试',
  'general.获取安全验证信息失败，请尝试其它登录方式\n': '获取安全验证信息失败，请尝试其它登录方式\n',
  'general.获取弹幕': '获取弹幕',
  'general.获取弹幕失败': '获取弹幕失败',
  'general.获取播放地址': '获取播放地址',
  'general.获取播放地址失败': '获取播放地址失败',
  'general.获取极验参数为空，请尝试其它登录方式\n': '获取极验参数为空，请尝试其它登录方式\n',
  'general.获取用户凭证:$err': '获取用户凭证: $err',
  'general.获取验证码': '获取验证码',
  'general.获取验证码失败，请尝试其它登录方式\n': '获取验证码失败，请尝试其它登录方式\n',
  'general.菲律宾': '菲律宾',
  'general.萨尔瓦多': '萨尔瓦多',
  'general.萨摩亚，东部': '萨摩亚，东部',
  'general.萨摩亚，西部': '萨摩亚，西部',
  'general.葡萄牙': '葡萄牙',
  'general.蒙古': '蒙古',
  'general.蒙特塞拉特岛': '蒙特塞拉特岛',
  'general.虚假不实信息': '虚假不实信息',
  'general.行为类别': '行为类别',
  'general.表情': '表情',
  'general.西班牙': '西班牙',
  'general.要取消收藏吗?': '要取消收藏吗?',
  'general.观看记录': '观看记录',
  'general.视频${_controller.counts[0]!=-1?': '视频 ${_controller.counts[0] != -1 ? _controller.counts[0] : ',
  'general.视频不相关': '视频不相关',
  'general.视频加载错误,$event': '视频加载错误, $event',
  'general.视频开头': '视频开头',
  'general.视频截图': '视频截图',
  'general.视频无关': '视频无关',
  'general.视频结尾': '视频结尾',
  'general.视频进度': '视频进度',
  'general.视频选集': '视频选集 ',
  'general.解码格式': '解码格式',
  'general.订阅': '订阅',
  'general.记录搜索': '记录搜索',
  'general.设为当前': '设为当前',
  'general.设置关注分组': '设置关注分组',
  'general.设置成功，刷新或重新打开网页': '设置成功，刷新或重新打开网页',
  'general.访问${ownername!=null?': '访问${ownerName != null ? ',
  'general.访问:${item.userinfo.uname}': '访问: ${item.userInfo.uname}',
  'general.访问：${item.authorname}': '访问：${item.authorName}',
  'general.评分:${item.mediascore?[': '评分:${item.mediaScore?[',
  'general.评论${count==-1?': '评论${count == -1 ? ',
  'general.评论记录': '评论记录',
  'general.识别二维码，$viewtype$itemtype': '识别二维码，$viewType$itemType',
  'general.诈骗': '诈骗',
  'general.试试扫码、手机号登录，或选择': '试试扫码、手机号登录，或选择',
  'general.该$type已失效': '该$type已失效',
  'general.该条通知删除后，当有新点赞时会重新出现在列表，是否继续？': '该条通知删除后，当有新点赞时会重新出现在列表，是否继续？',
  'general.该账号封禁中': ' 该账号封禁中',
  'general.详情': '详情',
  'general.详细': '详细',
  'general.语音消息': '语音消息',
  'general.请先点击获取验证码': '请先点击获取验证码',
  'general.请务必在${constants.appname}开源仓库等可': '请务必在 ${Constants.appName} 开源仓库等可信渠道下载安装。',
  'general.请输入短信验证码': '请输入短信验证码',
  'general.诺福克岛': '诺福克岛',
  'general.课程': '课程',
  'general.谣言类不实信息': '谣言类不实信息',
  'general.贝宁': '贝宁',
  'general.账号资料': '账号资料',
  'general.赞': '赞',
  'general.赞了我': ' 赞了我',
  'general.赞了我的${item.item?.business}': ' 赞了我的${item.item?.business}',
  'general.赞成票': '赞成票',
  'general.赞比亚': '赞比亚',
  'general.赤道几内亚': '赤道几内亚',
  'general.起': ' 起',
  'general.越南': '越南',
  'general.路径': '路径',
  'general.跳至:': '跳至: ',
  'general.跳至底部': '跳至底部',
  'general.跳至当前': '跳至当前',
  'general.跳至此片段': '跳至此片段',
  'general.跳至顶部': '跳至顶部',
  'general.跳转回复': '跳转回复',
  'general.跳转失败:$e': '跳转失败: $e',
  'general.跳过:${item.segmenttype.shorttit': '跳过: ${item.segmentType.shortTitle}',
  'general.跳过次数统计跟踪': '跳过次数统计跟踪',
  'general.跳过此片段': '跳过此片段',
  'general.轻触评分': '轻触评分',
  'general.较差': '较差',
  'general.输入//之间的正则表达式，无需包含头尾的': '输入//之间的正则表达式，无需包含头尾的',
  'general.输入内容${filter.isempty?': '输入内容${filter.isEmpty ? ',
  'general.输入回复内容': '输入回复内容',
  'general.输入弹幕内容': '输入弹幕内容',
  'general.输入用户uid': '输入用户UID',
  'general.输入过滤的关键词，其它类别请切换标签页后添加': '输入过滤的关键词，其它类别请切换标签页后添加',
  'general.辱骂引战': '辱骂引战',
  'general.达到投币上限啦~': '达到投币上限啦~',
  'general.还没有${widget.tabtype==hometabty': '还没有${widget.tabType == HomeTabType.bangumi ? ',
  'general.还行': '还行',
  'general.这条内容的点赞将不再通知，但仍可在列表内查看，是否继续？': '这条内容的点赞将不再通知，但仍可在列表内查看，是否继续？',
  'general.进入': '进入',
  'general.进度条': '进度条',
  'general.违反法律法规': '违反法律法规',
  'general.违法信息': '违法信息',
  'general.违法信息外链': '违法信息外链',
  'general.违法有害': '违法有害',
  'general.违法违禁': '违法违禁',
  'general.违法违规': '违法违规',
  'general.违规抽奖': '违规抽奖',
  'general.连载': '连载',
  'general.连载中，更新至${utils.isstringnumeric': '连载中，更新至${Utils.isStringNumeric(widget.newEp!.title!) ? ',
  'general.迪戈加西亚岛': '迪戈加西亚岛',
  'general.追番时间表': '追番时间表',
  'general.退出': '退出',
  'general.退出${constants.appname}': '退出 ${Constants.appName}',
  'general.选择解码格式': '选择解码格式',
  'general.选择音质': '选择音质',
  'general.选项${i+1}': '选项${i + 1}',
  'general.通讯录': '通讯录',
  'general.配置失败:${e.tostring}': '配置失败: ${e.toString()}',
  'general.配置失败:${res.second}': '配置失败: ${res.second}',
  'general.配置成功': '配置成功',
  'general.重新': '重新',
  'general.重载视频': '重载视频',
  'general.错误的html:$element': '错误的HTML: $element',
  'general.错误的类型$e${kdebugmode?': '错误的类型 $e${kDebugMode ? ',
  'general.阿塞拜疆': '阿塞拜疆',
  'general.阿富汗': '阿富汗',
  'general.阿尔及利亚': '阿尔及利亚',
  'general.阿尔巴尼亚': '阿尔巴尼亚',
  'general.阿曼': '阿曼',
  'general.阿根廷': '阿根廷',
  'general.阿森松岛': '阿森松岛',
  'general.阿联酋': '阿联酋',
  'general.随机': '随机',
  'general.青少年不良信息': '青少年不良信息',
  'general.静态弹幕时长${danmakuoptions.danmaku': '静态弹幕时长 ${DanmakuOptions.danmakuStaticDuration} 秒',
  'general.非正式会员': '非正式会员',
  'general.非洲中部': '非洲中部',
  'general.韩国': '韩国',
  'general.音质已变为：${newqa.desc}': '音质已变为：${newQa.desc}',
  'general.音频下载失败': '音频下载失败',
  'general.页数': '页数',
  'general.页面比例调节': '页面比例调节',
  'general.顺序': '顺序',
  'general.预约': '预约',
  'general.预约动态': '预约动态',
  'general.领取成功': '领取成功',
  'general.首帧': '首帧',
  'general.马其顿': '马其顿',
  'general.马尔代夫': '马尔代夫',
  'general.马拉维': '马拉维',
  'general.马提尼克岛': '马提尼克岛',
  'general.马来西亚': '马来西亚',
  'general.马歇尔岛': '马歇尔岛',
  'general.马耳他': '马耳他',
  'general.马达加斯加': '马达加斯加',
  'general.马里': '马里',
  'general.马里亚纳岛': '马里亚纳岛',
  'general.验证信息错误：${res[': '验证信息错误：${res[',
  'general.验证成功，正在登录': '验证成功，正在登录',
  'general.验证短信验证码失败，请尝试其它登录方式\n': '验证短信验证码失败，请尝试其它登录方式\n',
  'general.骨': '骨',
  'general.高级': '高级',
  'general.高能观众$onlinecount': '高能观众($onlineCount)',
  'general.黎巴嫩': '黎巴嫩',
  'general.黑名单管理${_blacklistcontroller.to': '黑名单管理${_blackListController.total.value == -1 ? ',
  'general.默认值:$def': '默认值: $def',
  'general.默认头像': '默认头像',
  'general.默认收藏夹不支持排序': '默认收藏夹不支持排序',


  // ===== missing translations (phase 3) =====
  'common.can_send': '可发',
  'common.coins_success': '投币成功',
  'common.has_followed': '已追番',
  'common.like_and_coin': '已三连',
  'common.my_favorites': '我的收藏',
  'common.my_follow': '我的关注',
  'common.no_history': '无已看记录',
  'common.not_empty': '不能为空',
  'common.today': '今天',
  'login.qrcode_expired': '二维码已过期，请刷新',
  'login.qrcode_scan': '使用 bilibili 官方 App 扫码登录',
  'login.scan_method': ' 扫码',
  'login.sms_method': ' 短信',
  'video.album_not_gif': '不能选GIF',
  'video.last_watch': '上次观看',
  'video.no_related_stop_play': '暂无相关视频，停止连播',
  'video.video_count': '共 @count 视频',



  // ===== final translations (complete i18n coverage) =====
  'common.coins': '硬币',
  'common.jump_to': '跳至:',
  'common.my_tags': '我的常用标签',
  'common.one': '一',
  'common.total_have': '共拥有',
  'player.segment_progress': '分段进度条',
  'video.episode_list': '视频选集',

};
