import 'dart:html' as html;

import 'package:biolink_website/data/list_db.dart';
import 'package:biolink_website/utils/color_palette.dart';
import 'package:biolink_website/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(Constants.PROFILE_PIC_URL),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 32.0, 0.0, 0.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: "Hi, I'm "),
                      new TextSpan(
                          text: Constants.NAME,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: "Roboto",
                          ))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
              child: Text(
                Constants.PROFILE_DESC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorPalette.PRIMARY_TEXT_COLOR,
                  fontSize: 18.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                children: ListDB.socialButtons
                    .map((data) => IconButton(
                          icon: Image.network(
                            data.iconUrl,
                            height: 32,
                          ),
                          onPressed: () {
                            html.window.open(data.hitUrl, data.title);
                          },
                        ))
                    .toList()),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              child: TextButton(
                onPressed: () {
                  html.window.open('https://chintanparmar.com/', 'Chintan');
                },
                child: Text(
                  'Made with Flutter 💙 by Chintan',
                  style: TextStyle(
                      color: ColorPalette.PRIMARY_TEXT_COLOR, fontSize: 12),
                ),
              ),
            ))
      ],
    );
  }
}
