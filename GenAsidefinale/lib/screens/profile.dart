import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/app_bar.dart';
import 'package:genasidefinale/screens/landingpage.dart';
import 'package:genasidefinale/screens/login.dart';
import 'package:genasidefinale/screens/scrollpage.dart';

class profile extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  late String email;


  profile() {
    final User? user = FirebaseAuth.instance.currentUser;
    email = user?.email ?? "Username";
  }

  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            width: c.screenwidth,
            height: c.screenheight/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/profbg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),//profile bg
          Container(
              width: c.screenwidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profilepage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),//profile white layer
          Positioned(
            top: c.screenheight/4.5,
            left: c.screenwidth/2 -80,
            child: GestureDetector(
              onTap: () {
                // Handle the click action here
                print('Avatar clicked!');
              },
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
          ),// houni l code bch yetbadel de telle sorte melouel tethatech taswira yaani gris w ki tenszel aleha ijik changer la photo
          Container(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                  child:
                  Container(
                    margin: EdgeInsets.only(top: c.screenheight/2.3, left: 22 ),
                      child: const Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.bold,),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(top: c.screenheight/120 ),
                  child: Container(
                    width: c.screenwidth - 40,
                    height: c.screenheight * 0.05 ,
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: email,
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: c.rouge, // Adjust the color as needed
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.red, // Adjust the color as needed
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),// hedha bch yethat fih l username ml bd
                Align(
                  alignment: Alignment.topLeft,
                  child:
                  Container(
                    margin: EdgeInsets.only(top: c.screenheight/75, left: 22 ),
                    child: const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: c.screenheight/120 ),
                  child: Container(
                    width: c.screenwidth - 40,
                    height: c.screenheight * 0.05 ,
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: '**********',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: c.rouge, // Adjust the color as needed
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.red, // Adjust the color as needed
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),// hedha bch yethat fih l mdp ml bd

              ],
            ),
          ),
        ],
      ),//stack
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Perform the logout action here
          await FirebaseAuth.instance.signOut();
          // Redirect to the login screen or any other screen after logout
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => landingpage()),
          );
        },
        child: Icon(Icons.exit_to_app),
        backgroundColor: c.rouge,
      ),

      bottomNavigationBar: CBottomAppBar(),
    );
  }
}
