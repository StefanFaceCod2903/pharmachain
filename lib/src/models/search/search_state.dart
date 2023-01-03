part of models;

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) bool isLoading,
    @Default(<Product>[]) List<Product> products,
  }) = SearchState$;

  factory SearchState.fromJson(Map<dynamic, dynamic> json) => _$SearchStateFromJson(Map<String, dynamic>.from(json));
}
