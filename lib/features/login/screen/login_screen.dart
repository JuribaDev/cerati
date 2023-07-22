import 'package:cerati/common/blocs/language_bloc/language.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:cerati/l10n/l10n.dart';
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
    final repo = context.read<LoginRepository>();
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
            BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return Column(
                  children: [
                    ElevatedButton(
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
                              BlocProvider.of<LanguageBloc>(context).add(LanguageChanged(locale: const Locale('en')));
                            },
                      child: const Text('English'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        BlocProvider.of<LanguageBloc>(context).add(LanguageChanged(locale: const Locale('ar')));
                      },
                      child: const Text('Arabic'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
