import 'package:addis_coder/screen/type/components/bullet_widget.dart';
import 'package:addis_coder/screen/type/components/output_code.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class TypesScreen extends StatelessWidget {
  const TypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: HexColor("#FFF"),
      appBar: AppBar(
        toolbarHeight: height * .09,
        backgroundColor: HexColor("#F4F4F4"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/menu.png"),
        ),
        title: const Text(
          "Types",
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
              ),
              Padding(
                padding: EdgeInsets.only(top: width * .03, left: width * .012),
                child: Image.asset("assets/icons/notification.png"),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
            padding: EdgeInsets.only(left: width * .04, bottom: width * .009),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Home/ Week 1/ Types",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                Container(
                  color: Colors.black26,
                  width: width * .13,
                  height: width * .004,
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(width * .03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Here are the basic types in Python that you should know about:",
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.55,
                  ),
                ),
                const BulletList(
                  [
                    "int: an integer.",
                    "float: a decimal number.",
                    "string: a sequence of text characters, including letters, numbers, spaces, and more.",
                    "list: a sequence of items, which can be any value (we will learn more about these later)",
                    "boolean: either True or False",
                    "dict: a mapping from keys to values (we will learn more about these later)"
                  ],
                ),
                const Text(
                  "Variables contain a value, so imagine a variable as a cup that contains something. However, we use different types of cups for different beverages; coffee cups are different from water cups, which are different from tea cups. Imagine types as giving a cup, or a variable, the unique type. By assigning an integer value to a variable, we give our cup a more specific purpose.",
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.55,
                  ),
                ),
                const Gap(15),
                const Text(
                  "Let's look at examples of how different types interact with each other in Python.",
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.55,
                  ),
                ),
                // output
                OutputCode(
                  height: height,
                  width: width,
                  index: 1,
                  input: "print(type(15))",
                  output: "<class 'int'>",
                ),
                OutputCode(
                  height: height,
                  width: width,
                  index: 2,
                  input: "print(type(15.5))",
                  output: "<class 'float'>",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
