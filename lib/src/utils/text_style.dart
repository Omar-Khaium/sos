import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle overline(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.overline.copyWith(color: color, height: 1),
    );
  }
  static TextStyle caption(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.caption.copyWith(color: color, height: 1),
    );
  }

  static TextStyle body(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: color, height: 1),
    );
  }

  static TextStyle subtitle(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.subtitle1.copyWith(color: color, height: 1),
    );
  }

  static TextStyle title(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.headline6.copyWith(color: color, height: 1),
    );
  }

  static TextStyle display(BuildContext context, Color color) {
    return GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.headline5.copyWith(color: color, height: 1),
    );
  }
}
