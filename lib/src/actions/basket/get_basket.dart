part of actions;

@freezed
class GetBasket with _$GetBasket {
  const factory GetBasket(String uid) = GetBasketStart;

  const factory GetBasket.successful(Basket basket) = GetBasketSuccessful;

  const factory GetBasket.error(Object error, StackTrace stackTrace) = GetBasketError;
}
