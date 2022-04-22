import 'package:flutter/material.dart';

import 'applyjob.dart';

class TopTasker extends StatefulWidget {
  const TopTasker({Key? key}) : super(key: key);

  @override
  State<TopTasker> createState() => _TopTaskerState();
}

class _TopTaskerState extends State<TopTasker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF71BEBE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF71BEBE),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 125,
                height: 165,
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
                          image: ExactAssetImage('assets/images/profile.webp'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Text(
                      "Fahim Rahman",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Featured Skills",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "Help Moving 41.17/hr",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "Home Repairs 37.64/hr",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "Furniture Assembly",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Center(
                    child: Text(
                      "Fahim Rahman\n",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going "),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Color(0xFF35A1A1),
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Recently finished jobs",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 89,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0XFF30AA94)),
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
                                    image: ExactAssetImage(
                                        'assets/images/logo1.jpg'),
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
                        height: 15,
                      ),
                      Container(
                        height: 89,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0XFF30AA94)),
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
                                    image: ExactAssetImage(
                                        'assets/images/logo1.jpg'),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
