import 'package:flutter/material.dart';
import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client_fixed/pusher_client_fixed.dart';
import 'package:sayarra_car_application/data/data_provider/remote_url.dart';


class LaravelEcho {
  static LaravelEcho? _singleton;
  static late Echo _echo;
  final String token;

  LaravelEcho._({
    required this.token,
  }) {
    _echo = createLaravelEcho(token);
  }

  factory LaravelEcho.init({
    required String token,
  }) {
    debugPrint('laravel-auth-token $token');
    debugPrint('appId ${PusherConfig.appId}');
    debugPrint('key ${PusherConfig.key}');
    debugPrint('cluster ${PusherConfig.cluster}');
    debugPrint('secret ${PusherConfig.secret}');
    debugPrint('auth ${PusherConfig.hostAuthEndPoint}');
    if (_singleton == null || token != _singleton?.token) {
      _singleton = LaravelEcho._(token: token);
    }

    return _singleton!;
  }

  static Echo get instance => _echo;

 // static String get socketId => _echo.socketId() ?? "11111.11111111";

  static String get socketId => _echo.socketId() ?? "64330.2664811";
}

class PusherConfig {
  static const appId = "1338069";
  static const key = "e013174602072a186b1d";
  static const secret = "46de951521010c14b205";
  static const cluster = "mt1";
  static const hostEndPoint = RemoteUrl.baseUrl;
  static const hostAuthEndPoint = "${hostEndPoint}broadcasting/auth";
  static const port = 443;
}

PusherClient createPusherClient(String token) {
  PusherOptions options = PusherOptions(
    wsPort: PusherConfig.port,
    encrypted: true,
    host: PusherConfig.hostEndPoint,
    cluster: PusherConfig.cluster,
    auth: PusherAuth(
      PusherConfig.hostAuthEndPoint,
      headers: {
        'Authorization': "Bearer $token",
        'Content-Type': "application/json",
        'Accept': 'application/json'
      },
    ),
  );

  PusherClient pusherClient = PusherClient(
    PusherConfig.key,
    options,
    autoConnect: false,
    enableLogging: true,
  );

  pusherClient.onConnectionStateChange((state) {
    print(
        "previousState: ${state!.previousState}, currentState: ${state.currentState}");
  });

  pusherClient.onConnectionError((error) {
    print("error: ${error!.message}");
  });

  return pusherClient;
}

Echo createLaravelEcho(String token) {
  return Echo(
    client: createPusherClient(token),
    broadcaster: EchoBroadcasterType.Pusher,
  );
}
