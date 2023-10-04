import 'package:cerati/app/app.dart';
import 'package:cerati/app_initializer.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/services/user_setting_manager/user_setting_manager.dart';
import 'package:cerati/features/user_account/bloc/user_account_bloc.dart';
import 'package:cerati/features/user_account/repository/user_account_repository.dart';
import 'package:cerati/repositories_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll();

  await bootstrap(() {
    return multiRepositoryProvider(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<UserSettingBloc>(
            create: (context) {
              final bloc = UserSettingBloc(context.read<UserSettingManager>());
              // ignore: cascade_invocations
              bloc.add(AppStarted());
              return bloc;
            },
            lazy: false,
          ),
          BlocProvider<UserAccountBloc>(
            create: (context) {
              final bloc = UserAccountBloc(context.read<UserAccountRepository>());
              // ignore: cascade_invocations
              bloc.add(const UserAccountEvent.getUserAccount());
              return bloc;
            },
            lazy: false,
          ),
        ],
        child: const App(),
      ),
    );
  });
}

Logger logger = Logger();
