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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(
            "assets/images/bg.png",
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
            "Python",
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
                    margin: EdgeInsets.all(width * .017),
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
                  padding:
                      EdgeInsets.only(top: width * .03, left: width * .012),
                  child: Image.asset("assets/icons/notification.png"),
                ),
              ],
            ),
          ],
        ),

        ///
        body: Padding(
          padding: EdgeInsets.all(width * .03),
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
      ),
    );
  }
}
