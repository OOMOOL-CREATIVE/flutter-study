part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
    EmailAddress emailAddress,
    Password password, 
    bool showErrorMessages,
    bool isSubmitting, 
    Either<AuthFailure,Unit> ? authFailureOrSuccess,
    // Option과 Either의 차이
    // Option<None,Some>,
    // Either<Left,Right>
  ) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    EmailAddress(""),Password(""),false,false,null
  );
}