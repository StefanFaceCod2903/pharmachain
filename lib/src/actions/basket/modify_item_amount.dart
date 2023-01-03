part of actions;

@freezed
class ModifyAmount with _$ModifyAmount {
  const factory ModifyAmount(BasketProduct item, int modifier) = ModifyAmountStart;
}
