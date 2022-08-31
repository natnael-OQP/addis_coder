import 'package:addis_coder/model/data.dart';
import 'package:addis_coder/screen/home/components/course_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/icons/menu.png"),
        title: const Text(
          "Python",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Image.asset("assets/icons/person.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 6),
                child: Image.asset("assets/icons/notification.png"),
              ),
            ],
          ),
        ],
      ),

      ///
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: demo_events.length,
          itemBuilder: (_, index) {
            return CourseCard(
              image: demo_events[index].image,
              title: demo_events[index].title,
            );
          },
        ),
      ),
    );
  }
}
