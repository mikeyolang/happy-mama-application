import 'package:flutter/material.dart';

class UpcommingSchedule extends StatelessWidget {
  const UpcommingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "About Doctor",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.black, blurRadius: 4, spreadRadius: 2)
              ]),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              const ListTile(
                title: Text(
                  "Dr. John Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Therapist"),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor.jpg"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "15/12/2023",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.access_time,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "11:00 AM",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Confirmed",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
