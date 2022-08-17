import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:location/location.dart' as lc;
import 'package:uuid/uuid.dart';
import 'address_result.dart';

class MapScreen extends StatefulWidget {
  final Widget pinWidget;
  final String apiKey;
  final LatLng initialLocation;
  final String appBarTitle;
  final String searchHint;
  final String addressTitle;
  final String confirmButtonText;
  final String language;
  final String country;
  final String addressPlaceHolder;
  final Color confirmButtonColor;
  final Color pinColor;
  final Color confirmButtonTextColor;
  const MapScreen(
      {Key? key,
      required this.apiKey,
      required this.appBarTitle,
      required this.searchHint,
      required this.addressTitle,
      required this.confirmButtonText,
      required this.language,
      this.country = "",
      required this.confirmButtonColor,
      required this.pinColor,
      required this.confirmButtonTextColor,
      required this.addressPlaceHolder,
      required this.pinWidget,
      required this.initialLocation})
      : super(key: key);
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> mapsCompleter = Completer();
  bool loading = false;
  String _currentAddress = "";
  LatLng? _latLng;
  String _shortName = "";
  CameraPosition? _kGooglePlex;

  CameraPosition cameraPosition(LatLng target) => CameraPosition(bearing: 192.8334901395799, target: target, tilt: 59.440717697143555, zoom: 16.0);

