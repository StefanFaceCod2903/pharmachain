part of models;

@freezed
class Basket with _$Basket {
  const factory Basket({
    @Default(<BasketProduct>[]) List<BasketProduct> basketProducts,
    @Default(0.0) double totalPrice,
  }) = Basket$;
  factory Basket.fromJson(Map<dynamic, dynamic> json) => _$BasketFromJson(Map<String, dynamic>.from(json));
}
