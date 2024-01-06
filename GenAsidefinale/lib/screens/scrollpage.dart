import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/app_bar.dart';
import 'package:genasidefinale/screens/brand.dart';


class ImageBox extends StatefulWidget {
  final String imagePath; // Path to the image file
  const ImageBox({Key? key, required this.imagePath}) : super(key: key);

  @override
  _ImageBoxState createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  bool isWatermelonIcon = false;


  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return GestureDetector(
      onTap: () {
        // Handle logo click
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => brand()),
        );
      },
      child: Card(
      margin: EdgeInsets.all(10.0), // Adjust margin as needed
      elevation: 4.0, // Adjust elevation as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            widget.imagePath,
            fit: BoxFit.fill,
            width: c.screenwidth,// Adjust height as needed
          ),

          SizedBox(height: 8.0), // Add some space between the image and text
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Align items in the center
            children: [
              SizedBox(width: 8.0),
              IconButton(
                icon: Image.asset(
                  isWatermelonIcon
                      ? 'assets/watermelon.png'
                      : 'assets/Gwatermelon.png',
                  width: 49.0,
                  height: 51.0,
                ),
                onPressed: () {
                  setState(() {
                    isWatermelonIcon = !isWatermelonIcon;
                  });
                },
              ), // Adjust width as needed
              SizedBox(width: 8.0), // Add some space between text and logo
              Text(
                '10K have Boycotted this Brand', // Replace with dynamic image description
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}


//----------------------------------------------------------------------------------------------

class scrollpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body:
          ListView(
            children: [
              ImageBox(imagePath: 'assets/carrefour.png'),
              ImageBox(imagePath: 'assets/cocacola.png'),
              ImageBox(imagePath: 'assets/puma.png'),
              ImageBox(imagePath: 'assets/mcdonalds.png'),
              // Add more ImageBox widgets with different image paths as needed
            ],
          ),
      bottomNavigationBar: CBottomAppBar(),
    );
  }
}
