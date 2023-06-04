import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

class WhatsKeto extends StatelessWidget {
  const WhatsKeto({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: SingleChildScrollView(
        
             
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top:10, right: 25, bottom:20),
            child: Column(
              //  padding: const EdgeInsets.all(16.0),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 5,
                    width: 40,
                    // decoration: BoxDecoration(
                    //   color: Colors.black.withOpacity(0.3),
                    //   borderRadius: BorderRadius.circular(12),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'What’s a Ketogenic Diet?',
                  style: GoogleFonts.cinzel(
                      color: Colors.grey[600],
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                ),
             
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),
                ),
                SizedBox(
                  height: 8,
                ),

                 Text(
                  'What Is It?',
                  style: GoogleFonts.cinzel(
                      color: Colors.grey[600],
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                ),
             
                SizedBox(
                  height: 10,
                ),
                Text(
                  '“Ketogenic” is a term for a low-carb diet (like the Atkins diet). The idea is for you to get more calories from protein and fat and less from carbohydrates. You cut back most on the carbs that are easy to digest, like sugar, soda, pastries, and white bread.',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 12,
                ),

    
                 Text(
                  'How It Works',
                  style: GoogleFonts.cinzel(
                      color: Colors.grey[600],
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                ),
             
                SizedBox(
                  height: 10,
                ),
                Text(
                  '''When you eat less than 50 grams of carbs a day, your body eventually runs out of fuel (blood sugar) it can use quickly. This typically takes 3 to 4 days. Then you’ll start to break down protein and fat for energy, which can make you lose weight. This is called ketosis. It's important to note that the ketogenic diet is a short term diet that's focussed on weight loss rather than the pursuit of health benefits.''',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 12,
                ),

                 Text(
                  'Weight Loss',
                  style: GoogleFonts.cinzel(
                      color: Colors.grey[600],
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                ),
             
                SizedBox(
                  height: 10,
                ),
                Text(
                  '''A ketogenic diet may help you lose more weight in the first 3 to 6 months than some other diets. This may be because it takes more calories to change fat into energy than it does to change carbs into energy. It’s also possible that a high-fat, high-protein diet satisfies you more, so you eat less, but that hasn’t been proved yet.''',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 8,
                ),
              
              
              ],
            ),
          ),
        ),
          );
        // );
      // SlidingUpPanel(
      //   parallaxEnabled: true,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(24),
      //     topRight: Radius.circular(24),
      //   ),
      //   padding: EdgeInsets.symmetric(
      //     horizontal: 12,
      //   ),
      //   minHeight: (size.height / 2),
      //   maxHeight: size.height / 1.2,
        // panel: Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Center(
        //         child: Container(
        //           height: 5,
        //           width: 40,
        //           decoration: BoxDecoration(
        //             color: Colors.black.withOpacity(0.3),
        //             borderRadius: BorderRadius.circular(12),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Text(
        //         'What’s a Ketogenic Diet?',
        //         style: GoogleFonts.sourceSansPro(
        //             color: Colors.grey[600],
        //             fontSize: 28,
        //             fontWeight: FontWeight.bold),
        //             textAlign: TextAlign.center,
        //       ),
           
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Divider(
        //         color: Colors.black.withOpacity(0.3),
        //       ),
        //       SizedBox(
        //         height: 8,
        //       ),

        //        Text(
        //         'What Is It?',
        //         style: GoogleFonts.sourceSansPro(
        //             color: Colors.grey[600],
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold),
        //             textAlign: TextAlign.center,
        //       ),
           
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Text(
        //         '“Ketogenic” is a term for a low-carb diet (like the Atkins diet). The idea is for you to get more calories from protein and fat and less from carbohydrates. You cut back most on the carbs that are easy to digest, like sugar, soda, pastries, and white bread.',
        //         style: GoogleFonts.montserrat(
        //             color: Colors.black,
        //             fontSize: 16,
        //             fontWeight: FontWeight.normal),
        //         textAlign: TextAlign.justify,
        //       ),
        //       SizedBox(
        //         height: 8,
        //       ),

      

        //        Text(
        //         'How It Works',
        //         style: GoogleFonts.sourceSansPro(
        //             color: Colors.grey[600],
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold),
        //             textAlign: TextAlign.center,
        //       ),
           
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Text(
        //         '''When you eat less than 50 grams of carbs a day, your body eventually runs out of fuel (blood sugar) it can use quickly. This typically takes 3 to 4 days. Then you’ll start to break down protein and fat for energy, which can make you lose weight. This is called ketosis. It's important to note that the ketogenic diet is a short term diet that's focussed on weight loss rather than the pursuit of health benefits.''',
        //         style: GoogleFonts.montserrat(
        //             color: Colors.black,
        //             fontSize: 16,
        //             fontWeight: FontWeight.normal),
        //         textAlign: TextAlign.justify,
        //       ),
        //       SizedBox(
        //         height: 8,
        //       ),

        //        Text(
        //         'Weight Loss',
        //         style: GoogleFonts.sourceSansPro(
        //             color: Colors.grey[600],
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold),
        //             textAlign: TextAlign.center,
        //       ),
           
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Text(
        //         '''A ketogenic diet may help you lose more weight in the first 3 to 6 months than some other diets. This may be because it takes more calories to change fat into energy than it does to change carbs into energy. It’s also possible that a high-fat, high-protein diet satisfies you more, so you eat less, but that hasn’t been proved yet.''',
        //         style: GoogleFonts.montserrat(
        //             color: Colors.black,
        //             fontSize: 16,
        //             fontWeight: FontWeight.normal),
        //         textAlign: TextAlign.justify,
        //       ),
        //       SizedBox(
        //         height: 8,
        //       ),
            
            
        //     ],
        //   ),
        // ),
        // body: SingleChildScrollView(
        //   child: Stack(
        //     children: [
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: <Widget>[
        //           Hero(
        //             // tag: recipeModel.imgPath,
        //             tag: 'Meat',
        //             child: ClipRRect(
        //               child: Image(
        //                 width: double.infinity,
        //                 height: (size.height / 2) + 50,
        //                 fit: BoxFit.cover,
        //                 image: AssetImage('assets/images/chickenstew.jpg'),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       // Positioned(
        //       //   top: 40,
        //       //   right: 20,
        //       //   child: Icon(
        //       //     Icons.bookmark_outline,
        //       //     color: Colors.white,
        //       //     size: 38,
        //       //   ),
        //       // ),
        //       // Positioned(
        //       //   top: 40,
        //       //   left: 20,
        //       //   child: InkWell(
        //       //     onTap: () => Navigator.pop(context),
        //       //     child: Icon(
        //       //       Icons.arrow_circle_left_outlined,
        //       //       color: Colors.white,
        //       //       size: 38,
        //       //     ),
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
    //   ),
    //   // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}