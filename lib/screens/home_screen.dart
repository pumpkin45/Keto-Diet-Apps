import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmlsketodietproject/reusable_widgets/reusable_widget.dart';
import 'package:pmlsketodietproject/screens/cust/cust_recipes.dart';
import 'package:pmlsketodietproject/screens/cust/cust_whatsketo.dart';
import 'package:pmlsketodietproject/screens/signin_screen.dart';

// import '../reusable_widgets/bottom_navbar.dart';
import '../reusable_widgets/bottom_navbar.dart';
import 'cust/RecipeMode.dart';
import 'cust/cust_buyEbook.dart';
import 'cust/cust_packages.dart';
import 'cust/cust_downloadEbook.dart';
import 'cust/cust_tips.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const BuyEbook(),
  ];

  void _selectedPage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange,
        elevation: 0,

        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Icon(Icons.logout_rounded),
              )),
        ],
        //
      ),
      // bottomNavigationBar: const BottomBarScreen(),
        

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WhatsKeto()),
              );
            },
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "What is Keto?",
                        style: GoogleFonts.cinzel(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        // TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 35,
                        //     fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 110,
                      ),
                    ],
                  )),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          // text recipes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Easy Recipes",
                // textAlign: TextAlign.end,
                style: GoogleFonts.cinzel(
                    color: Colors.grey[900],
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
                // TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 20,
                // ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          //=======================================================

          Container(
              height: 180,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 1.0, top: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RecipesPage1()),
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/chickenstew.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'MEAT',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecipesPage2()),
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 160,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/brocolli.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'Vegetable',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecipesPage3()),
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 160,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/desserts.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'Dessert',
                          style: GoogleFonts.cinzel(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ],
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tips & Tricks",
                style: GoogleFonts.cinzel(
                    color: Colors.grey[900],
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
                // TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 20,
                // ),
              ),
            ],
          ),
          // text tips
          const SizedBox(
            height: 15,
          ),
          Container(
              height: 230,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tips1()),
                          );
                        },
                        child: const Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/tip1.jpg'),
                            ),
                            title: Text('Track Your Macronutrients'),
                            subtitle: Text('Understanding macronutrients.'),
                            // trailing: Icon(Icons.arrow_circle_right_outlined),
                            // isThreeLine: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tips2()),
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/tip2.jpg'),
                            ),
                            title: Text('Eat Only When Hungry'),
                            subtitle:
                                Text('Only eat food if you are truly hungry.'),
                            // trailing: Icon(Icons.arrow_circle_right_outlined),
                            // isThreeLine: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tips3()),
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/tip3.jpg'),
                            ),
                            title: Text('Plan Your Meals'),
                            subtitle: Text('Stick to a routine.'),
                            // trailing: Icon(Icons.arrow_circle_right_outlined),
                            // isThreeLine: true,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                    ],
                  ),
                ],
              )),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25),
          //   // child: GestureDetector(
          //   // onTap: signIn,
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => SignInScreen()),
          //       );
          //     },
          //     child: Container(
          //       padding: const EdgeInsets.all(20),
          //       decoration: BoxDecoration(
          //         color: Colors.deepOrange,
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       child: const Center(
          //           child: Text(
          //         'Get Premium',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 18,
          //         ),
          //       )),
          //     ),
          //   ),

          //   // ),
          // ),
        ]),
        
      ),
      
       
    );
  }
}
