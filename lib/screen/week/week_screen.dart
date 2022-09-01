import 'package:addis_coder/screen/week/components/day.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WeekScreen extends StatelessWidget {
  const WeekScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 7,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(
              "assets/images/bg2.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/menu.png"),
            ),
            title: const Text(
              "Week 1",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(width * .02),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Image.asset("assets/icons/person.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: width * .03,
                      left: width * .012,
                    ),
                    child: Image.asset("assets/icons/notification.png"),
                  ),
                ],
              ),
            ], // action
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: HexColor("#EF4636"),
              labelColor: Colors.black,
              tabs: const [
                Tab(text: "Day 1"),
                Tab(text: "Day 2"),
                Tab(text: "Day 3"),
                Tab(text: "Day 4"),
                Tab(text: "Day 5"),
                Tab(text: "Day 6"),
                Tab(text: "Day 7"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Day(),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}
