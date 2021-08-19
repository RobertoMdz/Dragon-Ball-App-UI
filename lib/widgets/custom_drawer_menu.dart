import 'package:flutter/material.dart';

class CustomDrawerMenu extends StatelessWidget {
  const CustomDrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 78, bottom: 78),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            width: 155,
            height: 50,
            image: AssetImage('assets/logo.png'),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.purple,
              child: Image(
                width: 40,
                height: 40,
                image: AssetImage('assets/avatar.png'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          _buildListTile('INICIO'),
          _buildListTile('PERSONAJES'),
          _buildListTile('HABILIDADES'),
          _buildListTile('TV'),
          _buildListTile('CAPITULOS'),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'SALIR',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTile(String title) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      horizontalTitleGap: 0,
      leading: const Icon(
        Icons.stars_rounded,
        color: Color.fromRGBO(196, 151, 19, 1),
        size: 30,
      ),
      title: Text(title),
    );
  }
}
