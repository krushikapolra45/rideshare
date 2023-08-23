import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeSecondScreen extends StatefulWidget {
  const HomeSecondScreen({Key? key}) : super(key: key);

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {
  LatLng initialLocation = const LatLng(21.2439173, 72.8805682);
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(), "assets/Location_marker.png").then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  // final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(21.2439173, 72.8805682),
  //   zoom: 14.4746,
  // );
  //
  // static const CameraPosition _kLake = CameraPosition(
  //   bearing: 192.8334901395799,
  //   target: LatLng(21.2439173, 72.8805682),
  //   tilt: 59.440717697143555,
  //   zoom: 19.151926040649414,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialLocation,
          zoom: 14,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("marker1"),
            position: const LatLng(21.2439173, 72.8805682),
            draggable: true,
            onDragEnd: (value) {},
            icon: markerIcon,
          ),
        },
      ),
    );
    // GoogleMap(
    //   markers: <Marker>{
    //     // Marker(
    //     //   markerId: MarkerId("id"),
    //     //   position: LatLng(21.2439173, 72.8805682),
    //     //   onTap: () {},
    //     //   draggable: true,
    //     //   onDragEnd: (value) {
    //     //     // value is the new position
    //     //   },
    //     //   icon: markerIcon,
    //     // ),
    //     Marker(
    //       markerId: const MarkerId("id"),
    //       position: const LatLng(21.2439173, 72.8805682),
    //       // /},
    //     ),
    //   },
    //   mapType: MapType.normal,
    //   initialCameraPosition: _kGooglePlex,
    //   onMapCreated: (GoogleMapController controller) {
    //     _controller.complete(controller);
    //   },
    // ),
    // floatingActionButton: FloatingActionButton.extended(
    //     onPressed: _goToTheLake,
    //     label: const Text('To the lake!'),
    //     icon: const Icon(Icons.directions_boat),
    //   ),
    // );
    // }

    // Future<void> _goToTheLake() async {
    //   final GoogleMapController controller = await _controller.future;
    //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    //   handelTap(LatLng tappedPoint) {
    //     setState(() {});
    //   }
  }
}
