import 'package:flutter/material.dart';
import 'package:flutter_artpel1805_template/l10n/l10n.dart';
import 'package:flutter_artpel1805_template/app/navigation/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
    
      routerConfig: router,
      localizationsDelegates: L10n.delegate,
      supportedLocales: L10n.all,
      localeListResolutionCallback: localeListCallback,
      //TODO Change Title
      title: 'ArtPel1805 Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
    );
  }
}
