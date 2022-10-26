import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

bool isfav = false;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4F5FA),
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(children: [
            Container(
                child: FittedBox(
              child: Image.asset(
                'images/Main2.png',
                width: MediaQuery.of(context).size.width,
                //height:  MediaQuery. of(context). size.height,
                fit: BoxFit.cover,
              ),
            )),
            Row(children: [
              Container(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: SizedBox(
                    width: 53,
                    height: 52,
                    //
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      textColor: const Color(0xFF707070),
                      child: Image.asset(
                        'images/Left.png',
                      ),
                      padding: const EdgeInsets.only(
                        top: 6,
                      ),
                      shape: const CircleBorder(),
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 120, left: 250),
                child: SizedBox(
                    width: 41,
                    height: 40,
                    //
                    child: MaterialButton(
                      onPressed: () {
                        isfav = !isfav;
                        setState(() {});
                      },
                      color: Colors.white,
                      textColor: const Color(0xFF707070),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      padding: const EdgeInsets.all(4),
                      shape: const CircleBorder(),
                    )),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FittedBox(
                  child: Image.asset(
                    'images/Main.png',
                    width: MediaQuery.of(context).size.width,
                    //height:  MediaQuery. of(context). size.height,
                    fit: BoxFit.none,
                  ),
                )
              ],
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              "Yogurt with fruits",
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF23233C),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: const ElevatedCardExample1(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: const ElevatedCardExample2(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedCardExample3(),
          ),
        ])));
  }
}

class ElevatedCardExample1 extends StatelessWidget {
  const ElevatedCardExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 355,
          height: 120,
          child: Center(
              child: Column(children: [
            Container(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Nutritional information',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF23233C),
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      '243',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFEE6A6E),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 2),
                    Text(
                      '2.8g',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF23233C),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 2),
                    Text(
                      '45,9g',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF23233C),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 2),
                    Text(
                      '9.8g',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF23233C),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: const [
                Spacer(
                  flex: 1,
                ),
                Spacer(),
                Text(
                  'calorias',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(),
                Spacer(flex: 1),
                Text(
                  'grasas',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(flex: 1),
                Spacer(),
                Spacer(),
                Text(
                  'carbohid',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(flex: 1),
                Spacer(),
                Text(
                  'proteinas',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(),
                Spacer(
                  flex: 1,
                ),
              ],
            ))
          ])),
        ),
      ),
    );
  }
}

class ElevatedCardExample2 extends StatelessWidget {
  const ElevatedCardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 355,
          height: 125,
          child: Center(
              child: Column(children: [
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Ingredients',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF23233C),
                      fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/Bu.png"),
                            fit: BoxFit.none),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/Y.png"),
                            fit: BoxFit.none),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/Bu.png"),
                            fit: BoxFit.none),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/Ch.png"),
                            fit: BoxFit.none),
                      ),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: const [
                Spacer(
                  flex: 4,
                ),
                Text(
                  'Kiwi',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Yogurt',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  'Blueberry',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Cherry',
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Spacer(),
                Spacer(
                  flex: 2,
                ),
              ],
            ))
          ])),
        ),
      ),
    );
  }
}

class ElevatedCardExample3 extends StatelessWidget {
  const ElevatedCardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 355,
          height: 120,
          child: Center(
              child: Column(children: [
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'preparation',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF23233C),
                      fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "Quisque sit amet sagittis erat. Duis pharetra ornare venenatis. Nulla maximus porta velit ut molestie. Proin quis convallis mauris. In facilisis justo at mi pharetra lobortis. s."))
          ])),
        ),
      ),
    );
  }
}
