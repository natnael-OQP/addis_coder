import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/icons/menu.png"),
        title: const Text(
          "Python",
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
      body: Column(
        children: const [
          Center(
            child: Text(
              "Python",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
