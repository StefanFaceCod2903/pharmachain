part of actions;

@freezed
class Pay with _$Pay {
  const factory Pay() = PayStart;

  const factory Pay.successful() = PaySuccessful;

  const factory Pay.error(Object error, StackTrace stackTrace) = PayError;
}
