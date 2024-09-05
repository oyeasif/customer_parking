
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {


  XFile? vehicleImage;
  final imagePicker = ImagePicker();

  Rx<TextEditingController> vehicleNameController = TextEditingController().obs;
  Rx<TextEditingController> vehicleTypeController = TextEditingController().obs;
  Rx<TextEditingController> vehicleNumberController = TextEditingController().obs;

  Future vehicleImageBottomSheet(BuildContext context) async {

    Future getLogoCameraImage() async {
      final pickedFile = await imagePicker.pickImage(source: ImageSource.camera, requestFullMetadata: true,);

      if (pickedFile != null) {
        vehicleImage = pickedFile;
        update();
      }

      else {
        print('No Image Selected');
      }
      update();
    }

    Future getLogoGalleryImage() async {
      final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery, requestFullMetadata: true);
      if (pickedFile != null) {
        vehicleImage = pickedFile;
        update();
      }

      else {
        print('No Image Selected');
      }
      update();
    }

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.add_a_photo),
              title: const Text('Camera'),
              onTap: () {
                getLogoCameraImage();
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Gallery'),
              onTap: () {
                getLogoGalleryImage();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }


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