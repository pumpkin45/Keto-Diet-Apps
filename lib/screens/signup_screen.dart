// // import 'dart:io';
// // import 'dart:html';
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pmlsketodietproject/screens/signin_screen.dart';
// // import 'login.dart';
// // import 'model.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   _SignUpScreenState();

//   bool showProgress = false;
//   bool visible = false;

//   final _formkey = GlobalKey<FormState>();
//   final _auth = FirebaseAuth.instance;

//   final TextEditingController passwordController = new TextEditingController();
//   final TextEditingController confirmpassController =
//       new TextEditingController();
//   final TextEditingController name = new TextEditingController();
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController mobile = new TextEditingController();
//   bool _isObscure = true;
//   bool _isObscure2 = true;
//   File? file;
//   var options = [
//     'User',
//     'Admin',
//   ];
//   var _currentItemSelected = "User";
//   var role = "User";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange[900],
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               color: Colors.orangeAccent[700],
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               child: SingleChildScrollView(
//                 child: Container(
//                   margin: EdgeInsets.all(12),
//                   child: Form(
//                     key: _formkey,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 80,
//                         ),
//                         Text(
//                           "Sign Up Now",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 40,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         TextFormField(
//                           controller: emailController,
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: 'Email',
//                             enabled: true,
//                             contentPadding: const EdgeInsets.only(
//                                 left: 14.0, bottom: 8.0, top: 8.0),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value!.length == 0) {
//                               return "Email cannot be empty";
//                             }
//                             if (!RegExp(
//                                     "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//                                 .hasMatch(value)) {
//                               return ("Please enter a valid email");
//                             } else {
//                               return null;
//                             }
//                           },
//                           onChanged: (value) {},
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           obscureText: _isObscure,
//                           controller: passwordController,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 icon: Icon(_isObscure
//                                     ? Icons.visibility_off
//                                     : Icons.visibility),
//                                 onPressed: () {
//                                   setState(() {
//                                     _isObscure = !_isObscure;
//                                   });
//                                 }),
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: 'Password',
//                             enabled: true,
//                             contentPadding: const EdgeInsets.only(
//                                 left: 14.0, bottom: 8.0, top: 15.0),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                           ),
//                           validator: (value) {
//                             RegExp regex = new RegExp(r'^.{6,}$');
//                             if (value!.isEmpty) {
//                               return "Password cannot be empty";
//                             }
//                             if (!regex.hasMatch(value)) {
//                               return ("please enter valid password min. 6 character");
//                             } else {
//                               return null;
//                             }
//                           },
//                           onChanged: (value) {},
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           obscureText: _isObscure2,
//                           controller: confirmpassController,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 icon: Icon(_isObscure2
//                                     ? Icons.visibility_off
//                                     : Icons.visibility),
//                                 onPressed: () {
//                                   setState(() {
//                                     _isObscure2 = !_isObscure2;
//                                   });
//                                 }),
//                             filled: true,
//                             fillColor: Colors.white,
//                             hintText: 'Confirm Password',
//                             enabled: true,
//                             contentPadding: const EdgeInsets.only(
//                                 left: 14.0, bottom: 8.0, top: 15.0),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(20),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (confirmpassController.text !=
//                                 passwordController.text) {
//                               return "Password did not match";
//                             } else {
//                               return null;
//                             }
//                           },
//                           onChanged: (value) {},
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "role : ",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             DropdownButton<String>(
//                               dropdownColor: Colors.blue[900],
//                               isDense: true,
//                               isExpanded: false,
//                               iconEnabledColor: Colors.white,
//                               focusColor: Colors.white,
//                               items: options.map((String dropDownStringItem) {
//                                 return DropdownMenuItem<String>(
//                                   value: dropDownStringItem,
//                                   child: Text(
//                                     dropDownStringItem,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                               onChanged: (newValueSelected) {
//                                 setState(() {
//                                   _currentItemSelected = newValueSelected!;
//                                   role = newValueSelected;
//                                 });
//                               },
//                               value: _currentItemSelected,
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20.0))),
//                               elevation: 5.0,
//                               height: 40,
//                               onPressed: () {
//                                 CircularProgressIndicator();
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => SignInScreen(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 "Login",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                 ),
//                               ),
//                               color: Colors.white,
//                             ),
//                             MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20.0))),
//                               elevation: 5.0,
//                               height: 40,
//                               onPressed: () {
//                                 setState(() {
//                                   showProgress = true;
//                                 });
//                                 signUp(emailController.text,
//                                     passwordController.text, role);
//                               },
//                               child: Text(
//                                 "Sign Up",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                 ),
//                               ),
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         // Text(
//                         //   "WEBFUN",
//                         //   style: TextStyle(
//                         //     fontWeight: FontWeight.bold,
//                         //     fontSize: 30,
//                         //     color: Colors.yellowAccent[400],
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void signUp(String email, String password, String role) async {
//     CircularProgressIndicator();
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) => {postDetailsToFirestore(email, role)})
//           .catchError((e) {});
//     }
//   }

//   postDetailsToFirestore(String email, String role) async {
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     var user = _auth.currentUser;
//     CollectionReference ref = FirebaseFirestore.instance.collection('users');
//     ref.doc(user!.uid).set({'email': emailController.text, 'role': role});
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => SignInScreen()));
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

   //form key here
  final _formKey = GlobalKey<FormState>();
  // variable to enable auto validating of theform
  bool _autoValidate = true;
  // variable to enable toggling between showing and hiding password
  bool _hidePassword = true;

  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                
                height: 20,
              ),
              reusableTextField("Enter UserName", Icons.person_outline, false,
                  _userNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email", Icons.email_outlined, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                      print("Created New Account");
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });

                
              })
            ],
          ),
        )),
      ),
    );
  }
}
