import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Dragon Ball App',
        theme: ThemeData(
          fontFamily: 'BebasNeue',
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
