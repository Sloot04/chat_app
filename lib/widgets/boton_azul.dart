import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final dynamic onPressed;

  const BotonAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: this.onPressed == null
          ? ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(StadiumBorder()),
              backgroundColor: MaterialStateProperty.all(Colors.grey),
              mouseCursor: MaterialStateProperty.all(MouseCursor.defer))
          : ButtonStyle(
              elevation: MaterialStateProperty.all(2),
              shape: MaterialStateProperty.all(StadiumBorder()),
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(this.text,
              style: TextStyle(color: Colors.white, fontSize: 17)),
        ),
      ),
    );
  }
}
