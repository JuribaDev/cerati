import 'package:cerati/features/login/repository/login_repository.dart';
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
      appBar: AppBar(
        title: const Text('test endpoint'),
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
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () async {
                      setState(() {
                        isLoading = true;
                      });
                      final res = await repo.login();
                      res.fold((error) {
                        message = error.message;
                      }, (login) {
                        message = login.status;
                      });
                      setState(() {
                        isLoading = false;
                      });
                    },
              child: const Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}
