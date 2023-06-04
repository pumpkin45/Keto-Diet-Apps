import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecipesPage1 extends StatelessWidget {
  const RecipesPage1({super.key});

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
                'YELLOW CURRY NOODLES WITH TOFU SHIRATAKI',
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
                'March 17, 2023',
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
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "198",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.timer,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '15 mins',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4 Servings',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              Text(
                'INGREDIENTS',
                style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Shrimp:',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
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
                        image: AssetImage('assets/images/chickenstew.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   top: 40,
              //   right: 20,
              //   child: Icon(
              //     Icons.bookmark_outline,
              //     color: Colors.white,
              //     size: 38,
              //   ),
              // ),
              // Positioned(
              //   top: 40,
              //   left: 20,
              //   child: InkWell(
              //     onTap: () => Navigator.pop(context),
              //     child: Icon(
              //       Icons.arrow_circle_left_outlined,
              //       color: Colors.white,
              //       size: 38,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RecipesPage2 extends StatelessWidget {
  const RecipesPage2({super.key});

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
                'CAULIFLOWER HASH BROWNS',
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
                'June 02, 2023',
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
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "198",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.timer,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '15 mins',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4 Servings',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              Text(
                'INGREDIENTS',
                style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''8 oz. (225g) cauliflower\n1 egg\n¼ onion\n1 clove fresh garlic\nSalt and pepper to taste\nButter for frying\nParmesan cheese (optional)\nChives or spring onion (optional)''',
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
                'INSTRUCTION',
                style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''1. Cut the cauliflower into chunks and blitz them in a food processor until fine.\n2. Chop onion and garlic. Combine with cauliflower and egg in a bowl. Add salt and pepper to taste. Set aside for 5 minutes.\n3. Heat up butter in a pan on medium heat.\n4. Divide the cauliflower mixture into 2 equal parts. Fry the first half in the pan. Press down to flatten it to about ¼-inch thick and fry for 3-5 minutes.\n5. When the edges start to brown, flip the hash over and fry the other side for the same amount of time. The hash should be lightly brown, watch that you don’t burn it.\n6. Top with grated parmesan cheese, chives or chopped spring onion, if desired.\n7. If a hearty breakfast makes you a happy camper, serve with slabs of meat or poached eggs.''',
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
                    tag: 'vege',
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/hashbrowns.jpg'),
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

class RecipesPage3 extends StatelessWidget {
  const RecipesPage3({super.key});

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
                'CHOCOLATE ICE CREAM',
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
                'January 10, 2023',
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
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "86",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.timer,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '15 mins',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '2 Servings',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              Text(
                'INGREDIENTS',
                style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
            
              Text(
                '''5.3 oz (150 g)\n85% or 90% dark chocolate you can get from @skinny.chocolate.malaysia, broken into pieces\n1.8 oz (50 g) cocoa butter\n4 large eggs, separated\n¼ teaspoon cream of tartar\n½ cup powdered Erythritol (from Ketomall Asia)\n1 tablespoon sugar-free vanilla extract (15 ml)\n1 ¼ cups heavy whipping cream, or coconut cream (300 ml/ 10.1 fl oz)''',
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
                'INSTRUCTION',
                style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''Melt the chocolate and cocoa butter in a double boiler\nUsing an electric mixer, beat the egg whites and cream of tartar.\nIn another bowl, whisk the cream until soft peaks form when the whisk is removed.\nIn a third bowl, mix the egg yolks with the vanilla extract.\nWhen the chocolate has cooled down to room temperature,add about a third of the fluffy egg whites and mix with the chocolate.\nSlowly stir in the egg yolk and vanilla mixture and fold in the whipped cream using the spatula, creating fluffy chocolate mousse.\nFreeze for at least 4-6 hours, or until set.''',
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
                    tag: 'dessert',
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/icecream.jpg'),
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
