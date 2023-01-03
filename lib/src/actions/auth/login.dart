part of actions;

@freezed
class Login with _$Login {
  const factory Login({required String email, required String password, required ActionResponse response}) = LoginStart;

  const factory Login.successful(LoginUser user) = LoginSuccessful;

  const factory Login.error(Object error, StackTrace stackTrace) = LoginError;
}
