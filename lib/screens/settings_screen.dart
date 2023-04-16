import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/doctor1.jpg"),
              ),
              title: Text(
                "Dr. Doctor Name",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              subtitle: Text("Profile"),
            ),
            const Divider(
              height: 50,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue.shade100, shape: BoxShape.circle),
                child: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              title: const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue.shade100, shape: BoxShape.circle),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.deepPurple,
                  size: 30,
                ),
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.indigo.shade100, shape: BoxShape.circle),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 30,
                ),
              ),
              title: const Text(
                "Privacy",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green.shade100, shape: BoxShape.circle),
                child: const Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 30,
                ),
              ),
              title: const Text(
                "General",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.orange.shade100, shape: BoxShape.circle),
                child: const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.deepPurple,
                  size: 30,
                ),
              ),
              title: const Text(
                "About Us",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const Divider(
              height: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade100, shape: BoxShape.circle),
                child: const Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
