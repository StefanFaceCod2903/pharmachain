part of actions;

@freezed
class CreateUser with _$CreateUser {
  const factory CreateUser({
    required String email,
    required String password,
    required String displayName,
    required ActionResponse response,
  }) = CreateUserStart;

  const factory CreateUser.successful(LoginUser user) = CreateUserSuccessful;

  const factory CreateUser.error(Object error, StackTrace stackTrace) = CreateUserError;
}
