part of models;

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required double lat,
    required double long,
  }) = LocationModel$;

  factory LocationModel.fromJson(Map<dynamic, dynamic> json) =>
      _$LocationModelFromJson(Map<String, dynamic>.from(json));
}
