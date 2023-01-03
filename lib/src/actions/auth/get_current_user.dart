part of actions;

@freezed
class GetCurrentUser with _$GetCurrentUser {
  const factory GetCurrentUser() = GetCurrentUserStart;

  const factory GetCurrentUser.successful(LoginUser? user) = GetCurrentUserSuccessful;

  const factory GetCurrentUser.error(Object error, StackTrace stackTrace) = GetCurrentUserError;
}
