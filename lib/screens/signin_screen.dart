// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:pmlsketodietproject/screens/admin/admin_create.dart';
// import 'package:pmlsketodietproject/screens/admin/admin_update.dart';
// import 'package:pmlsketodietproject/screens/home_screen.dart';
// // import 'Student.dart';
// // import 'Admin.dart';
// // import 'register.dart';



// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   bool _isObscure3 = true;
//   bool visible = false;
//   final _formkey = GlobalKey<FormState>();
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();

//   final _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               color: Colors.orangeAccent[700],
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.70,
//               child: Center(
//                 child: Container(
//                   margin: EdgeInsets.all(12),
//                   child: Form(
//                     key: _formkey,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Text(
//                           "Login",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 40,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
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
//                               borderRadius: new BorderRadius.circular(10),
//                             ),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(10),
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
//                           onSaved: (value) {
//                             emailController.text = value!;
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: passwordController,
//                           obscureText: _isObscure3,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 icon: Icon(_isObscure3
//                                     ? Icons.visibility
//                                     : Icons.visibility_off),
//                                 onPressed: () {
//                                   setState(() {
//                                     _isObscure3 = !_isObscure3;
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
//                               borderRadius: new BorderRadius.circular(10),
//                             ),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: new BorderSide(color: Colors.white),
//                               borderRadius: new BorderRadius.circular(10),
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
//                           onSaved: (value) {
//                             passwordController.text = value!;
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                         ),
                       
//                         SizedBox(
//                           height: 20,
//                         ),
//                         MaterialButton(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20.0))),
//                           elevation: 5.0,
//                           height: 40,
//                           onPressed: () {
//                             setState(() {
//                               visible = true;
//                             });
//                             signIn(
//                                 emailController.text, passwordController.text);
//                           },
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                               fontSize: 20,
//                             ),
//                           ),
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Visibility(
//                             maintainSize: true,
//                             maintainAnimation: true,
//                             maintainState: true,
//                             visible: visible,
//                             child: Container(
//                                 child: CircularProgressIndicator(
//                               color: Colors.white,
//                             ))),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               width: MediaQuery.of(context).size.width,
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 20,
//                     ),
//                     MaterialButton(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(20.0),
//                         ),
//                       ),
//                       elevation: 5.0,
//                       height: 40,
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => SignUpScreen(),
//                           ),
//                         );
//                       },
//                       color: Colors.blue[900],
//                       child: Text(
//                         "Register Now",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     // Text(
//                     //   "Made by",
//                     //   style: TextStyle(
//                     //     fontWeight: FontWeight.bold,
//                     //     fontSize: 40,
//                     //   ),
//                     // ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.center,
//                     //   children: [
//                     //     Text(
//                     //       "WEB",
//                     //       style: TextStyle(
//                     //         fontWeight: FontWeight.bold,
//                     //         fontSize: 30,
//                     //         color: Colors.blue[900],
//                     //       ),
//                     //     ),
//                     //     Text(
//                     //       "FUN",
//                     //       style: TextStyle(
//                     //         fontWeight: FontWeight.bold,
//                     //         fontSize: 30,
//                     //         color: Colors.yellowAccent[400],
//                     //       ),
//                     //     ),
//                     //   ],
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void route() {
//     User? user = FirebaseAuth.instance.currentUser;
//     var kk = FirebaseFirestore.instance
//             .collection('users')
//             .doc(user!.uid)
//             .get()
//             .then((DocumentSnapshot documentSnapshot) {
//       if (documentSnapshot.exists) {
//         if (documentSnapshot.get('role') == "Admin") {
//            Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>  AdminCreate(),
//           ),
//         );
//         }else{
//           Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>  HomeScreen(),
//           ),
//         );
//         }
//       } else {
//         print('Document does not exist on the database');
//       }
//     });
//   }

//   void signIn(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       try {
//         UserCredential userCredential =
//             await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: email,
//           password: password,
//         );
//         route();
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'user-not-found') {
//           print('No user found for that email.');
//         } else if (e.code == 'wrong-password') {
//           print('Wrong password provided for that user.');
//         }
//       }
//     }
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutterkhadijah/screens/home_screen.dart';
// import 'package:flutterkhadijah/utils/color_utils.dart';
import '../reusable_widgets/bottom_navbar.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'cust/cust_orderForm.dart';
import 'cust/cust_upload.dart';
import 'cust/home_upload.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("#ffcc66"),
          hexStringToColor("#ff6600"),
          // hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.25, 20, 10),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                  "Enter UserName", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailTextController.text, 
                    password: _passwordTextController.text)
                    .then((value){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeUpload()));
                    }).onError((error, stackTrace){
                      print("Error ${error.toString()}");
                    });
                
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have account?",
        style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
