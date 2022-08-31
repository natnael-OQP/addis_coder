import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;

  const BulletList(this.strings);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(
        width * .035,
        width * .033,
        width * .035,
        width * .035,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '\u2022',
                style: TextStyle(
                  fontSize: 6,
                  height: 1.55,
                ),
              ),
              SizedBox(
                width: width * .02,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 12,
                      height: 1.55,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
