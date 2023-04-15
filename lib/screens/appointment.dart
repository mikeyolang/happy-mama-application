import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  AppointmentsScreen({super.key});
  List imgs = [
    "doctor1.jpg"
        "doctor2.jpg"
        "doctor3.jpg"
        "doctor4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/ppd.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Dr. Doctor Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Therapist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade200,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 25,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade200,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  CupertinoIcons.chat_bubble_text_fill,
                                  color: Colors.white,
                                  size: 25,
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20, left: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("About Doctor",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nisi nunc aliquam mauris, vitae lacinia nunc nisl sit amet nunc. ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Reviews",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.star, color: Colors.yellow, size: 20),
                      const Text(
                        "4.9",
                        style: TextStyle(
                            // color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "(124)",
                        style: TextStyle(
                            color: Colors.blue.shade100,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      // The Space alignd the next widget to the right
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("images/${imgs[index]}"),
                                  ),
                                  title: const Text(
                                    "Dr. Doctor Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: const Text("1 day ago"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                      "Many thanks to the Doctor. He is a great professional Doctor. I am very satisfied with the Counselling. I recommend him to everyone."),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
