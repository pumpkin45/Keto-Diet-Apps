import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

  
  Image logoWidget(String imageName){
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 240,
      height: 240,
      color: Colors.white,
    );
  }

  TextField reusableTextField(String text, IconData icon, bool isPasswordType,
  TextEditingController controller){
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon:Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),

      keyboardType: isPasswordType?
      TextInputType.visiblePassword: TextInputType.emailAddress,
    );
  }

  Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
        child: ElevatedButton(
          onPressed: (){
            onTap();
          },
          child: Text(
            isLogin?'LOG IN':'SIGN UP',
            style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states)
            {
              if(states.contains(MaterialState.pressed))
              {
                return Colors.black26;
              }
              return Colors.white;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
            )
          ),
        ),
      );
    }


   class RecipesCard extends StatelessWidget {
    final recipespic;

    const RecipesCard({
      this.recipespic,
    });
     @override
     Widget build(BuildContext context) {
       return   Container(
              // height: 180,
              // width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(recipespic),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [
                          Colors.black.withOpacity(.1),
                          Colors.black.withOpacity(.4)
                        ])),
              ),
            );
      //  Padding(
      //   padding: const EdgeInsets.only(left: .0),
      //   child: 
        
        // Container(
        //   padding: const EdgeInsets.all(0),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
          // Container(
          //   decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(50),
          // ),
          //   child: Row(
          //     children: [
          //       Image.asset(
          //         recipespic,
          //         height: 130,
          //       ),
          //      Container(
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(100),
          //             gradient: LinearGradient(begin: Alignment.topRight, colors: [
          //               Colors.black.withOpacity(.1),
          //               Colors.black.withOpacity(.4)
          //             ])),
                  
          //       ),
          //       const SizedBox(
          //         width: 20,
          //       ),
          //     ],
          //   ),
          // );
        // );
      //  );
     }
   }
class MenuCustomer extends StatefulWidget {
  final menuCustomer;

    const MenuCustomer({
      this.menuCustomer,
    });

  @override
  State<MenuCustomer> createState() => _MenuCustomerState();
}

class _MenuCustomerState extends State<MenuCustomer> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: Container(
        color: Colors.black,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            // tabBackgroundColor: Colors.grey.shade800,
            // onTabChange: (),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.message_outlined,
                text: 'Message',
              ),
              GButton(
                icon: Icons.info_outline,
                text: 'About',
              ),
            ],
          ),
        ),
      )
    );
  }
}
 