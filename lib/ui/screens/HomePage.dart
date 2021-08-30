import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../createMaterialColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  XFile? _image;

  Future getImageFromGallery() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      this._image = image;
    });
  }

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: _image == null
                  ? Center(
                      child: Text(
                        'No Image has been selected',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: createMaterialColor(Color(0xFFFDC591)),
                        ),
                      ),
                    )
                  : Container(child: Image.file(File(_image!.path))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: getImageFromGallery,
                child: Text(
                  'Pick an image',
                  style: TextStyle(
                    color: createMaterialColor(Color(0xFF000000)),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: createMaterialColor(Color(0xFFFDC591)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'detachEXIF!',
                  style: TextStyle(
                    color: createMaterialColor(Color(0xFF000000)),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: createMaterialColor(Color(0xFFFDC591)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
