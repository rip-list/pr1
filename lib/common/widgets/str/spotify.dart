import 'package:flutter/material.dart';
import 'package:pr1/common/routes/spotify_service.dart';



class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'play',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: IconButton(onPressed: authenticateWithSpotify, icon: Icon(Icons.airline_seat_legroom_reduced))
        ),
      ),
    );
  }
}