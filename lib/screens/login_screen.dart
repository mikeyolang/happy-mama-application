import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("/.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              obscureText: passToggle ? true : false,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text("Enter Password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: passToggle
                        ? const Icon(CupertinoIcons.eye_slash_fill)
                        : const Icon(CupertinoIcons.eye_fill),
                  )),
            ),
          )
        ]),
      )),
    );
  }
}
