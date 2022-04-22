// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:jobseekingapp/controller/signin_controller.dart';
// import 'package:jobseekingapp/screens/homepage.dart';
// import 'package:jobseekingapp/screens/signup.dart';

// class Signin extends StatefulWidget {
//   const Signin({Key? key}) : super(key: key);

//   @override
//   State<Signin> createState() => _SigninState();
// }

// class _SigninState extends State<Signin> {
//   final GlobalKey<FormState> _formKey = GlobalKey();

//   String _userEmail = '';
//   String _password = '';

//   void validate() async {
//     if (_formKey.currentState!.validate()) {
//       // Navigator.of(context)
//       //     .pushReplacement(MaterialPageRoute(builder: (context) {
//       //   return Homepage();
//       // }));
//       await _signincontroller.userSignin(
//           emailAddress: _userEmail, password: _password);
//     }
//   }

//   final _signincontroller = SigninController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: const Color(0xFFE5E5E5),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF71BEBE),
//         elevation: 0,
//         toolbarHeight: 65,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Tasker",
//               style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
//             ),
//           ],
//         ),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back)),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 25.0, top: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Sign In",
//                   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Sign in to your account",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.white,
//                       onPrimary: Colors.grey,
//                       minimumSize: Size(35, 30)),
//                   icon: FaIcon(
//                     FontAwesomeIcons.google,
//                     //color: Colors.red,
//                     size: 18,
//                   ),
//                   label: Text("Sign in with Google"),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Stack(
//             children: [
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white,
//                   ),
//                   height: 350,
//                   width: 340,
//                   child: Form(
//                       key: _formKey,
//                       child: SingleChildScrollView(
//                         child: Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('Email address',
//                                   style: TextStyle(fontSize: 18)),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Color(0xFFE5E5E5),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: TextFormField(
//                                   validator: (value) {
//                                     if (value == null || value.trim().isEmpty) {
//                                       return 'Please enter your email address';
//                                     }
//                                     if (!RegExp(r'\S+@\S+\.\S+')
//                                         .hasMatch(value)) {
//                                       return 'Please enter a valid email address';
//                                     }
//                                     return null;
//                                   },
//                                   onChanged: (value) => _userEmail = value,
//                                   keyboardType: TextInputType.emailAddress,
//                                   decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintStyle: TextStyle(
//                                           fontSize: 15.0, color: Colors.black),
//                                       hintText: 'Enter the email',
//                                       contentPadding:
//                                           const EdgeInsets.only(left: 14.0),
//                                       focusedBorder: InputBorder.none,
//                                       enabledBorder: InputBorder.none),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               const Text('Password',
//                                   style: TextStyle(fontSize: 18)),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Color(0xFFE5E5E5),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: TextFormField(
//                                   validator: (value) {
//                                     if (value == null || value.trim().isEmpty) {
//                                       return 'This field is required';
//                                     }
//                                     if (value.trim().length < 8) {
//                                       return 'Password must be at least 8 characters in length';
//                                     }

//                                     return null;
//                                   },
//                                   onChanged: (value) => _password = value,
//                                   keyboardType: TextInputType.visiblePassword,
//                                   obscureText: true,
//                                   decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintStyle: TextStyle(
//                                           fontSize: 15.0, color: Colors.black),
//                                       hintText: 'Enter the password',
//                                       contentPadding:
//                                           const EdgeInsets.only(left: 14.0),
//                                       focusedBorder: InputBorder.none,
//                                       enabledBorder: InputBorder.none),
//                                 ),
//                               ),
//                               SizedBox(height: 5),
//                               Align(
//                                 alignment: Alignment.topLeft,
//                                 child: Text(
//                                   "Forgot password?",
//                                   style: TextStyle(color: Colors.blue),
//                                 ),
//                               ),
//                               SizedBox(height: 5),
//                               Column(
//                                 children: [
//                                   ElevatedButton(
//                                       onPressed: validate,
//                                       child: Text("Sign In"),
//                                       style: ElevatedButton.styleFrom(
//                                           primary: Color(0xFF519BD0),
//                                           fixedSize: Size(300, 30))),
//                                 ],
//                               ),
//                               SizedBox(height: 10),
//                               ListTile(
//                                 title: Text(
//                                   "Don't have an account?",
//                                   style: TextStyle(color: Colors.black87),
//                                 ),
//                                 trailing: Text(
//                                   "Register here",
//                                   style: TextStyle(color: Colors.blue),
//                                 ),
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => SignUp()));
//                                 },
//                               )
//                             ],
//                           ),
//                         ),
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
