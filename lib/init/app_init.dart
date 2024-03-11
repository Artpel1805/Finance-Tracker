import 'package:flutter/material.dart';
import 'package:saving_goal/init/my_app.dart';

class AppInit {
  static void run(String flavor) {
    WidgetsFlutterBinding.ensureInitialized();
    if (flavor == 'prod') {
      //Do your specific stuff
    }
    if (flavor == 'staging') {
      //Do your specific stuff
    }
    runApp(const MyApp(
      
    ));
  }
}
