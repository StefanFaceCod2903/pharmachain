part of actions;

@freezed
class SetBasket with _$SetBasket {
  const factory SetBasket(String uid, Basket basket) = SetBasketStart;

  const factory SetBasket.successful() = SetBasketSuccessful;

  const factory SetBasket.error(Object error, StackTrace stackTrace) = SetBasketError;
}
