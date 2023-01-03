part of models;

@freezed
class LocationState with _$LocationState {
  const factory LocationState({@Default(null) LocationModel? currentLocation}) = LocationState$;

  factory LocationState.fromJson(Map<dynamic, dynamic> json) =>
      _$LocationStateFromJson(Map<String, dynamic>.from(json));
}
