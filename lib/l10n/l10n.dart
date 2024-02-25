import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L10n {
  static const all = [
    Locale('en'),
    Locale('fr', 'FR'),
  ];

  static const delegate = [
    AppL10n.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}

Locale? localeListCallback(
    List<Locale>? locales, Iterable<Locale> supportedLocales) {
  for (Locale locale in locales ?? []) {
    if (supportedLocales.contains(locale)) return locale;
    return const Locale('en');
  }
  return const Locale('en');
}
