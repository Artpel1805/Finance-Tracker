import 'package:flutter/material.dart';
import 'package:flutter_artpel1805_template/.init/my_app.dart';

class AppInit {
  static void run(String flavor) {
    WidgetsFlutterBinding.ensureInitialized();
    if (flavor == 'prod') {}
    if (flavor == 'staging') {}
    runApp(const MyApp());
  }
}
