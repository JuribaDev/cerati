import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/blocs/language_bloc/language_bloc.dart';
import 'package:cerati/common/blocs/language_bloc/language_event.dart';
import 'package:cerati/common/blocs/language_bloc/language_state.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLanguageManager extends Mock implements LanguageManager {}

void main() {
  group('LanguageBloc', () {
    late LanguageManager languageManager;

    setUpAll(() {
      registerFallbackValue(const Locale('en'));
    });

    setUp(() {
      languageManager = MockLanguageManager();
    });

    blocTest<LanguageBloc, LanguageState>(
      'emits [LanguageState.loaded] when LanguageChanged event is added',
      build: () {
        when(() => languageManager.changeLanguage(locale: any(named: 'locale'))).thenAnswer((_) async => {});
        when(() => languageManager.getLocal()).thenAnswer((_) async => const Locale('en'));
        return LanguageBloc(languageManager);
      },
      act: (bloc) => bloc.add(LanguageChanged(locale: const Locale('en'))),
      expect: () => <LanguageState>[LanguageState.loaded(locale: const Locale('en'))],
    );

    blocTest<LanguageBloc, LanguageState>(
      'emits [LanguageState.loaded] when AppStarted event is added',
      build: () {
        when(() => languageManager.getLocal()).thenAnswer((_) async => const Locale('en'));
        return LanguageBloc(languageManager);
      },
      act: (bloc) => bloc.add(AppStarted()),
      expect: () => <LanguageState>[LanguageState.loaded(locale: const Locale('en'))],
    );
  });
}
