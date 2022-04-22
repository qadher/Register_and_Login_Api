// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:jobseekingapp/apiservice/api_service.dart';
// import 'package:jobseekingapp/constant/apilink.dart';


// class SignupController extends GetxController {
//   final _apiservice = ApiService();
//   final _apilink = ApiLink();

//   Future userSignup(
//       {required String userName,
//       required String emailAddress,
//       required int phoneNumber,
//       required String password,
//       required String confirmPassword}) async {
//     var userdata = {
//       "name": userName,
//       "email": emailAddress,
//       "phone": phoneNumber,
//       "password": password
//     };
//     var response = await _apiservice.signupService(
//         _apilink.BASE_URL + _apilink.USERSIGNUP, userdata);
//     if (response != null) {
//       // print(response.name);

//       ///////sharedprre

//       // signupService() async {
//       //   SharedPreferences prefs = await SharedPreferences.getInstance();
//       //   prefs.setString('token', "abc");
//       // }

//       // Get.to(Homepage());
//     }
//   }
// }
