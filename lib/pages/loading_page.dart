import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void getGPSLocation() async {
  LocationPermission permission;
  permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.whileInUse) {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          //Get the current location
          getGPSLocation();
        },
        child: const Text('Geo Location'),
      )),
    );
  }
}
