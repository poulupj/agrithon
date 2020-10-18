import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:agrithon/widget/disease_list.dart';

class searchScreen extends StatefulWidget {
  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  File _image;
  final picker = ImagePicker();

  bool sstate = true;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: [
      Center(
          child: Column(children: [
        _image == null ? Text("No Image") : Image.file(_image),
        RaisedButton(
            color: Colors.red,
            child: Text('Insert'),
            onPressed: () {
              getImage();
            }),
        RaisedButton(
            color: Colors.blue,
            child: Text('Search'),
            onPressed: () {
              setState(() {
                sstate = false;
              });
            })
      ])),
          sstate == true ?  null: disease_list(),
    ]));
  }
}
