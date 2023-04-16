import 'package:flutter/material.dart';
import 'package:happy_mama/screens/login_screen.dart';
import 'package:happy_mama/screens/signup.dart';
import 'package:happy_mama/widgets/nav_roots.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.topRight,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavBarRoots()));
                  // Navigator.push(context, MaterialPageRoute(builder: cont))
                },
                child: const Text(
                  "SKIP",
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Happy",
              style: TextStyle(
                  fontFamily: "Times New Roman",
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const Text(
              "Mama",
              style: TextStyle(
                  fontFamily: "Times New Roman",
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("images/download.jpeg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                      // Navigator.push(context, MaterialPageRoute(builder: (builder)))
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (builder)))
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
