import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmlsketodietproject/screens/cust/cust_orderform.dart';

class BuyEbook extends StatefulWidget {
  const BuyEbook({super.key});

  @override
  State<BuyEbook> createState() => _BuyEbookState();
}

class _BuyEbookState extends State<BuyEbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: SingleChildScrollView(
        // child: Column(
         child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
             
               Container(
                margin: const EdgeInsets.all(5),
                 child: Image.asset('assets/images/dlebook.jpg',
                 height: 350,
                 width: 250,
                 ),
               ),
      
                Container(
                padding: EdgeInsets.all(18),
                child:    Text(
                    '''The simple, friendly way to start the ketogenic diet and lifestyle AN EASY START TO KETO FOR BEGINNERS: Starting to work keto into your life can be overwhelming―so much to learn, so many resources to choose from. The Complete Ketogenic Diet for Beginners makes it easy to start, and stick with, the ketogenic diet''',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                  ),
                  
              ),
      
          
              Row(
                children: <Widget>[
                  // Icon(
                  //   Icons.favorite_border,
                  //   color: Color(0xFF5e5e5e),
                  // ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                    },
                   child: Container(
                        width: 340,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.deepOrange,
                        ),
                        child: const Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),)),
                      ),
                  )
                ],
              ),
      
            
            ],
          ),
        ), 
        // ),
      ),
    );
  }
}
