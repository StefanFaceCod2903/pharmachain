part of actions;

@freezed
class GetProducts with _$GetProducts {
  const factory GetProducts({required String name}) = GetProductsStart;

  const factory GetProducts.successful(List<Product> products) = GetProductsSuccessful;

  const factory GetProducts.error(Object error, StackTrace stackTrace) = GetProductsError;
}
