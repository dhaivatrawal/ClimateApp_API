import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/climate.jpg'),
              fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.near_me,
                          size: 50.0,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.location_city,
                          size: 50.0,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        '32 degree',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        '*',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Text(
                    "It's Icecream time in bengaluru",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.right,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
