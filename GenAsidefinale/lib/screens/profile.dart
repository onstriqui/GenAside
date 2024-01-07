import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/app_bar.dart';
import 'package:genasidefinale/screens/landingpage.dart';
import 'package:genasidefinale/screens/login.dart';
import 'package:genasidefinale/screens/scrollpage.dart';

class profile extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

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
          ),
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
                        hintText: 'Username',
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
                ),
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
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child:
                  Container(
                    margin: EdgeInsets.only(top: c.screenheight/75, left: 22 ),
                    child: const Text(
                      'Country',
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
                        hintText: 'Country',
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
                ),
              ],
            ),
          ),
        ],
      ),//stack
      bottomNavigationBar: CBottomAppBar(),
    );
  }
}
