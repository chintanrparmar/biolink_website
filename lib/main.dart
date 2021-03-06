import 'dart:html' as html;

import 'package:biolink_website/screens/homepage.dart';
import 'package:biolink_website/utils/color_palette.dart';
import 'package:biolink_website/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${Constants.NAME} Bio',
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                ColorPalette.GRADIENT_COLOR_START,
                ColorPalette.GRADIENT_COLOR_END
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(child: HomePage()),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              html.window.open(Constants.RESUME_URL, Constants.RESUME_TITLE);
            },
            child: Icon(Icons.picture_as_pdf_rounded),
            tooltip: 'Download Resume',
            backgroundColor: ColorPalette.GRADIENT_COLOR_END,
          ),
        ),
      ),
    );
  }
}
