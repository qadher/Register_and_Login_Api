import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_and_login_api/screens/postjobs.dart';
import 'package:register_and_login_api/screens/user_postedjob.dart';

import 'homepage.dart';

class UserAppliedJob extends StatefulWidget {
  const UserAppliedJob({Key? key}) : super(key: key);

  @override
  State<UserAppliedJob> createState() => _UserAppliedJobState();
}

class _UserAppliedJobState extends State<UserAppliedJob> {
  TextEditingController controller = TextEditingController(text: "Settings");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Applied Jobs",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Drawer(
          backgroundColor: Color(0xFF71BEBE),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'Tasker',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.work_outline,
                  color: Colors.white,
                ),
                title: const Text(
                  'Job Post',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PostJobs()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.add_task,
                  color: Colors.white,
                ),
                title: const Text(
                  'Posted Jobs',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserPostedJob()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  'Applied Job',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 490,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Service Requested"),
                                Container(
                                  height: 30,
                                  width: 150,
                                  child: CupertinoTextField(
                                    placeholder: "Search in table",
                                    suffix: Icon(
                                      Icons.search,
                                      color: Colors.grey[700],
                                    ),
                                    cursorHeight: 20,
                                    autofocus: false,
                                    cursorColor: Colors.grey[700],
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Electrician",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text("Employer Name",
                                          style: TextStyle(fontSize: 11)),
                                      Text("12\$/hr",
                                          style: TextStyle(fontSize: 11)),
                                      Text("Pending",
                                          style: TextStyle(fontSize: 11)),
                                      Text("View",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
