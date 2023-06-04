// import 'package:flutter/material.dart';
// import 'package:pmlsketodietproject/screens/cust/order.dart';
// import '../../router/routers.dart';

// class OrderDetail extends StatefulWidget {
//   const OrderDetail ({Key? key}) : super(key: key);

//   @override
//   State<OrderDetail > createState() => _OrderDetailState();
// }

// class _OrderDetailState extends State<OrderDetail > {


//   @override
//   Widget build(BuildContext context) {
//    PaymentDetails order = ModalRoute.of(context)!.settings.arguments as PaymentDetails;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Details Confirmation'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.all(15),
//               alignment: Alignment.centerLeft,
//               child: Text('Bank Name  : ${order.bank}'),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               margin: const EdgeInsets.all(15),
//               child: Text('Account Number  : ${order.accno}'), //error
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               margin: const EdgeInsets.all(15),
//               child: Text('Price : ${order.price}'),
//             ),
           
            
            
           
//             Container(
//                 margin: const EdgeInsets.all(20),
//                 width: double.infinity,
//                 height: 55,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Edit'),
//                 )),

//                   ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                             minimumSize: const Size(100, 50),
//                                             primary: Colors.green,),
//                                         onPressed: () {
//                                           Navigator.pushNamed(
//                                               context, Routes.DownloadEbook);
//                                         },
//                                         child: const Text('Please wait verification purpose')),



//================================
            //     Container(
            //   margin: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            //   width: double.infinity,
            //   height: 55,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       showDialog(
            //           context: context,
            //           builder: (context) => AlertDialog(
            //                 shape: const RoundedRectangleBorder(
            //                     borderRadius:
            //                         BorderRadius.all(Radius.circular(15))),
            //                 title: const Text('Choose your payment',
            //                     textAlign: TextAlign.center),
            //                 actions: [
            //                   Container(
            //                     width: double.infinity,
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         ElevatedButton(
            //                             style: ElevatedButton.styleFrom(
            //                                 minimumSize: const Size(100, 50),
            //                                 primary: Colors.orange),
            //                             onPressed: () {
            //                               Navigator.pushNamed(
            //                                   context, Routes.codOption);
            //                             },
            //                             child: const Text('COD')),
            //                         const SizedBox(
            //                           height: 10,
            //                         ),
            //                         ElevatedButton(
            //                             style: ElevatedButton.styleFrom(
            //                                 minimumSize: const Size(100, 50),
            //                                 primary: Colors.green,),
            //                             onPressed: () {
            //                               Navigator.pushNamed(
            //                                   context, Routes.transferOption);
            //                             },
            //                             child: const Text('Online Transfer')),
            //                             const SizedBox(
            //                           height: 20,
            //                         ),
            //                       ],
            //                     ),
            //                   )
            //                 ],
            //               ));
            //     },
            //     child: const Text('Proceed to Payment'),
            //   ),
            // )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final _fireStore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            ///
            stream: _fireStore
                .collection('todo')
                .orderBy('created', descending: false)
                .snapshots(),

            ///flutter aysnc snapshot
            builder: (context, snapshot) {
              List<MessageBubble> todoWidgets = [];
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                );
              }
              final todoLists = snapshot.data!.docs;

              for (var todoList in todoLists) {
                final day = (todoList.data() as dynamic)['day'];

                final place = (todoList.data() as dynamic)['place'];

                final task = (todoList.data() as dynamic)['task'];

                final time = (todoList.data() as dynamic)['time'];

                final loggedIn = (todoList.data() as dynamic)['sender'];

                final currentUser = loggedInUser.email;
                print('Current user $currentUser');
                print('logged user $loggedIn');

                final messageWidget = MessageBubble(
                  day: '$day',
                  isLoggedIn: currentUser == loggedIn,
                  place: '$place',
                  task: '$task',
                  time: '$time',
                );

                todoWidgets.add(messageWidget);
              }

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(children: todoWidgets),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble(
      {required this.isLoggedIn,
      required this.day,
      required this.task,
      required this.time,
      required this.place});
  final String day;
  final String task;
  final String time;
  final String place;
  final bool isLoggedIn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('$task',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30.0, color: Colors.black)),
            ],
          ),
          Material(
              elevation: 5.0,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$day',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$place',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$time',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }


}