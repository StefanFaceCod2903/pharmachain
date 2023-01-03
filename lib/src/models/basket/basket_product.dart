part of models;

@freezed
class BasketProduct with _$BasketProduct {
  const factory BasketProduct({
    @Default(Product()) Product product,
    @Default(0) int amount,
  }) = BasketProduct$;

  factory BasketProduct.fromJson(Map<dynamic, dynamic> json) =>
      _$BasketProductFromJson(Map<String, dynamic>.from(json));
}
