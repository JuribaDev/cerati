import 'package:cerati/app/app.dart';
import 'package:cerati/app_initializer.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/services/user_setting_manager/user_setting_manager.dart';
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
        ],
        child: const App(),
      ),
    );
  });
}

Logger logger = Logger();
