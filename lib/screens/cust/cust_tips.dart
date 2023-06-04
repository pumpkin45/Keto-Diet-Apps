import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class Tips1 extends StatelessWidget {
  const Tips1({super.key});

  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        minHeight: (size.height / 2),
        maxHeight: size.height / 1.2,
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'TRACK YOUR MACRONUTRIENTS',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'by Layla Othman',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "93",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '49',
                  ),
                ],
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
                '''1 pound (450g) large shrimp (21/25 count) peeled and deveined,\n1 tablespoon olive oil,\nPinch of salt''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Noodle Soup:',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''1 pack of Shirataki Oat Fibre Fettuccine\n2 stalks of lemongrass\n1 tablespoon vegetable or olive oil\n1 tablespoon minced ginger (from about a 1-inch piece)\n4 garlic cloves, minced\n2 teaspoons curry powder (mild spice)\n5 cups (about 1.2 liters) vegetable broth\n3/4 cup (175ml) full-fat coconut milk (can sub with low-fat coconut milk)\n1/2 teaspoon salt, add more if necessary\n2 medium zucchini, spiralized\n2 large carrots, peeled and julienned''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    // tag: recipeModel.imgPath,
                    tag: 'Meat',
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/tip1.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Tips2 extends StatelessWidget {
  const Tips2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        minHeight: (size.height / 2),
        maxHeight: size.height / 1.2,
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'EAT ONLY WHEN HUNGRY',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'by Layla Othman',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "101",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '77',
                  ),
                ],
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
                '''1 pound (450g) large shrimp (21/25 count) peeled and deveined,\n1 tablespoon olive oil,\nPinch of salt''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Noodle Soup:',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''1 pack of Shirataki Oat Fibre Fettuccine\n2 stalks of lemongrass\n1 tablespoon vegetable or olive oil\n1 tablespoon minced ginger (from about a 1-inch piece)\n4 garlic cloves, minced\n2 teaspoons curry powder (mild spice)\n5 cups (about 1.2 liters) vegetable broth\n3/4 cup (175ml) full-fat coconut milk (can sub with low-fat coconut milk)\n1/2 teaspoon salt, add more if necessary\n2 medium zucchini, spiralized\n2 large carrots, peeled and julienned''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    // tag: recipeModel.imgPath,
                    tag: 'Meat',
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/tip2.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Tips3 extends StatelessWidget {
  const Tips3({super.key});

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        minHeight: (size.height / 2),
        maxHeight: size.height / 1.2,
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PLAN YOUR MEAL',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'by Layla Othman',
                style: GoogleFonts.cinzel(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "123",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '58',
                  ),
                ],
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
                '''1 pound (450g) large shrimp (21/25 count) peeled and deveined,\n1 tablespoon olive oil,\nPinch of salt''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Noodle Soup:',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''1 pack of Shirataki Oat Fibre Fettuccine\n2 stalks of lemongrass\n1 tablespoon vegetable or olive oil\n1 tablespoon minced ginger (from about a 1-inch piece)\n4 garlic cloves, minced\n2 teaspoons curry powder (mild spice)\n5 cups (about 1.2 liters) vegetable broth\n3/4 cup (175ml) full-fat coconut milk (can sub with low-fat coconut milk)\n1/2 teaspoon salt, add more if necessary\n2 medium zucchini, spiralized\n2 large carrots, peeled and julienned''',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    // tag: recipeModel.imgPath,
                    tag: 'tip3',
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/tip3.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}