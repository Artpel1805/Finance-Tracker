import 'package:flutter/material.dart';
import 'package:flutter_artpel1805_template/navigation/routes.dart';

//TODO Change Name MyApp
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      //TODO Change Title
      title: 'ArtPel1805 Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
    );
  }
}

