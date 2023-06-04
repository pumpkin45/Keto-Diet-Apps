
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:dino_printing/screens/order.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:pmlsketodietproject/screens/cust/payment.dart';
// // import 'package:dino_printing/router/routes.dart';
// // import 'package:file_picker/file_picker.dart';

// import '../../router/routers.dart';
// // import 'package:dino_printing/screens/orderdetail_screen.dart';
// // import 'package:dino_printing/screens/order.dart';

// // enum size { A1, A2, A3, A4, A5, A6 }

// class Payment extends StatefulWidget {
//   const Payment({Key? key}) : super(key: key);

//   @override
//   State<Payment> createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   final _formKey = GlobalKey<FormState>();
//   int currentPageIndex = 0;
//   // size? _paperSize = size.A1;



//   CollectionReference paymentdetail =
//       FirebaseFirestore.instance.collection('paymentdetail');

//        Widget buildProgress() => StreamBuilder<TaskSnapshot>(
//       stream: uploadTask?.snapshotEvents,
//       builder: ((context, snapshot) {
//         if (snapshot.hasData) {
//           final data = snapshot.data!;
//           double progress = data.bytesTransferred / data.totalBytes;

//           return SizedBox(
//               height: 50,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   LinearProgressIndicator(
//                     value: progress,
//                     backgroundColor: Colors.grey,
//                     color: Colors.green,
//                   ),
//                   Center(
//                     child: Text(
//                       '${(100 * progress).roundToDouble()}%',
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                   )
//                 ],
//               ));
//         } else {
//           return const SizedBox(
//             height: 20,
//           );
//         }
//       }));


 


//   late String bank;
//   late String accno;
//   late String price;
//   // late size paper;
//   // late String quantity;
//   // late String color;
//   // late String time;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Payment'),
//         ),
//         body: Form(
//             key: _formKey,
//             child: SingleChildScrollView(
//               child: Container(
//                 padding: const EdgeInsets.all(10),
//                 child: Column(children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: SizedBox(
//                       height: 750,
//                       child: GridView.count(
//                         crossAxisCount: 1,
//                         crossAxisSpacing: 5,
//                         mainAxisSpacing: 15,
//                         childAspectRatio: 9,
//                         children: [
//                           TextFormField(
//                             onChanged: ((value) {
//                               bank = value;
//                             }),
//                             decoration: const InputDecoration(hintText: 'Bank Name'),
//                             keyboardType: TextInputType.text,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter bank name';
//                               }
//                               return null;
//                             },
//                           ),
//                           TextFormField(
//                             onChanged: ((value) {
//                               accno = value;
//                             }),
//                             decoration:
//                                 const InputDecoration(hintText: 'Account Number'),
//                             keyboardType: TextInputType.phone,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter account number';
//                               }
//                               return null;
//                             },
//                           ),
//                           TextFormField(
//                             onChanged: ((value) {
//                               price = value;
//                             }),
//                             decoration:
//                                 const InputDecoration(hintText: 'Price'),
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your amount';
//                               }
//                               return null;
//                             },
//                           ),
                       
//                           Container(
//                             margin: const EdgeInsets.all(5),
//                             width: double.infinity,
//                             height: 55,
//                             child: ElevatedButton(
//                               child: const Text('Pay Now'),
//                               onPressed: () async {
//                                 if (_formKey.currentState!.validate()) {
//                                   await paymentdetail.add({
//                                     'Bank Name': bank,
//                                     'Account Number': accno,
//                                     'Price': price]
//                                     //'Size' : _paperSize,
//                                     // 'Quantity': quantity,
//                                     // 'Color' : _color,
//                                     // 'Time' : _time
//                                   }).then((value) => Navigator.pushNamed(
//                                       context, Routes.OrderDetail,
//                                       arguments: PaymentDetails(
//                                           bank: bank,
//                                           accno: accno,
//                                           price: price,
                                         
//                                           )));
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             )));
//   }
// }



// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:pmlsketodietproject/screens/cust/order.dart';

// import '../../router/routers.dart';
// import 'package:file_picker/file_picker.dart';

// // enum size { A1, A2, A3, A4, A5, A6 }

// class Payment extends StatefulWidget {
//   const Payment({Key? key}) : super(key: key);

//   @override
//   State<Payment> createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   final _formKey = GlobalKey<FormState>();
//   int currentPageIndex = 0;
//   // size? _paperSize = size.A1;

//   // dynamic _name = '';
//   // dynamic _phoneNo = '';
//   // dynamic _quantity = '';
//   // dynamic _color = 'Color';
//   // dynamic _time = 'Time';
//   // dynamic _address = '';

//   // void _setName(String name) {
//   //   setState(() {
//   //     _name = name;
//   //   });
//   // }

//   // void _SetPhoneNo(String phoneNo) {
//   //   setState(() {
//   //     _phoneNo = phoneNo;
//   //   });
//   // }

//   // void _setAddress(String address) {
//   //   setState(() {
//   //     _address = address;
//   //   });
//   // }

//   // void _setQuantity(String quantity) {
//   //   setState(() {
//   //     _quantity = quantity;
//   //   });
//   // }

//   // void _setColor(String color) {
//   //   setState(() {
//   //     _color = color;
//   //   });
//   // }

//   // void _setTime(String time) {
//   //   setState(() {
//   //     _time = time;
//   //   });
//   // }

//   CollectionReference orderform =
//       FirebaseFirestore.instance.collection('orderform');

