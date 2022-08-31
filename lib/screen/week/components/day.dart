import 'package:addis_coder/model/data.dart';
import 'package:addis_coder/screen/home/components/course_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Day extends StatelessWidget {
  const Day({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(width * .03),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  childAspectRatio: 1,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 10,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .027),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(width * .03),
                  child: Image.asset(
                    "assets/images/Illustrative Quizes and Assignment.png",
                    height: 90,
                    // width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Gap(10),
                const Expanded(
                  child: Text(
                    "Illustrative Quizes and Assignment",
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
