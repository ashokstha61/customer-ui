import 'package:beamer/beamer.dart';
import 'package:customer/core/routing/homelocation.dart';

final routerDelegate = BeamerDelegate(
      initialPath: '/customer',
      locationBuilder: BeamerLocationBuilder(
        beamLocations: [
          HomeLocation(),
        ],
      ),
    );