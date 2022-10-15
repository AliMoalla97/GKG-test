
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
    final String ? title;
   MyHomePage({Key? key, this.title}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
              child:ClipPath(
                clipper: ClippingClass(),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height:  MediaQuery. of(context). size. height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM25Zn7Zi4vjZx3UY4n9XoA0-wVGKxUonnNbO04vNxvrfflY3U93OjzaSUWgkjrLCGF0I&usqp=CAU"))
                ),
              ),
            ),
          ),

  

        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height*.75);
    path.quadraticBezierTo(0,size.height*.5,size.width*.50 ,size.height*.6);
      // path.quadraticBezierTo(size.width * 2.5 - size.width*1.7 , size.height/2 + (size.height*.25), size.width , size.height/2);
    path.quadraticBezierTo(size.width+(size.width*.5) - (size.width/3),size.height/2.08 + (size.height*.24),size.width, size.height /2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

