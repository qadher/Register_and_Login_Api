import 'package:flutter/material.dart';

import 'applyjob.dart';

class JobsAvailable extends StatefulWidget {
  const JobsAvailable({Key? key}) : super(key: key);

  @override
  State<JobsAvailable> createState() => _JobsAvailableState();
}

class _JobsAvailableState extends State<JobsAvailable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          backgroundColor: const Color(0xFF71BEBE),
          elevation: 0,
          toolbarHeight: 65,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Jobs Available",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.3,
          padding: EdgeInsets.all(15),
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    color: Colors.green.withOpacity(0.5),
                    height: 33,
                    width: 200,
                    child: Stack(
                      children: [
                        Center(
                          child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ApplyJob())),
                            child: Text(
                              "Assemble A Table",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo1.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    color: Colors.green.withOpacity(0.5),
                    height: 33,
                    width: 200,
                    child: Stack(
                      children: [
                        Center(
                          child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ApplyJob())),
                            child: Text(
                              "Assemble A Table",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo1.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    // child: Image.asset(
                    //   "assets/images/logo1.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  Container(
                    color: Colors.green.withOpacity(0.5),
                    height: 33,
                    width: 200,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "Assemble A Table",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo1.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    // child: Image.asset(
                    //   "assets/images/logo1.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  Container(
                    color: Colors.green.withOpacity(0.5),
                    height: 33,
                    width: 200,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "Assemble A Table",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo1.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ],
        ));
  }
}
