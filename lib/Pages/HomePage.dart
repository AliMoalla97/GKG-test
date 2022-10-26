import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_first_project/Pages/LoginPage.dart';

int x = 0;

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList = ['images/startup.png', 'images/startup2.png', 'images/startup3.png'];

  List<String> Tipstitel = ['best tips for your diet', 'This is the Tip Title 2', 'This is the Tip Title 3'];
  List<String> Tips = [
    'Quisque sit amet sagittis erat. Duis pharetra ornare venenatis. Nulla maximus porta velit ut molestie. Proin quis convallis mauris. In facilisis justo at mi pharetra lobortis. s.',
    'Real sold my in call. Invitation on an advantages collecting. But event old above shy bed noisy. Had sister see wooded favour income has. Stuff rapid since do as hence. Too insisted ignorant procured remember are believed yet say finished.',
    'To sure calm much most long me mean. Able rent long in do we. Uncommonly no it announcing melancholy an in. Mirth learn it he given. Secure shy favour length all twenty denote. He felicity no an at packages answered opinions juvenile.'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Color(0xffffffff),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 250,
                    child: Opacity(
                      opacity: .5,
                      child: ClipPath(
                        clipper: ShadowClipper(),
                        child: Container(
                          color: Color(0xFF6cc57c),
                          height: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        onScrolled: (value) {
                          if (value == value!.toPrecision(1)) {
                            setState(() {
                              x++;

                              if (x >= 3) x = 0;
                            });
                          }
                        },
                        height: 530,
                        viewportFraction: 1,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        padEnds: true,
                      ),
                      items: imageList
                          .map((e) => ClipPath(
                                clipper: ClippingClass(),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(fit: BoxFit.none, image: AssetImage(imageList[x])),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 0),
            child: AnimatedSmoothIndicator(
              activeIndex: x,
              count: imageList.length,
              effect: JumpingDotEffect(
                activeDotColor: Color(0xFF6cc57c),
                dotColor: Colors.lightGreen.shade100,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
          ),
          Container(
            child: Text(Tipstitel[x],
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                  decoration: TextDecoration.none,
                )),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 2.0, left: 42, right: 42, top: 20),
            child: Text(Tips[x],
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontSize: 10,
                  decoration: TextDecoration.none,
                )),
          ),
          Container(
            // padding: const EdgeInsets.only(top:30 ,left: sizeWidth  ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  margin: EdgeInsets.all(30),
                  child: TextButton(
                    child: Text(
                      'Skip step',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
                    },
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.only(top: 20, right: 10),
                  margin: EdgeInsets.all(30),
                  child: SizedBox(
                    width: 115,
                    child: TextButton(
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6cc57c),
                      ),
                      onPressed: () {
                        increment();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  dynamic increment() {
    setState(() {
      x++;

      if (x >= 3) Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
    });
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var size2 = size.height + 340;
    path.lineTo(0.0, size2 * .6);

    var firstControlPoint = Offset(size.width / 4, size2 * .6 - 30);
    var firstEndPoint = Offset(size.width / 2.20, size2 * .6);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), (size2 * .6) + 30);
    var secondEndPoint = Offset(size.width, size2 / 2 - 60);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size2 - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ShadowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var size2 = size.height;
    path.lineTo(0.0, size2 * .6);

    var firstControlPoint = Offset(size.width / 4, size2 * .6 - 30);
    var firstEndPoint = Offset(size.width / 2.20, size2 * .6);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), (size2 * .6) + 30);
    var secondEndPoint = Offset(size.width, size2 / 2 - 60);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size2 - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
