import 'package:flutter/material.dart';

class constant {
  BuildContext context; // Declare a variable to store the context
  Color vert = Color.fromRGBO(84, 115, 84, 0.57);
  Color vert1 = Color.fromRGBO(84, 115, 84, 1);
  Color beige = Color.fromRGBO(206, 195, 133, 0.7);
  Color beige1 = Color.fromRGBO(206, 195, 133, 1);
  Color rouge = Color.fromRGBO(165, 43, 42, 1);

  double screenwidth;
  double screenheight;
  double centerPositionw;
  double centerPositionh;

  constant(this.context)
      : screenwidth = MediaQuery.of(context).size.width,
        screenheight = MediaQuery.of(context).size.height,
        centerPositionw = MediaQuery.of(context).size.width / 2,
        centerPositionh = MediaQuery.of(context).size.height / 2;
}
