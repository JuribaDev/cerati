import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/extensions/cast_string_to_bool.dart';
import 'package:cerati/common/services/user_setting_manager/user_setting_manager.dart';

class UserSettingBloc extends Bloc<UserSettingEvent, UserSettingState> {
  UserSettingBloc(this._userSettingManager) : super(UserSettingState.loading()) {
    on<LanguageChangedEvent>(_onLanguageChanged);
    on<AppStarted>(_onAppStarted);
    on<ThemeModeChangedEvent>(_onThemeModeChanged);
  }

  Future<void> _onAppStarted(AppStarted event, Emitter<UserSettingState> emit) async {
    final locale = await _userSettingManager.getLocal();
    final isDark = await _userSettingManager.getThemeMode();
    await _userSettingManager.setThemeMode(isDark: isDark.sToBool());
    await _userSettingManager.setLocale(locale: locale);
    emit(UserSettingState.loaded(locale: locale, isDark: isDark.sToBool()));
  }

  final UserSettingManager _userSettingManager;

  Future<void> _onLanguageChanged(LanguageChangedEvent event, Emitter<UserSettingState> emit) async {
    await _userSettingManager.setLocale(locale: event.locale);
    final isDark = await _userSettingManager.getThemeMode();
    emit(UserSettingState.loaded(locale: event.locale, isDark: isDark.sToBool()));
  }

  Future<void> _onThemeModeChanged(ThemeModeChangedEvent event, Emitter<UserSettingState> emit) async {
    await _userSettingManager.setThemeMode(isDark: event.isDark);
    final locale = await _userSettingManager.getLocal();

    emit(UserSettingState.loaded(locale: locale, isDark: event.isDark));
  }
}
