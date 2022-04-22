import 'package:flutter/material.dart';
import 'package:register_and_login_api/screens/user_appliedjob.dart';
import 'package:register_and_login_api/screens/user_postedjob.dart';

import 'homepage.dart';

class PostJobs extends StatefulWidget {
  const PostJobs({Key? key}) : super(key: key);

  @override
  State<PostJobs> createState() => _PostJobsState();
}

class _PostJobsState extends State<PostJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          title: Text(
            "Jobs",
            style: TextStyle(color: Colors.black),
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
                    Navigator.pop(context);
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserPostedJob()));
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
        body: Stack(children: [
          Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 650,
                  width: 350,
                  child: Form(
                      child: SingleChildScrollView(
                          child: Padding(
                    padding: EdgeInsets.all(20.0),
                    // child: Text(
                    //   "Fill the form correctly",
                    //   style:
                    //       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    // ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fill the form correctly",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Job Designation"),
                                ),
                                Container(
                                  height: 40,
                                  width: 290,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE5E5E5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Job Description",
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Category"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Province"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("City"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Minimum Payment"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Skills Required"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Time Period From:"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "mm/dd/yyyy",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("To:"),
                        ),
                        Container(
                          height: 40,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "mm/dd/yyyy",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Post Job"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    fixedSize: Size(100, 30)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )))))
        ]));
  }
}
