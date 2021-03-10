import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/src/provider/provider_theme.dart';

class AuthRoute extends StatelessWidget {
  final String route = "/auth";
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.backgroundColor,
    );
  }
}
