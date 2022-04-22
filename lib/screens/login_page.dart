import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../apiservice/api_service.dart';
import '../constant/config.dart';
import '../model/login_request_model.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: ProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign in to your account",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.grey,
                      minimumSize: Size(35, 30)),
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    //color: Colors.red,
                    size: 18,
                  ),
                  label: Text("Sign in with Google"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 16, right: 8, left: 8, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email Address', style: TextStyle(fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FormHelper.inputFieldWidget(
                    context,
                    "${Icon(Icons.email)}",
                    "Enter the Email",
                    
                    (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return 'Email can\'t be empty.';
                      }  if (!RegExp(r'\S+@\S+\.\S+')
                          .hasMatch(onValidateVal)) {
                        return 'Please enter a valid email address.';
                      }

                      return null;
                    },
                    (onSavedVal) => {
                      email = onSavedVal,
                    },
                    initialValue: "",
                    obscureText: false,
                    borderFocusColor: Color(0xFFE5E5E5),
                    borderColor: Color(0xFFE5E5E5),
                    prefixIconColor: Colors.black,
                    textColor: Colors.black,
                    hintColor: Colors.grey,
                    borderRadius: 10,
                    paddingLeft: 0,
                    paddingRight: 0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Password', style: TextStyle(fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FormHelper.inputFieldWidget(
                    context,
                    "${Icon(Icons.lock)}",
                    "Enter the Password",
                    
                    (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return 'Password can\'t be empty.';
                      } if (onValidateVal.trim().length < 8) {
                        return 'Password must be at least 8 characters in length';
                      }

                      return null;
                    },
                    (onSavedVal) => {
                      password = onSavedVal,
                    },
                    initialValue: "",
                    obscureText: hidePassword,
                    borderFocusColor: Color(0xFFE5E5E5),
                    borderColor: Color(0xFFE5E5E5),
                    prefixIconColor: Colors.black,
                    textColor: Colors.black,
                    hintColor: Colors.grey,
                    borderRadius: 10,
                    paddingLeft: 0,
                    paddingRight: 0,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      color: Colors.black,
                      icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FormHelper.submitButton(
                    "Login",
                    () {
                      if (validateAndSave()) {
                        setState(() {
                          isApiCallProcess = true;
                        });

                        LoginRequestModel model = LoginRequestModel(
                          email: email,
                          password: password,
                        );

                        APIService.login(model).then(
                          (response) {
                            setState(() {
                              isApiCallProcess = false;
                            });

                            if (response) {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/home',
                                (route) => false,
                              );
                            } else {
                              FormHelper.showSimpleAlertDialog(
                                context,
                                Config.appName,
                                "Invalid Email/Password !!",
                                "OK",
                                () {
                                  Navigator.of(context).pop();
                                },
                              );
                            }
                          },
                        );
                      }
                    },
                    btnColor: Color(0xFF519BD0),
                    borderColor: Color(0xFF519BD0),
                    txtColor: Colors.white,
                    borderRadius: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style:
                          const TextStyle(color: Colors.black, fontSize: 14.0),
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Dont have an account? ',
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                context,
                                '/register',
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //       right: 25,
          //     ),
          //     child: RichText(
          //       text: TextSpan(
          //         style: const TextStyle(color: Colors.grey, fontSize: 14.0),
          //         children: <TextSpan>[
          //           TextSpan(
          //             text: 'Forget Password ?',
          //             style: const TextStyle(
          //               color: Colors.white,
          //               decoration: TextDecoration.underline,
          //             ),
          //             recognizer: TapGestureRecognizer()..onTap = () {},
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
