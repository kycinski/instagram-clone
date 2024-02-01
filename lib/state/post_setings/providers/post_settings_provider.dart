import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/post_setings/models/post_setting.dart';
import 'package:instagram_clone/state/post_setings/notifiers/post_settings_notifier.dart';

final postSettingsProvider = StateNotifierProvider<PostSettingsNotifier, Map<PostSetting, bool>>(
  (ref) => PostSettingsNotifier(),
);
