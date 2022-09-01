import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DearGuestScreen extends StatelessWidget {
  const DearGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/Welcome guest.png",
            ),
          ),
        ),
        padding: EdgeInsets.only(bottom: height * .02),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(150),
                  ),
                ),
                child: Image.asset("assets/icons/person.png"),
              ),
              const Gap(50),
              const Text(
                "Welcome,",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Dear Guest !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
