import 'package:flutter/material.dart';

import '../widgets/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _scheduleWidegts = [
    // Upcoming Widget
    const UpcommingSchedule(),
    // Completed Widget
    const Center(
      child: Text("Hello"),
    ),
    // Cancelled Widget
    const Center(
      child: Text("Cancelled"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedules",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color:
                            _buttonIndex == 0 ? Colors.blue : Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "Upcoming",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            _buttonIndex == 1 ? Colors.blue : Colors.grey[100],
                      ),
                      child: const Text(
                        "Completed",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            _buttonIndex == 2 ? Colors.blue : Colors.grey[100],
                      ),
                      child: const Text(
                        "Cancelled",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _scheduleWidegts[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
