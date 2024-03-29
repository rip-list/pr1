// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/routes/spotify_service.dart';
import '../../constants/app_colors.dart';


class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'play',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparentblue, 
          title: const Text('Spotify'),
        ),
        body: const Center(
          child: IconButton(onPressed: authenticateWithSpotify, icon: Icon(Icons.airline_seat_legroom_reduced))
        ),
        backgroundColor: AppColors.secondary,
      ),
    );
  }
}