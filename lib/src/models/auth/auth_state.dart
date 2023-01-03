part of models;

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(null) LoginUser? user}) = AuthState$;

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => _$AuthStateFromJson(Map<String, dynamic>.from(json));
}
