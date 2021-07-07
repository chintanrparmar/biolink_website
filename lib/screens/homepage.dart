import 'dart:html' as html;

import 'package:biolink_website/data/list_db.dart';
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
              radius: 50.0,
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
                            color: Colors.deepOrange,
                            fontFamily: "Roboto",
                          ))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 10.0),
              child: Text(
                Constants.PROFILE_DESC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            /* SizedBox(
          height: 20.0,
          width: 150.0,
          child: Divider(
            color: Colors.grey.shade900,
          ),
        ), */

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
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32.0),
              child: Text(
                'Made with Flutter 💙 by Chintan',
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
