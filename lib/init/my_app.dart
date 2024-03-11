import 'package:flutter/material.dart';
import 'package:saving_goal/app/navigation/routes.dart';
import 'package:saving_goal/l10n/l10n.dart';

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
      title: 'Saving Goal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
    );
  }
}
