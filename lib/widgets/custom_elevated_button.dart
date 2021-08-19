import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomElevatedButton({Key key, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 45),
            primary: const Color.fromRGBO(196, 151, 19, 1)),
        onPressed: () => onPressed(),
        child: const Text(
          'VER MAS',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
