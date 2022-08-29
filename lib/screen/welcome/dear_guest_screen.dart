import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class DearGuestScreen extends StatelessWidget {
  const DearGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F94939"),
      body: Container(
        padding: const EdgeInsets.only(bottom: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: const EdgeInsets.only(bottom: 40),
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
