import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_first_project/Pages/MainPage.dart';
import 'package:ui_first_project/Pages/SignupPage.dart';

List<String> imageList = [
  'images/AppPage.png',
  'images/startup2.png',
  'images/startup3.png'
];

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FittedBox(
            child: Image.asset(
              'images/Login.png',
              width: MediaQuery.of(context).size.width,
              //height:  MediaQuery. of(context). size.height,
              fit: BoxFit.none,
            ),
          )
        ],
      ),
      Flexible(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                buttonMargin: const EdgeInsets.all(15),
                backgroundColor: Color(0xFF6CC57C),
                //physics: const BouncingScrollPhysics(),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Breakfast",
                  ),
                  Tab(
                    text: "Foods",
                  ),
                  Tab(
                    text: "Dinner",
                  ),
                ],
              ),
              SizedBox(
                height: 350,
                child: TabBarView(
                  //controller: _tabController,
                  children: <Widget>[
                    ListView.builder(
                      itemCount: 3,
                      primary: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            //  BlocProvider.of<AppCubits>(context)
                            // .detailPage(info[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15, top: 10),
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/AppPage.png'),
                                    fit: BoxFit.cover)),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      primary: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            //  BlocProvider.of<AppCubits>(context)
                            // .detailPage(info[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15, top: 10),
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/AppPage2.png'),
                                    fit: BoxFit.cover)),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      primary: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            //  BlocProvider.of<AppCubits>(context)
                            // .detailPage(info[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15, top: 10),
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/AppPage3.png'),
                                    fit: BoxFit.cover)),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
