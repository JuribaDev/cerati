import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/common/blocs/language_bloc/language.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';
import 'package:cerati/repositories_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await bootstrap(() {
    return multiRepositoryProvider(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LanguageBloc>(
            create: (context) {
              final bloc = LanguageBloc(context.read<LanguageManager>());
              // ignore: cascade_invocations
              bloc.add(AppStarted());
              return bloc;
            },
          ),
        ],
        child: const App(),
      ),
    );
  });
}

Logger logger = Logger();
