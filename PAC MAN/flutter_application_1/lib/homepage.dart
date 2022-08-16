import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

//import 'package:iust/pages/base_page.dart';
//import 'package:iust/widgets/text_and_link.dart';
//import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  static int numberInRow = 11;
  int numberOfSquares = numberInRow * 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: numberOfSquares, // 4:00 
                    gridDelegate: SilverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: numberInRow), // SilverGridDelegateWithFixedCrossAxisCount
                    itemBuilder: (BuildContext context, int index){ // 4:50
                      return Padding(
                        padding: const EdgeInsets.all(1.0), //5:16
                        child: Container(
                          color: Colors.grey,
                        ),
                      )
                    }),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children[
                    Text("Score: "), //6:05
                    Text("P L A Y"),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
