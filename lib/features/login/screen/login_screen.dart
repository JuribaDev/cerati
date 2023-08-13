import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String message = 'not yet';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).counterAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading) ...[
              const CircularProgressIndicator(),
            ] else ...[
              Text(message)
            ],
            const SizedBox(
              height: 30,
            ),
            FilledButton(
              onPressed: isLoading
                  ? null
                  : () async {
                      setState(() {
                        isLoading = true;
                      });
                      // final res = await repo.login();
                      // res.fold((error) {
                      //   message = error.message;
                      // }, (login) {
                      //   message = login.status;
                      // });
                      setState(() {
                        isLoading = false;
                      });
                      BlocProvider.of<UserSettingBloc>(context).add(LanguageChangedEvent(locale: const Locale('en')));
                    },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () async {
                BlocProvider.of<UserSettingBloc>(context).add(LanguageChangedEvent(locale: const Locale('ar')));
              },
              child: const Text('Arabic'),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<UserSettingBloc, UserSettingState>(builder: (context, state) {
              return CupertinoSwitch(
                  value: state.isDark,
                  onChanged: (val) =>
                      BlocProvider.of<UserSettingBloc>(context).add(ThemeModeChangedEvent(isDark: val)));
            }),
            // BlocBuilder<UserSettingBloc, ThemeModeLoadedState>(
            //   builder: (context, state) {
            //     return CupertinoSwitch(
            //         onChanged: (bool val) {
            //           BlocProvider.of<UserSettingBloc>(context).add(ThemeModeChangedEvent(isDark: val));
            //         },
            //         value: (state is ThemeModeLoadedState) ? state.isDark : false);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
