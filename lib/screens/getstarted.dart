import 'package:flutter/material.dart';
import 'package:happy_mama/screens/login_screen.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mavericks/loginpage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                //Hello again!
                const Text(
                  "Happy Mama",
                  style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'images/ppd.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "CONSULT SPECIALIST",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "SECURE AND PRIVATELY",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "The following provides a visual",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.319)),
                    ),
                    Text(
                      "overview of the logical operators",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.319)),
                    ),
                    Text(
                      "using Venn diagrams.",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.319)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const LoginScreen())));
                      },
                      minWidth: double.infinity,
                      color: const Color.fromRGBO(1, 152, 116, 1),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromRGBO(1, 152, 116, 1),
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Text(
                        'GET STARTED',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
