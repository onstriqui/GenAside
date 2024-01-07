import 'package:flutter/material.dart';
import 'package:genasidefinale/app_bar.dart';
import 'package:genasidefinale/constants.dart';


class contact extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState  extends State<contact> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body:Stack (
        children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgcontact.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: c.screenheight/15),
                Container(
                  child:
                  Center(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        color: c.vert1,
                        fontFamily: 'Inter',
                        fontSize: c.screenwidth /8,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20, top:20),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'UserName'),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20, top:20),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Country'),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: _messageController,
                    decoration: InputDecoration(labelText: 'Message'),
                    maxLines: 5,
                  ),
                ),
                SizedBox(height: 45),
                ElevatedButton(
                  onPressed: () {
                    showthanksDialog(context);
                    print('Name: ${_nameController.text}');
                    print('Message: ${_messageController.text}');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: c.vert,
                    onPrimary: c.vert1,
                    side: BorderSide(color: c.vert, width: 2.0),
                  ).copyWith(
                    minimumSize: MaterialStateProperty.all(
                      Size(c.screenwidth - 40, c.screenheight * 0.05),
                    ),
                  ),
                  child: Text(
                    "Sumbit",
                    style: TextStyle(
                      fontSize: c.screenwidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      bottomNavigationBar: CBottomAppBar(),
    );
  }


  void showthanksDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        constant c = constant(context);
        return AlertDialog(
          content: Container(
              child: Text(
                "Thank you for reaching out!",
                style: TextStyle(fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
            ),
          actions: [
          ],
        );
      },
    );
  }
}
