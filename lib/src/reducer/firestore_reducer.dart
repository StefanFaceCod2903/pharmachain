import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<SearchState> searchReducer = combineReducers(<Reducer<SearchState>>[
  TypedReducer<SearchState, GetProductsStart>(_getProductsStart),
  TypedReducer<SearchState, GetProductsSuccessful>(_getProductsSuccessful),
  TypedReducer<SearchState, GetProductsError>(_getProductsError),
]);

SearchState _getProductsStart(SearchState state, GetProductsStart action) {
  return state.copyWith(isLoading: true);
}

SearchState _getProductsSuccessful(SearchState state, GetProductsSuccessful action) {
  return state.copyWith(products: action.products, isLoading: false);
}

SearchState _getProductsError(SearchState state, GetProductsError action) {
  return state.copyWith(isLoading: false);
}
