part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({required RegisterRequestModel registerRequestModel}) = _Register;
}
