import 'package:addis_coder/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _login = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: lightGray,
      body: SingleChildScrollView(
        child: Container(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 320,
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(23),
                        bottomRight: Radius.circular(23),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Image.asset(
                          "assets/images/black logo.png",
                          width: double.infinity,
                          height: 170,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _login = true;
                                  print(_login);
                                });
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _login = false;
                                  print(_login);
                                });
                              },
                              child: const Text(
                                'Guest',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: height * .04, horizontal: width * .07),
                  decoration: const BoxDecoration(),
                  child: _login
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: height * .02),
                              child: TextField(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Username, Mobile Number',
                                  prefix: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: height * .02),
                              child: TextField(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  prefix: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: height * .029,
                                left: width * .009,
                              ),
                              child: Text(
                                "Forgot password ?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            // login button
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: primary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * .02),
                              child: const Text(
                                "Or",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // login with google
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/google.png",
                                        width: 20,
                                        height: 35,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        "Log in With Google",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Padding(
                          padding: EdgeInsets.only(top: height * .08),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                child: Text(
                                  "Offline ?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  vertical: height * .02,
                                ),
                                child: Text(
                                  "it's allright!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              // login button
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: primary,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Continue as a guest",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
