// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:jobseekingapp/apiservice/api_service.dart';
// import 'package:jobseekingapp/controller/signup_controller.dart';
// import 'package:jobseekingapp/screens/signin.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final GlobalKey<FormState> _formKey = GlobalKey();

//   late bool _passwordVisible;
//   late bool _confirmpasswordVisible;
//   final passwordController = TextEditingController();
//   final confirmpasswordController = TextEditingController();
//   String userEmail = '';
//   String userName = '';
//   String userPhone = '';
//   String password = '';
//   String confirmPassword = '';

//   @override
//   void initState() {
//     super.initState();
//     _passwordVisible = true;
//     _confirmpasswordVisible = true;
//   }

//   void validate() async {
//     if (_formKey.currentState!.validate()) {
//       // Navigator.of(context)
//       //     .pushReplacement(MaterialPageRoute(builder: (context) {
//       //   return Signin();
//       // }));
//       await _signupcontroller.userSignup(
//           userName: userName,
//           emailAddress: userEmail,
//           phoneNumber: int.parse(userPhone),
//           password: password,
//           confirmPassword: confirmPassword);
//     }
//   }

//   final _signupcontroller = SignupController();

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
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Create an account",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text("Create an account to use dashboard"),
//                 SizedBox(
//                   height: 10,
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
//           Stack(
//             children: [
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white,
//                   ),
//                   height: 460,
//                   width: 350,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 30, vertical: 15),
//                     child: Form(
//                       key: _formKey,
//                       child: SingleChildScrollView(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text("Username"),
//                                     ),
//                                     Container(
//                                       height: 50,
//                                       width: 290,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFFE5E5E5),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: TextFormField(
//                                         decoration: InputDecoration(
//                                           focusedBorder: InputBorder.none,
//                                           enabledBorder: InputBorder.none,
//                                           border: InputBorder.none,
//                                           contentPadding: EdgeInsets.all(10),
//                                         ),
//                                         validator: (value) {
//                                           if (value == null ||
//                                               value.trim().isEmpty) {
//                                             return 'field is required';
//                                           }
//                                           if (value.trim().length < 4) {
//                                             return 'must have 4 char';
//                                           }
//                                           // Return null if the entered username is valid
//                                           return null;
//                                         },
//                                         onChanged: (value) => userName = value,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text("Email address"),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 290,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFE5E5E5),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                   contentPadding: EdgeInsets.all(10),
//                                 ),
//                                 validator: (value) {
//                                   if (value == null || value.trim().isEmpty) {
//                                     return 'Please enter your email address';
//                                   }
//                                   // Check if the entered email has the right format
//                                   if (!RegExp(r'\S+@\S+\.\S+')
//                                       .hasMatch(value)) {
//                                     return 'Please enter a valid email address';
//                                   }
//                                   // Return null if the entered email is valid
//                                   return null;
//                                 },
//                                 onChanged: (value) => userEmail = value,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text("Phone number"),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 290,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFE5E5E5),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                   contentPadding: EdgeInsets.all(10),
//                                 ),
//                                 validator: (value) {
//                                   if (value!.length != 10)
//                                     return 'Mobile Number must be of 10 digit';
//                                   else
//                                     return null;
//                                 },
//                                 onChanged: (value) => userPhone = value,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text("Password"),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 290,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFE5E5E5),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: TextFormField(
//                                 obscureText: _passwordVisible,
//                                 controller: passwordController,
//                                 decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                   contentPadding:
//                                       EdgeInsets.only(top: 20, left: 10),
//                                   suffixIcon: IconButton(
//                                     icon: Icon(
//                                       _passwordVisible
//                                           ? Icons.visibility_off
//                                           : Icons.visibility,
//                                       color: Colors.black87,
//                                     ),
//                                     onPressed: () {
//                                       setState(() {
//                                         _passwordVisible = !_passwordVisible;
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value == null || value.trim().isEmpty) {
//                                     return 'This field is required';
//                                   }
//                                   if (value.trim().length < 8) {
//                                     return 'Password must be at least 8 characters in length';
//                                   }
//                                   // Return null if the entered password is valid
//                                   return null;
//                                 },
//                                 onChanged: (value) => password = value,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text("Confirm Password"),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 290,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFE5E5E5),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: TextFormField(
//                                 obscureText: _confirmpasswordVisible,
//                                 controller: confirmpasswordController,
//                                 decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                   contentPadding:
//                                       EdgeInsets.only(top: 20, left: 10),
//                                   suffixIcon: IconButton(
//                                     icon: Icon(
//                                       _passwordVisible
//                                           ? Icons.visibility_off
//                                           : Icons.visibility,
//                                       color: Colors.black87,
//                                     ),
//                                     onPressed: () {
//                                       setState(() {
//                                         _confirmpasswordVisible =
//                                             !_confirmpasswordVisible;
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'This field is required';
//                                   }

//                                   if (value != password) {
//                                     return 'Confimation password does not match the entered password';
//                                   }

//                                   return null;
//                                 },
//                                 onChanged: (value) => confirmPassword = value,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Column(
//                               children: [
//                                 FutureBuilder(builder: (context, builder) {
//                                   return ElevatedButton(
//                                     onPressed: validate,
//                                     child: Text("Sign Up"),
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Colors.blue,
//                                         fixedSize: Size(290, 30)),
//                                   );
//                                 }),
//                               ],
//                             ),
//                             TextButton(
//                                 onPressed: () => Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Signin())),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Already have an account?",
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                     SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text(
//                                       "Sign In",
//                                       style: TextStyle(color: Colors.blue),
//                                     )
//                                   ],
//                                 ))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
