import 'package:flutter/material.dart';
import 'package:flutter_artpel1805_template/init/my_app.dart';

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
