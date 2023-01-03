import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/api/location_api.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class LocationEpics {
  LocationEpics(this._api);
  final LocationApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocationStart),
      TypedEpic<AppState, LaunchMapsStart>(_launchMaps)
    ]);
  }

  Stream<dynamic> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.getLocation())
          .map((LocationModel? location) => GetLocation.successful(location))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }

  Stream<dynamic> _launchMaps(Stream<LaunchMapsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LaunchMapsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.launchURLBrowser(action.lat, action.lng))
          .map((_) => const LaunchMaps.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LaunchMaps.error(error, stackTrace));
    });
  }
}
