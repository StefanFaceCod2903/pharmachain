part of models;

@freezed
class Product with _$Product {
  const factory Product({
    String? drug,
    String? pharmacy,
    Map<String, dynamic>? coordinates,
    double? price,
    double? distance,
    String? address,
  }) = Product$;
  factory Product.fromJson(Map<dynamic, dynamic> json) => _$ProductFromJson(Map<String, dynamic>.from(json));
}
