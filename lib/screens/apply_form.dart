import 'package:flutter/material.dart';

import 'homepage.dart';

class ApplyForm extends StatefulWidget {
  const ApplyForm({Key? key}) : super(key: key);

  @override
  State<ApplyForm> createState() => _ApplyFormState();
}

class _ApplyFormState extends State<ApplyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          title: Text(
            "Apply Form",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          leading: IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ApplyJob()));
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
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
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 22),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 500,
                width: 350,
                child: Form(
                    child: SingleChildScrollView(
                        child: Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 290,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE5E5E5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Your Name",
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
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Your Place",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Your Email",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Your Qualification",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Your Skills",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Any Experiance",
                            border: InputBorder.none,
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
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                          backgroundColor: Color(0xff71BEBE),
                                          title: const Text(
                                            'Your request has been taken.Wait for the confirmaton',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          actions: [
                                            Center(
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                  ),
                                                  onPressed: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Homepage())),
                                                  child: Text("Homepage")),
                                            )
                                          ],
                                        ));
                              },
                              child: Text("Submit"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  fixedSize: Size(100, 30)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )))),
          )
        ]));
  }
}
