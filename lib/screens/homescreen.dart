import 'package:flutter/material.dart';
import 'package:happy_mama/screens/appointment.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List symptoms = [
    "Mood swings",
    "Fatigue",
    "irratability",
    "depression",
    "insomnia"
  ];
  List imgs = ["doctor1.jpg", "doctor2.jpg", "doctor3.jpg", "doctor4.jpg"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hi Crystal",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/mom.jpg"),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Clinic Visit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Make an appointment",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                )),
            InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.home_filled,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Home Visit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Call The Doctor Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "What are your Symptoms",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptoms.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black, blurRadius: 1, spreadRadius: 1)
                      ]),
                  child: Center(
                    child: Text(
                      symptoms[index],
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                );
              })),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 5, left: 10, top: 5),
          child: Text(
            "Popular Doctors",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  AppointmentsScreen()));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                    ),
                    const Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        )
      ]),
    );
  }
}
