import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, CreateUserSuccessful>(_createUserSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful),
]);

AuthState _createUserSuccessful(AuthState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _getCurrentUserSuccessful(AuthState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}
