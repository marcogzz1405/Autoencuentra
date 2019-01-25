import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Color(0xFF202123),
            Color(0xFF1A237E)
          ],
          begin: const FractionalOffset(1.0, 0.1),
          end: const FractionalOffset(1.0, 0.9)
        )
      ),
    );
  }

}