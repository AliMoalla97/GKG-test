import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FittedBox(
            child: Image.asset(
              'images/Welcome.png',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.none,
            ),
          )
        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 1),
        child: Image.asset(
          'images/Welcom3.png',
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.scaleDown,
        ),
      ),
      Container(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: "Let's do your diet ",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              TextSpan(
                  text: 'katy',
                  style: TextStyle(
                    color: Color(0xFF6CC57C),
                  ))
            ],
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,

            border: OutlineInputBorder(),
            //s   labelText: 'User Name',

            hintText: ' What is your current weight?',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 25, right: 30, left: 30),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,

            border: OutlineInputBorder(),
            //s   labelText: 'User Name',

            hintText: ' What is your current height?',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
        child: SizedBox(
            child: IconButton(
          icon: Image.asset('images/Welcom2.png'),
          iconSize: 170,
          onPressed: () {},
        )),
      ),
    ])));
  }
}
