
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends GetxController {

  BitmapDescriptor? userLocation;


// late GoogleMapController mapController;
//
// LatLng initialPosition =
//     const LatLng(37.7749, -122.4194); // Example coordinates
//
// Future<LatLng> _getUserLocation() async {
//   Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.high);
//   return LatLng(position.latitude, position.longitude);
// }
//
// @override
// void initState() {
//   super.initState();
//   _getUserLocation().then((userLocation) {
//     setState(() {
//       initialPosition = userLocation;
//     });
//   });
// }

// void _onMapCreated(GoogleMapController controller) {
//   mapController = controller;
// }
//
// Set<Marker> _createParkingMarkers() {
//   // Create a list of parking locations
//   List<LatLng> parkingLocations = [
//     LatLng(37.7749, -122.4194), // Replace with actual parking locations
//     LatLng(37.7799, -122.4294),
//     LatLng(37.7699, -122.4094),
//   ];
//
//   // Map locations to markers
//   return parkingLocations.map((location) {
//     return Marker(
//       markerId: MarkerId(location.toString()),
//       position: location,
//       infoWindow: InfoWindow(
//         title: 'Parking Spot',
//         snippet: 'Available spot here',
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(
//           BitmapDescriptor.hueBlue), // Custom marker color
//     );
//   }).toSet();
// }

}