  void getAddress(LatLng? location) async {
    try {
      final endpoint = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=${location?.latitude},${location?.longitude}'
          '&region=eg&country=egypt&key=${widget.apiKey}&language=${widget.language}';

      final response = jsonDecode((await http.get(
        Uri.parse(endpoint),
      ))
          .body);
      setState(() {
        _currentAddress = response['results'][0]['formatted_address'];
        _shortName = response['results'][0]['address_components'][1]['long_name'];
      });
    } catch (e) {
      debugPrint('================= $e  ');
    }

    if (mounted) {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _latLng = widget.initialLocation;
    _kGooglePlex = CameraPosition(
      target: widget.initialLocation,
      zoom: 16.0,
    );
    // moveToCurrent();
  }

  Future<void> moveToCurrent() async {
    final lc.Location location = lc.Location();

    bool serviceEnabled;
    lc.PermissionStatus permissionGranted;
    lc.LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == lc.PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != lc.PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    final GoogleMapController controller = await mapsCompleter.future;
    log(locationData.latitude.toString());
    if (locationData.latitude != null) {
      CameraPosition cPosition = CameraPosition(
        zoom: 16.0,
        target: LatLng(locationData.latitude!, locationData.longitude!),
      );

      controller.animateCamera(CameraUpdate.newCameraPosition(cPosition)).then((value) {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              minMaxZoomPreference: const MinMaxZoomPreference(0, 16),
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex!,
              myLocationButtonEnabled: false,
              rotateGesturesEnabled: true,
              scrollGesturesEnabled: true,
              tiltGesturesEnabled: true,
              zoomGesturesEnabled: true,
              onCameraMoveStarted: () {
                setState(() {
                  loading = true;
                });
              },
              onCameraMove: (p) {
                _latLng = LatLng(p.target.latitude, p.target.longitude);
              },
              onCameraIdle: () async {
                getAddress(_latLng);
              },
              onMapCreated: (GoogleMapController controller) async {
                if (!mapsCompleter.isCompleted) {
                  mapsCompleter.complete(controller);
                  Future.delayed(const Duration(seconds: 2), () {
                    moveToCurrent();
                  });
                }
              },
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 4,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        // Text(
                        //   widget.addressTitle,
                        //   style: const TextStyle(color: Colors.grey),
                        // ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          _shortName,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          _currentAddress == "" ? widget.addressPlaceHolder : _currentAddress,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        if (!loading)
                          GestureDetector(
                            onTap: () {
                              AddressResult addressResult = AddressResult(latlng: _latLng!, address: _currentAddress);
                              Navigator.pop(context, addressResult);
                            },
                            child: SizedBox(
                              height: 50,
                              child: Card(
                                color: KColors.of(context).accentColor,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                                child: Center(
                                  child: Text(
                                    widget.confirmButtonText,
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 10,
              right: 10,
              child: GestureDetector(
                onTap: () async {
                  // searchPlace();
                  var result = await Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => SearchPage(
                        language: widget.language,
                        apiKey: widget.apiKey,
                        searchPlaceHolder: widget.searchHint,
                      ),
                    ),
                  );
                  if (result != null) {
                    final location = await getPlace(result);
                    CameraPosition cPosition = CameraPosition(
                      zoom: 16.0,
                      target: LatLng(double.parse(location['lat'].toString()), double.parse(location['lng'].toString())),
                    );
                    final GoogleMapController controller = await mapsCompleter.future;
                    controller.animateCamera(CameraUpdate.newCameraPosition(cPosition)).then((value) {});
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () async {
                          final lc.Location location = lc.Location();

                          bool serviceEnabled;
                          lc.PermissionStatus permissionGranted;
                          lc.LocationData locationData;

                          serviceEnabled = await location.serviceEnabled();
                          if (!serviceEnabled) {
                            serviceEnabled = await location.requestService();
                            if (!serviceEnabled) {
                              return;
                            }
                          }

                          permissionGranted = await location.hasPermission();
                          if (permissionGranted == lc.PermissionStatus.denied) {
                            permissionGranted = await location.requestPermission();
                            if (permissionGranted != lc.PermissionStatus.granted) {
                              return;
                            }
                          }

                          locationData = await location.getLocation();
                          final GoogleMapController controller = await mapsCompleter.future;
                          log(locationData.latitude.toString());
                          if (locationData.latitude != null) {
                            CameraPosition cPosition = CameraPosition(
                              zoom: 16.0,
                              target: LatLng(locationData.latitude!, locationData.longitude!),
                            );

                            controller.animateCamera(CameraUpdate.newCameraPosition(cPosition)).then((value) {});
                          } else {
                            CameraPosition cPosition = CameraPosition(
                              zoom: 16.0,
                              target: widget.initialLocation,
                            );

                            controller.animateCamera(CameraUpdate.newCameraPosition(cPosition)).then((value) {});
                          }
                        },
                        icon: const Icon(
                          Icons.my_location,
                          color: Color(0xffFFCA27),
                        ),
                        iconSize: 20,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 90,
                      height: 80,
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 22,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.searchHint,
                                style: const TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(child: widget.pinWidget)
          ],
        ),
      ),
    );
  }

  getPlace(placeId) async {
    String baseURL = 'https://maps.googleapis.com/maps/api/place/details/json';
    String request = '$baseURL?place_id=$placeId&key=${widget.apiKey}&language=${widget.language}&region=eg';
    var response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      var res = json.decode(response.body);
      return res['result']['geometry']['location'];
    } else {
      throw Exception('Failed to load predictions');
    }
  }
}

class SearchPage extends StatefulWidget {
  final String language;
  final String apiKey;
  final String searchPlaceHolder;
  const SearchPage({Key? key, required this.language, required this.apiKey, required this.searchPlaceHolder}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final mapsCompleter = TextEditingController();
  var uuid = const Uuid();
  String? _sessionToken;
  List<dynamic> _placeList = [];

  @override
  void initState() {
    super.initState();
    mapsCompleter.addListener(() {
      _onChanged();
    });
  }

  void _onChanged() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v4();
      });
    }
    getSuggestion(mapsCompleter.text);
  }

  void getSuggestion(String input) async {
    try {
      String baseURL = 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
      String request = '$baseURL?input=$input&key=${widget.apiKey}&sessiontoken=$_sessionToken&language=ar&region=eg';
      var response = await http.get(Uri.parse(request));
      if (response.statusCode == 200) {
        setState(() {
          _placeList = json.decode(response.body)['predictions'];
        });
      } else {
        throw Exception('Failed to load predictions');
      }
    } catch (e) {
      debugPrint('================= $e  ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 18,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: mapsCompleter,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: widget.searchPlaceHolder,
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.all(8)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _placeList.length,
            itemBuilder: (ctx, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.pop(context, _placeList[i]["place_id"]);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.location_pin,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: Text(
                                _placeList[i]["description"],
                                overflow: TextOverflow.ellipsis,
                              )),
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

Future<AddressResult> showGoogleMapLocationPicker(
    {required BuildContext context,
    required Widget pinWidget,
    required String apiKey,
    required String appBarTitle,
    required String searchHint,
    required String addressTitle,
    required LatLng initialLocation,
    required String confirmButtonText,
    required String language,
    required String country,
    required String addressPlaceHolder,
    required Color confirmButtonColor,
    required Color pinColor,
    required Color confirmButtonTextColor}) async {
  final pickedLocation = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MapScreen(
        apiKey: apiKey,
        pinWidget: pinWidget,
        appBarTitle: appBarTitle,
        searchHint: searchHint,
        addressTitle: addressTitle,
        confirmButtonText: confirmButtonText,
        language: language,
        confirmButtonColor: confirmButtonColor,
        pinColor: pinColor,
        confirmButtonTextColor: confirmButtonTextColor,
        addressPlaceHolder: addressPlaceHolder,
        initialLocation: initialLocation,
      ),
    ),
  );
  return pickedLocation;
}
