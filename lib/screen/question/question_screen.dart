import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: HexColor("#FFF"),
      appBar: AppBar(
        backgroundColor: HexColor("#F4F4F4"),
        elevation: 0,
        leading: Image.asset("assets/icons/menu.png"),
        title: const Text(
          "Question Bank",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(width * .017),
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
                padding: EdgeInsets.only(top: width * .03, left: width * .012),
                child: Image.asset("assets/icons/notification.png"),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_mark_outlined,
              color: HexColor("#F18B33"),
              size: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * .02),
              child: const Text(
                "Time to challenge yourself",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Gap(height * .02),
            InkWell(
              onTap: () {},
              child: Container(
                width: width / 1.4,
                height: height * .07,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: height * .015,
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .04),
                      child: const Text(
                        "BEGINNER",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: width / 1.4,
                height: height * .07,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: height * .015,
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .04),
                      child: const Text(
                        "INTERMEDIATE",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: width / 1.4,
                height: height * .07,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: height * .015,
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .04),
                      child: const Text(
                        "ADVANCED",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
