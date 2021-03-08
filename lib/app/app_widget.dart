import 'package:flutter/material.dart';
import 'package:flutter_example_notification_fmc/app/services/push_notification_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PushNotificationService pushNotificationService = Modular.get();
    pushNotificationService.initialise();
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
    ).modular();
  }
}
