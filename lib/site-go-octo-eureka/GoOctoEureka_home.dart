import 'package:flutter/material.dart';

class GooctoeurekaHome extends StatefulWidget {
  const GooctoeurekaHome({super.key});

  @override
  State<GooctoeurekaHome> createState() => _GooctoeurekaHomeState();
}

class _GooctoeurekaHomeState extends State<GooctoeurekaHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: isLandscape ? Axis.horizontal : Axis.vertical,
          child: Column(
            children: [
              isLandscape
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.3,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // image
                                Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/img/SearchRoutes.gif',
                                  ),
                                ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "When the app loads your position will be displayed along with lines drawn for any routes with stops within a mile of your position. You can return to this any time by pressing 'my location' button below the zoom controls. ",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "To get started, search for or select a route from the menu to see the real time location of buses or trains that run that route. Their direction of travel is indicated by the red arrow on the vehicle marker, and every stop on the route is marked. Tap on a marker to see the stop name.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "If there are any service alerts for that route a yellow caution icon will be shown. Tap it to view the alert messages.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.3,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                // image
                                Image(
                                  image: AssetImage(
                                    'assets/img/VehicleTripDetails.gif',
                                  ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "Tap on a vehicle to see it's exact trip on the map, the vehicles current status, and its ETA to the next stop. Stops along the trip will show scheduled arrival and departure times, and an estimate of the actual time the bus or train you selected will arrive.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.3,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // image
                                Image(
                                  image: AssetImage(
                                    'assets/img/RoutesNear.gif',
                                  ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "As you explore the map tap the 'routes' button above the zoom controls to show all of the routes in that area with stops located within a mile of the map center. ",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * 0.9,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // image
                                Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/img/SearchRoutes.gif',
                                  ),
                                ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "When the app loads your position will be displayed along with lines drawn for any routes with stops within a mile of your position. You can return to this any time by pressing 'my location' button below the zoom controls. ",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "To get started, search for or select a route from the menu to see the real time location of buses or trains that run that route. Their direction of travel is indicated by the red arrow on the vehicle marker, and every stop on the route is marked. Tap on a marker to see the stop name.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "If there are any service alerts for that route a yellow caution icon will be shown. Tap it to view the alert messages.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.9,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                // image
                                Image(
                                  image: AssetImage(
                                    'assets/img/VehicleTripDetails.gif',
                                  ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "Tap on a vehicle to see it's exact trip on the map, the vehicles current status, and its ETA to the next stop. Stops along the trip will show scheduled arrival and departure times, and an estimate of the actual time the bus or train you selected will arrive.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.9,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                // image
                                Image(
                                  image: AssetImage(
                                    'assets/img/RoutesNear.gif',
                                  ),
                                ),
                                // description
                                Padding(
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    "As you explore the map tap the 'routes' button above the zoom controls to show all of the routes in that area with stops located within a mile of the map center. ",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
