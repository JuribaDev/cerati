import 'package:cerati/common/constants/routes_constants.dart';
import 'package:cerati/features/login/screen/login_screen.dart';
import 'package:cerati/features/register/screen/register_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router([String? initialLocation]) => GoRouter(
      initialLocation: initialLocation ?? RoutesConstants.register,
      routes: [
        GoRoute(path: RoutesConstants.login, builder: (context, state) => const LoginScreen()),
        GoRoute(path: RoutesConstants.register, builder: (context, state) => const RegisterScreen()),
      ],
    );
