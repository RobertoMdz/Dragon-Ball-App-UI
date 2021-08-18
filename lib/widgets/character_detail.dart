import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  const CharacterDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Align(
              child: Image(
                width: 270,
                height: 270,
                image: AssetImage('assets/goku.png'),
              ),
            ),
            Text(
              'SAIYAJIN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.orange,
              ),
            ),
            Text(
              'GOKU',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Some character description, this text is only for purposes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
