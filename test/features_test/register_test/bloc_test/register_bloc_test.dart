import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockRegisterRepository mockRegisterRepository;
  late RegisterBloc registerBloc;

  setUpAll(() => registerFallbackValue(registerRequestModelTest));
  setUp(() {
    mockRegisterRepository = MockRegisterRepository();
    registerBloc = RegisterBloc(mockRegisterRepository);
  });

  blocTest<RegisterBloc, RegisterState>(
    'emits [loading, success] when register repository returns a valid model',
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
    expect: () => [
      const RegisterState.commonState(commonState: CommonState.loading()),
      RegisterState.registerSuccess(registerResponseModel: loginResponseModelTest)
    ],
  );

  blocTest<RegisterBloc, RegisterState>(
    'emits [loading, error] when register repository returns a failure',
    build: () {
      when(
        () => mockRegisterRepository.register(
          registerRequestModel: any(named: 'registerRequestModel'),
        ),
      ).thenAnswer(
        (_) async => Left(
          Failure(
            message: errorMessage,
          ),
        ),
      );
      return registerBloc;
    },
    act: (bloc) => bloc.add(const RegisterEvent.register(registerRequestModel: registerRequestModelTest)),
    expect: () => [
      const RegisterState.commonState(commonState: CommonState.loading()),
      const RegisterState.commonState(commonState: CommonState.error(errorMessage: errorMessage)),
    ],
  );
}
