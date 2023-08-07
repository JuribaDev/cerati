import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/login/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/constants.dart';
import '../../../helpers/helpers.dart';

void main() {
  late MockLoginRepository mockLoginRepository;
  late LoginBloc loginBloc;

  setUpAll(() => registerFallbackValue(loginRequestModelTest));
  setUp(() {
    mockLoginRepository = MockLoginRepository();
    loginBloc = LoginBloc(mockLoginRepository);
  });

  blocTest<LoginBloc, LoginState>('emits [loading, success] when login repository return valid response',
      build: () {
        when(
          () => mockLoginRepository.login(loginRequestModel: any(named: 'loginRequestModel')),
        ).thenAnswer((invocation) async => Right(loginResponseModelTest));
        return LoginBloc(mockLoginRepository);
      },
      act: (bloc) => bloc.add(const LoginEvent.login(loginRequestModel: loginRequestModelTest)),
      expect: () => [const LoginState.loading(), LoginState.success(loginResponseModel: loginResponseModelTest)]);

  blocTest<LoginBloc, LoginState>('emits [loading, error] when login repository return failure',
      build: () {
        when(
          () => mockLoginRepository.login(
            loginRequestModel: any(named: 'loginRequestModel'),
          ),
        ).thenAnswer(
          (invocation) async => Left(
            Failure(message: errorMessage),
          ),
        );
        return LoginBloc(mockLoginRepository);
      },
      act: (bloc) => bloc.add(const LoginEvent.login(loginRequestModel: loginRequestModelTest)),
      expect: () => [const LoginState.loading(), const LoginState.error(errorMessage: errorMessage)]);
}
