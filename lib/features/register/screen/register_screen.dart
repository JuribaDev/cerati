import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => RegisterBloc(context.read<RegisterRepository>()),
          child: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.read<RegisterBloc>().add(
                                    const RegisterEvent.register(
                                      registerRequestModel: RegisterRequestModel(
                                        email: 'juriba@example.com',
                                        password: 'admin@1211',
                                        firstName: 'Juriba',
                                        lastName: 'Saleh',
                                      ),
                                    ),
                                  );
                            },
                            child: const Text('Register'),
                          ),
                        ],
                      ),
                  success: (res) => Center(
                        child: Text(res.userAccountResponseModel.fullName),
                      ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error) => Center(child: Text(error)));
            },
          ),
        ),
      ),
    );
  }
}