//        Widget buildProgress() => StreamBuilder<TaskSnapshot>(
//       stream: uploadTask?.snapshotEvents,
//       builder: ((context, snapshot) {
//         if (snapshot.hasData) {
//           final data = snapshot.data!;
//           double progress = data.bytesTransferred / data.totalBytes;

//           return SizedBox(
//               height: 50,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   LinearProgressIndicator(
//                     value: progress,
//                     backgroundColor: Colors.grey,
//                     color: Colors.green,
//                   ),
//                   Center(
//                     child: Text(
//                       '${(100 * progress).roundToDouble()}%',
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                   )
//                 ],
//               ));
//         } else {
//           return const SizedBox(
//             height: 20,
//           );
//         }
//       }));

//   // PlatformFile? pickedFile;
//   UploadTask? uploadTask;
//   // File? file;

//   // Future selectFile() async {
//   //   final result = await FilePicker.platform.pickFiles();
//   //   if (result == null) return;
//   //   final path = result.files.first;

//   //   setState(() {
//   //     pickedFile = result.files.first;
//   //   });
//   // }

//   // Future uploadFile() async {
//   //   final path = 'printDino/${pickedFile!.name}';
//   //   final file = File(pickedFile!.path!);

//   //   final ref = FirebaseStorage.instance.ref().child(path);
//   //   setState(() {
//   //     uploadTask = ref.putFile(file);
//   //   });
//   //   final snapshot = await uploadTask!.whenComplete(() {});

//   //   final urlDownload = await snapshot.ref.getDownloadURL();
//   //   print('Donwload link: $urlDownload');

//   //   setState(() {
//   //     uploadTask = null;
//   //   });
//   // }
//   late String bank;
//   late String accno;
//   late String price;
//   // late size paper;
//   // late String quantity;
//   // late String color;
//   // late String time;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Payment Form'),
//         ),
//         body: Form(
//             key: _formKey,
//             child: SingleChildScrollView(
//               child: Container(
//                 padding: const EdgeInsets.all(10),
//                 child: Column(children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: SizedBox(
//                       height: 750,
//                       child: GridView.count(
//                         crossAxisCount: 1,
//                         crossAxisSpacing: 5,
//                         mainAxisSpacing: 15,
//                         childAspectRatio: 9,
//                         children: [
//                           TextFormField(
//                             onChanged: ((value) {
//                               bank = value;
//                             }),
//                             decoration: const InputDecoration(hintText: 'Bank Name'),
//                             keyboardType: TextInputType.text,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter bank name';
//                               }
//                               return null;
//                             },
//                           ),
//                           TextFormField(
//                             onChanged: ((value) {
//                               accno = value;
//                             }),
//                             decoration:
//                                 const InputDecoration(hintText: 'Account Number'),
//                             keyboardType: TextInputType.phone,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter account number';
//                               }
//                               return null;
//                             },
//                           ),
//                           TextFormField(
//                             onChanged: ((value) {
//                               price = value;
//                             }),
//                             decoration:
//                                 const InputDecoration(hintText: 'Price'),
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter amount RM ';
//                               }
//                               return null;
//                             },
//                           ),
                      
//                           Container(
//                             margin: const EdgeInsets.all(5),
//                             width: double.infinity,
//                             height: 55,
//                             child: ElevatedButton(
//                               child: const Text('Order'),
//                               onPressed: () async {
//                                 if (_formKey.currentState!.validate()) {
//                                   await orderform.add({
//                                     'Bank Name': bank,
//                                     'account Number': accno,
//                                     'Price': price,
                                    
//                                   }).then((value) => Navigator.pushNamed(
//                                       context, Routes.OrderDetail,
//                                       arguments: PaymentDetails(
//                                           bank: bank,
//                                           accno: accno,
//                                           price: price,
//                                           )));
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             )));
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:timetable/todo_list.dart';

import 'cust_orderdetail.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// firebase
  final _fireStore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  /// form variable
  late String day;
  late String task;
  late String time;
  late String place;
  late TextEditingController dayTextController;
  late TextEditingController placeTextController;
  late TextEditingController taskTextController;
  late TextEditingController timeTextController;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    dayTextController = TextEditingController();
    placeTextController = TextEditingController();
    taskTextController = TextEditingController();
    timeTextController = TextEditingController();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    dayTextController.dispose();
    placeTextController.dispose();
    taskTextController.dispose();
    timeTextController.dispose();
    super.dispose();
  }

  void logout() {
    _auth.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ADD TODO LIST '),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  // _auth.signOut();
                  // Navigator.pop(context);
                  logout();
                  //   getMessages();
                  //Implement logout functionality
                }),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Add Activity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                  ),
                ),
              ),
              TextField(
                controller: dayTextController,
                onChanged: (value) {
                  day = value;
                },
                decoration: InputDecoration(
                  hintText: 'Day',
                  alignLabelWithHint: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: placeTextController,
                onChanged: (value) {
                  place = value;
                },
                decoration: InputDecoration(
                  hintText: 'Place',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: taskTextController,
                onChanged: (value) {
                  task = value;
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  hintText: 'Task',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: timeTextController,
                onChanged: (value) {
                  time = value;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Time',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  // elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      _fireStore.collection('todo').add({
                        'day': day,
                        'task': task,
                        'place': place,
                        'time': time,
                        'sender': loggedInUser.email,
                        'created': Timestamp.now(),
                      });
                      dayTextController.clear();
                      placeTextController.clear();
                      taskTextController.clear();
                      timeTextController.clear();
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Todo_List',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TodoList()),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}