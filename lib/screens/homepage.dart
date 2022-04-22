import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:register_and_login_api/screens/postjobs.dart';
import 'package:register_and_login_api/screens/top_tasker_profile.dart';

import '../apiservice/shared_service.dart';
import 'applyjob.dart';
import 'jobs_availablelist.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        //leadingWidth: 150,
        backgroundColor: const Color(0xFF71BEBE),
        elevation: 0,
        toolbarHeight: 65,
        title: const Center(
          child: Text(
            "Tasker",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton(
            icon: Image.asset(
              'assets/images/profile.webp',
            ),
            iconSize: 40,
            onSelected: (value) {
              if (value == "0") {
                SharedService.logout(context);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Logout'),
                value: "0",
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/walpaper.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Help when you need at your fingertips!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              color: Color.fromARGB(255, 137, 218, 218),
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Services",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "To give real service you must add somthing which cannot be bought.",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              height: 80,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PostJobs()));
                                      }),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.account_balance,
                                            color: Colors.white,
                                            size: 20,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Post Job",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Post your Jobs here.",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Find suitable worker.",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        // Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 80,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    JobsAvailable()));
                                      }),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.account_balance,
                                            color: Colors.white,
                                            size: 20,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Apply Job",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Find and apply Jobs",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "based on your Skill.",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        // Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Color.fromARGB(255, 137, 218, 218),
              height: 369,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Jobs Available",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 89,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 117, 143, 140)),
                    child: Row(
                      children: [
                        Container(
                            width: 160.00,
                            height: 100.00,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              image: DecorationImage(
                                image:
                                    ExactAssetImage('assets/images/logo1.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ApplyJob()));
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
                                  height: 10,
                                ),
                                Text(
                                  "1000-3000",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    height: 89,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 117, 143, 140)),
                    child: Row(
                      children: [
                        Container(
                            width: 160.00,
                            height: 100.00,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              image: DecorationImage(
                                image:
                                    ExactAssetImage('assets/images/logo1.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
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
                              height: 10,
                            ),
                            Text(
                              "1000-3000",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    height: 89,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 117, 143, 140)),
                    child: Row(
                      children: [
                        Container(
                            width: 160.00,
                            height: 100.00,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              image: DecorationImage(
                                image:
                                    ExactAssetImage('assets/images/logo1.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
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
                              height: 10,
                            ),
                            Text(
                              "1000-3000",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Top Taskers",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopTasker()));
                  },
                  child: Container(
                    width: 105,
                    height: 161,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          width: 53,
                          height: 54,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile.webp'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          "Fahim Rahman",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Featured Skills",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Help Moving 41.17/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Home Repairs 37.64/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Furniture Assembly",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopTasker()));
                  },
                  child: Container(
                    width: 105,
                    height: 161,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          width: 53,
                          height: 54,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  ExactAssetImage('assets/images/profile.webp'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          "Fahim Rahman",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Featured Skills",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Help Moving 41.17/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Home Repairs 37.64/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Furniture Assembly",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopTasker()));
                  },
                  child: Container(
                    width: 105,
                    height: 161,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          width: 53,
                          height: 54,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  ExactAssetImage('assets/images/profile.webp'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          "Fahim Rahman",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Featured Skills",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Help Moving 41.17/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Home Repairs 37.64/hr",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                "Furniture Assembly",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              width: double.infinity,
              color: Color(0XFF20202D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
