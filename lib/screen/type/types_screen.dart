import 'package:addis_coder/screen/type/components/bullet_widget.dart';
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
        backgroundColor: HexColor("#F4F4F4"),
        elevation: 0,
        leading: Image.asset("assets/icons/menu.png"),
        title: const Text(
          "Types",
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
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

class OutputCode extends StatelessWidget {
  const OutputCode({
    Key? key,
    required this.height,
    required this.width,
    required this.index,
    required this.input,
    required this.output,
  }) : super(key: key);

  final double height;
  final double width;
  final int index;
  final String input, output;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * .03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$index.",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: width * .03),
                  height: 40,
                  decoration: BoxDecoration(
                    color: HexColor("#f2f2f2"),
                    border: const Border(
                      top: BorderSide(width: 1.0, color: Colors.black26),
                      left: BorderSide(width: 1.0, color: Colors.black26),
                      right: BorderSide(width: 1.0, color: Colors.black26),
                      bottom: BorderSide(width: 1.0, color: Colors.black26),
                    ),
                  ),
                  child: Text(
                    input,
                    style: const TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width / 3.9,
              vertical: height * .005,
            ),
            child: const Icon(
              Icons.arrow_downward,
              color: Colors.red,
              size: 25,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: width * .03),
            margin: EdgeInsets.only(left: width * .03),
            height: 40,
            width: width / 1.5,
            decoration: BoxDecoration(
              color: HexColor("#000"),
              border: const Border(
                top: BorderSide(width: 1.0, color: Colors.black26),
                left: BorderSide(width: 1.0, color: Colors.black26),
                right: BorderSide(width: 1.0, color: Colors.black26),
                bottom: BorderSide(width: 1.0, color: Colors.black26),
              ),
            ),
            child: Text(
              output,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
