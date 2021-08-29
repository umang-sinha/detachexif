import 'package:flutter/material.dart';

import '../createMaterialColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'detachEXIF',
          style: TextStyle(
            color: createMaterialColor(Color(0xFFFDC591)),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Button',
              style: TextStyle(
                color: createMaterialColor(Color(0xFF000000)),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: createMaterialColor(Color(0xFFFDC591)),
            ),
          ),
        ],
      ),
    );
  }
}
