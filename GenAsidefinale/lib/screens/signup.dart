import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/screens/landingpage.dart';
import 'package:genasidefinale/screens/login.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Container(
        decoration:
        BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bglog.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => landingpage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: c.screenheight / 12, left: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/arrow.png'),
                        Text(
                          'Back',
                          style: TextStyle(
                            color: c.vert1,
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                )

            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/10 ),
              child:
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: c.vert1,
                    fontFamily: 'Inter',
                    fontSize: c.screenwidth / 5,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/25 ),
              child: Container(
                width: c.screenwidth - 40,
                height: c.screenheight * 0.07 ,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username or Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.person_4,
                      color: c.rouge,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: c.rouge,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/30 ),
              child: Container(
                width: c.screenwidth - 40,
                height: c.screenheight * 0.07 ,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: c.rouge,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: c.rouge,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/30 ),
              child: Container(
                width: c.screenwidth - 40,
                height: c.screenheight * 0.07 ,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: c.rouge,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: c.rouge,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/12 ),
              child: GestureDetector(
                onTap: () {
                  // Add your login button logic here
                  print("Login button tapped");
                },
                child: Container(
                  width: c.screenwidth-40,
                  height: c.screenheight * 0.05 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: c.rouge,
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: c.screenheight/7),
              child: GestureDetector(
                onTap: () {
                  // Add your forget password logic here
                  print("Forget Password tapped");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account ?",
                      style: TextStyle(
                        color: c.vert1,
                        fontFamily: 'Inter',
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                      child: Text(
                        "  Log In",
                        style: TextStyle(
                          fontSize: c.screenheight * 0.02,
                          fontWeight: FontWeight.w800,
                          color: c.vert1,
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
