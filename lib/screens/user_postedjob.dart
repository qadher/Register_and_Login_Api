import 'package:flutter/material.dart';
import 'package:register_and_login_api/screens/postjobs.dart';
import 'package:register_and_login_api/screens/user_appliedjob.dart';

import 'applied_user.dart';
import 'homepage.dart';

class UserPostedJob extends StatefulWidget {
  const UserPostedJob({Key? key}) : super(key: key);

  @override
  State<UserPostedJob> createState() => _UserPostedJobState();
}

class _UserPostedJobState extends State<UserPostedJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Posted Jobs",
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
                  Navigator.pop(context);
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserAppliedJob()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0, top: 10),
        child: Container(
          height: 59,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 117, 143, 140)),
          child: Row(
            children: [
              Container(
                  width: 100.00,
                  height: 100.00,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                      image: ExactAssetImage('assets/images/walpaper.png'),
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                width: 25,
              ),
              InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AppliedUser()));
                  }),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Assemble A Table",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "1000-3000",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Cancel'),
                          value: "0",
                        ),
                      ],
                  onSelected: (value) {
                    if (value == "0") {
                      // setState(() {});
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xff71BEBE),
                                title: const Text(
                                  'Are you sure you want to cancel?',
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
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                                backgroundColor:
                                                    Color(0xff71BEBE),
                                                title: const Text(
                                                  'Job Cancelled Successfully!',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                actions: [
                                                  Center(
                                                    child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors.green,
                                                        ),
                                                        onPressed: () => Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Homepage())),
                                                        child:
                                                            Text("Homepage")),
                                                  )
                                                ],
                                              ));
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
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
