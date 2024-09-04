import 'package:flutter/material.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Track Screen'),
      ),
    );;
  }
}
