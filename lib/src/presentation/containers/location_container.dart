import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux/redux.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key, required this.builder});

  final ViewModelBuilder<LocationModel?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LocationModel?>(
      converter: (Store<AppState> store) {
        return store.state.locationState.currentLocation;
      },
      builder: builder,
    );
  }
}
