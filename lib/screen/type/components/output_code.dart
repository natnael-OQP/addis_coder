import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
