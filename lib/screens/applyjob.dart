import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'apply_form.dart';
import 'homepage.dart';

class ApplyJob extends StatefulWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text("Tasker",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800)),
        backgroundColor: const Color(0xFF71BEBE),
        actions: [
          PopupMenuButton(
            icon: Image.asset(
              'assets/images/profile.webp',
            ),
            iconSize: 40,
            onSelected: (value) {
              if (value == "0") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Homepage'),
                value: "0",
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 650,
              width: 340,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: CupertinoButton(
                            child: Text("Report"),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.0))),
                                          backgroundColor: Colors.white,
                                          title: const Text(
                                            'Why are you reporting this Job?',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          actions: <Widget>[
                                            CupertinoTextField(
                                              placeholder: "Enter the reason",
                                              minLines: 6,
                                              maxLines: null,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                            ElevatedButton(
                                                child: Text("Submit"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                    fixedSize: Size(80, 25))),
                                          ]));
                            })),
                    Image.asset(
                      "assets/images/logo1.jpg",
                      height: 130,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "12-11-2022 | Ernakulam | Rs10000",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: RichText(
                        text: TextSpan(
                          text: "Electrician: ",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nSkills required-Electrical plumbing',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                        title: Text(
                          "Job Description",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going Contrary to popular belief, Lorem Ipsum is not simply random text. It has rootsin a piece of classical Latin literature from 45 BC, making it over 2000 years oldRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum")),
                    SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue, fixedSize: Size(100, 30)),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    backgroundColor: Color(0xff71BEBE),
                                    title: const Text(
                                      'Are you ready to take this job?',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ApplyForm()));
                                        },
                                        child: const Text('Yes'),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                        ),
                                        onPressed: () =>
                                            Navigator.pop(context, 'No'),
                                        child: const Text('No'),
                                      ),
                                    ],
                                  ));
                        },
                        child: Text("Apply"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Chat Now")),
                    ]),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
