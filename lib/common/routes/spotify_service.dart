import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

Future<String?> authenticateWithSpotify() async {
  const redirectUri = 'http://example.com/callback'; // Замените на свой URI перенаправления
  const clientId = '4a52d34d78734840953573040f8bfa13'; // Замените на свой Client ID из Spotify Developer Dashboard

  final authResult = await FlutterWebAuth.authenticate(
    url: 'https://accounts.spotify.com/authorize?client_id=$clientId&response_type=code&redirect_uri=$redirectUri&scope=user-read-playback-state,user-modify-playback-state',
    callbackUrlScheme: redirectUri,
  );

  return authResult[1];
}


Future<void> playTrack(String trackUri) async {
  await SpotifySdk.play(spotifyUri: trackUri);
}

Future<void> pausePlayback() async {
  await SpotifySdk.pause();
}

