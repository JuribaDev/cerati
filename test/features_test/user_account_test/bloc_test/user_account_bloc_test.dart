import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/user_account/bloc/user_account_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockUserAccountRepository mockUserAccountRepository;
  late UserAccountBloc userAccountBloc;

  setUp(() {
    mockUserAccountRepository = MockUserAccountRepository();
    userAccountBloc = UserAccountBloc(mockUserAccountRepository);
  });

  group('UserAccountBloc Tests', () {
    group('GetUserAccount Event', () {
      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, userAccountLoaded] when getUserAccount repository methode return valid response',
          build: () {
            when(
              () => mockUserAccountRepository.getUserAccount(),
            ).thenAnswer((invocation) async => Right(userAccountResponseModelTest));
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.getUserAccount()),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                UserAccountState.userAccountLoaded(userAccountResponseModel: userAccountResponseModelTest)
              ]);

      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, error] when getUserAccount repository methode return failure',
          build: () {
            when(
              () => mockUserAccountRepository.getUserAccount(),
            ).thenAnswer(
              (invocation) async => Left(
                Failure(message: errorMessage),
              ),
            );
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.getUserAccount()),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                const UserAccountState.commonState(commonState: CommonState.error(errorMessage: errorMessage))
              ]);
    });

    group('UpdateUserAccount Event', () {
      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, userAccountLoaded] when updateUserAccount repository methode return valid response',
          build: () {
            when(
              () => mockUserAccountRepository.updateUserAccount(
                  updateUserAccountRequestModel: updateUserAccountRequestModelTest),
            ).thenAnswer((invocation) async => Right(userAccountResponseModelTest));
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.updateUserAccount(
              updateUserAccountRequestModel: updateUserAccountRequestModelTest)),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                UserAccountState.userAccountLoaded(userAccountResponseModel: userAccountResponseModelTest)
              ]);

      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, error] when updateUserAccount repository methode return failure',
          build: () {
            when(
              () => mockUserAccountRepository.updateUserAccount(
                  updateUserAccountRequestModel: updateUserAccountRequestModelTest),
            ).thenAnswer(
              (invocation) async => Left(
                Failure(message: errorMessage),
              ),
            );
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.updateUserAccount(
              updateUserAccountRequestModel: updateUserAccountRequestModelTest)),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                const UserAccountState.commonState(commonState: CommonState.error(errorMessage: errorMessage))
              ]);
    });

    group('UpdateUserPassword Event', () {
      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, userPasswordUpdated] when updateUserPassword repository methode return valid response',
          build: () {
            when(
              () => mockUserAccountRepository.updateUserPassword(
                  updateUserPasswordRequestModel: updateUserPasswordRequestModelTest),
            ).thenAnswer((invocation) async => const Right(updateUserPasswordResponseModelTest));
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.updateUserPassword(
              updateUserPasswordRequestModel: updateUserPasswordRequestModelTest)),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                const UserAccountState.userPasswordUpdated(
                    updateUserPasswordResponseModel: updateUserPasswordResponseModelTest)
              ]);

      blocTest<UserAccountBloc, UserAccountState>(
          'emits [loading, error] when updateUserPassword repository methode return failure',
          build: () {
            when(
              () => mockUserAccountRepository.updateUserPassword(
                  updateUserPasswordRequestModel: updateUserPasswordRequestModelTest),
            ).thenAnswer(
              (invocation) async => Left(
                Failure(message: errorMessage),
              ),
            );
            return userAccountBloc;
          },
          act: (bloc) => bloc.add(const UserAccountEvent.updateUserPassword(
              updateUserPasswordRequestModel: updateUserPasswordRequestModelTest)),
          expect: () => [
                const UserAccountState.commonState(commonState: CommonState.loading()),
                const UserAccountState.commonState(commonState: CommonState.error(errorMessage: errorMessage))
              ]);
    });
  });
}
