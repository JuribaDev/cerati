import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/language_bloc/language_event.dart';
import 'package:cerati/common/blocs/language_bloc/language_state.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(this._languageManager) : super(LanguageState.loading()) {
    on<LanguageChanged>(_onLanguageChanged);
    on<AppStarted>(_onAppStarted);
  }

  Future<void> _onAppStarted(AppStarted event, Emitter<LanguageState> emitter) async {
    final locale = await _languageManager.getLocal();
    emitter(LanguageState.loaded(locale: locale));
  }

  final LanguageManager _languageManager;

  Future<void> _onLanguageChanged(LanguageChanged event, Emitter<LanguageState> emitter) async {
    await _languageManager.changeLanguage(locale: event.locale);
    emitter(LanguageState.loaded(locale: event.locale));
  }
}
