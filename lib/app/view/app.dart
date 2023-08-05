import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/theme/color_scheme.dart';
import 'package:cerati/l10n/l10n.dart';
import 'package:cerati/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSettingBloc, UserSettingState>(
      builder: (context, state) {
        return MaterialApp.router(
          routerConfig: router(),
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: state.locale,
          themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
          supportedLocales: const [Locale('ar'), Locale('en')],
        );
      },
    );
  }
}
