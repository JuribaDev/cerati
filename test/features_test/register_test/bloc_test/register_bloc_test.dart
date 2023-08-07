import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../helpers/helpers.dart';

class MockRegisterRepository extends Mock implements RegisterRepository {}

void main() {
  late MockRegisterRepository mockRegisterRepository;
  late RegisterBloc registerBloc;

  setUpAll(() => registerFallbackValue(registerRequestModelTest));
  setUp(() {
    mockRegisterRepository = MockRegisterRepository();
    registerBloc = RegisterBloc(mockRegisterRepository);
  });

  blocTest<RegisterBloc, RegisterState>(
    'emits [loading, success] when repository returns a valid model',
    build: () {
      when(
        () => mockRegisterRepository.register(
          registerRequestModel: any(named: 'registerRequestModel'),
        ),
      ).thenAnswer(
        (_) async => Right(loginResponseModelTest),
      );
      return registerBloc;
    },
    act: (bloc) => bloc.add(const RegisterEvent.register(registerRequestModel: registerRequestModelTest)),
    expect: () => [const RegisterState.loading(), RegisterState.success(registerResponseModel: loginResponseModelTest)],
  );

  blocTest<RegisterBloc, RegisterState>(
    'emits [loading, error] when repository returns an error',
    build: () {
      when(
        () => mockRegisterRepository.register(
          registerRequestModel: any(named: 'registerRequestModel'),
        ),
      ).thenAnswer(
        (_) async => Left(
          Failure(
            message: 'An error occurred',
          ),
        ),
      );
      return registerBloc;
    },
    act: (bloc) => bloc.add(const RegisterEvent.register(registerRequestModel: registerRequestModelTest)),
    expect: () => [const RegisterState.loading(), const RegisterState.error(errorMessage: 'An error occurred')],
  );
}
