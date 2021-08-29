import 'package:flutter/material.dart';

import 'ui/createMaterialColor.dart';
import 'ui/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXIF Remover',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: createMaterialColor(Color(0xFF212121)),
        primarySwatch: createMaterialColor(Color(0xFF212121)),
      ),
      home: HomePage(),
    );
  }
}
