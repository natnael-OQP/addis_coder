import 'package:addis_coder/model/data.dart';
import 'package:addis_coder/screen/home/components/course_card.dart';
import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  const Day({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
          Row(
            children: [
              Image.network(
                  "https://imgs.search.brave.com/BekEvyZOnoYWl7L1LXkD8g5IgWi04Y9Pk6Tqm1UUvMs/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5u/TVZpNUtCX2IyU09N/cWhZNGM0Zlp3SGFF/OCZwaWQ9QXBp"),
              const Text("data")
            ],
          )
        ],
      ),
    );
  }
}
