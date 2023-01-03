import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<LocationState> locationReducer = combineReducers(<Reducer<LocationState>>[
  TypedReducer<LocationState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<LocationState, LaunchMapsSuccessful>(_launchMapsSuccessful),
]);

LocationState _getLocationSuccessful(LocationState state, GetLocationSuccessful action) {
  return state.copyWith(currentLocation: action.location);
}

LocationState _launchMapsSuccessful(LocationState state, LaunchMapsSuccessful action) {
  return state;
}
