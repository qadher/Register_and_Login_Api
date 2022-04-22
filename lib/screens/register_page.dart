import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../apiservice/api_service.dart';
import '../constant/config.dart';
import '../model/register_request_model.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  static final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? email;
  String? password;
  String? phone;

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
            child: _registerUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _registerUI(BuildContext context) {
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
                  "Create an account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Create an account to use dashboard",
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
                Text('Name', style: TextStyle(fontSize: 18)),
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
                    "${Icon(Icons.person)}",
                    "Enter the Name",
                    (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return 'Name can\'t be empty.';
                      }
                      if (onValidateVal.trim().length < 4) {
                        return 'must have 4 char';
                      }

                      return null;
                    },
                    (onSavedVal) => {
                      username = onSavedVal,
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
                Text('Email', style: TextStyle(fontSize: 18)),
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
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(onValidateVal)) {
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
                Text('Phone Number', style: TextStyle(fontSize: 18)),
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
                    "${Icon(Icons.phone)}",
                    "Enter the Number",
                    (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return 'Phone can\'t be empty.';
                      }
                      if (onValidateVal!.length != 10)
                        return 'Mobile Number must be of 10 digit';

                      return null;
                    },
                    (onSavedVal) => {
                      phone = onSavedVal,
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
                      }
                      if (onValidateVal.trim().length < 8) {
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FormHelper.submitButton(
                    "Sign Up",
                    () {
                      if (validateAndSave()) {
                        setState(() {
                          isApiCallProcess = true;
                        });

                        RegisterRequestModel model = RegisterRequestModel(
                          name: username,
                          email: email,
                          password: password,
                          phone: phone,
                        );

                        APIService.register(model).then(
                          (response) {
                            setState(() {
                              isApiCallProcess = false;
                            });

                            if (response != null) {
                              FormHelper.showSimpleAlertDialog(
                                context,
                                Config.appName,
                                "Registration Successful. Please login to the account",
                                "OK",
                                () {
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/login',
                                    (route) => false,
                                  );
                                },
                              );
                            } else {
                              FormHelper.showSimpleAlertDialog(
                                context,
                                Config.appName,
                                "Registration Failed. Please try again",
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
                          text: 'Already have an account? ',
                        ),
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/login', ModalRoute.withName('/'));
                              // Navigator.pushNamed(
                              //   context,
                              //   '/login',
                              // );
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
