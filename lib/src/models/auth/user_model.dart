part of models;

@freezed
class LoginUser with _$LoginUser {
  const factory LoginUser({
    required String email,
    required String uid,
    required String displayName,
  }) = LoginUser$;

  factory LoginUser.fromJson(Map<dynamic, dynamic> json) => _$LoginUserFromJson(Map<String, dynamic>.from(json));
}
