import 'package:cerati/common/widgets/responsive_layout_wrapper.dart';
import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:cerati/features/register/screen/mobile_portrait_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: BlocProvider(
          create: (context) => RegisterBloc(context.read<RegisterRepository>()),
          child: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return state.when(
                registerSuccess: (res) => Center(
                  child: Text(res.userAccountResponseModel.fullName),
                ),
                commonState: (commonState) => commonState.when(
                  initial: () => const ResponsiveLayoutWrapper(
                    mobilePortraitLayout: MobilePortraitView(),
                    mobileLandscapeLayout: Center(
                      child: Text(
                        'Mobile landscape view',
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                    tabletLandscapeLayout: Center(
                      child: Text(
                        'Tablet landscape view',
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                    tabletPortraitLayout: Center(
                      child: Text(
                        'Tablet landscape view',
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                    desktopLayout: Center(
                      child: Text(
                        'Desktop landscape view',
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error) => Center(
                    child: Text(error),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
