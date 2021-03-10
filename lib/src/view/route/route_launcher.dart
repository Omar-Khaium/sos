import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/src/provider/provider_theme.dart';
import 'package:sos/src/view/route/route_auth.dart';

class LauncherRoute extends StatefulWidget {
  @override
  _LauncherRouteState createState() => _LauncherRouteState();
}

class _LauncherRouteState extends State<LauncherRoute> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500), () {
      redirect();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.backgroundColor,
      body: Center(
        child: Image.asset("images/logo.png", width: 144, height: 144, fit: BoxFit.contain),
      ),
    );
  }

  void redirect() async {
    Navigator.of(context).pushReplacementNamed(AuthRoute().route);
  }
}
