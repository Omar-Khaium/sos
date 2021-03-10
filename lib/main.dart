import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/src/provider/provider_theme.dart';
import 'package:sos/src/view/route/route_auth.dart';
import 'package:sos/src/view/route/route_launcher.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'SOS',
      theme: ThemeData(
        primarySwatch: themeProvider.accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherRoute(),
      routes: {
        AuthRoute().route: (context) => AuthRoute(),
      },
    );
  }
}
