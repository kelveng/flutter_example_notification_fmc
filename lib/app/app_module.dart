import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_example_notification_fmc/app/services/push_notification_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_notification_fmc/app/app_widget.dart';

import 'app_controller.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
    Bind((i) => PushNotificationService(FirebaseMessaging())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule())
  ];
}
