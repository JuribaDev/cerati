import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLanguageManager extends Mock implements UserSettingManager {}

void main() {
  group('LanguageBloc', () {
    late UserSettingManager userSettingManager;

    setUpAll(() {
      registerFallbackValue(const Locale('en'));
    });

    setUp(() {
      userSettingManager = MockLanguageManager();
    });

    blocTest<UserSettingBloc, UserSettingState>(
      'emits [LocaleLoadedState] when LanguageChanged event is added',
      build: () {
        when(() => userSettingManager.setLocale(locale: any(named: 'locale'))).thenAnswer((_) async => {});
        when(() => userSettingManager.getLocal()).thenAnswer((_) async => const Locale('en'));
        return UserSettingBloc(userSettingManager);
      },
      act: (bloc) => bloc.add(LanguageChangedEvent(locale: const Locale('en'))),
      expect: () => <UserSettingState>[LocaleLoadedState(locale: const Locale('en'))],
    );
  });
}
