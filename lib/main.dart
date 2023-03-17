import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parcial/screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:parcial/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      localizationsDelegates: const [
        Labels.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: Labels.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const HomeScreen()},
    );
  }
}
