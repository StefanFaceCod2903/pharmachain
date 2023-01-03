part of actions;

@freezed
class LaunchMaps with _$LaunchMaps {
  const factory LaunchMaps(double lat, double lng) = LaunchMapsStart;

  const factory LaunchMaps.successful() = LaunchMapsSuccessful;

  const factory LaunchMaps.error(Object error, StackTrace stackTrace) = LaunchMapsError;
}
