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
        child: Column(children: [
      Center(
          child: Column(children: [
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey[100]
                //border: Border.all(color: Colors.grey[250],width: 1.0)

                ),
            height: 150.0,
            width: 150.0,
            child: _image == null ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.image,
                        size: 100.0,
                      ),
                      Text(
                        "No Image",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                : Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.file(
                      _image,
                      fit: BoxFit.cover,
                    ),
                ),),
          Container(
            width: 200.0,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  color: Colors.red,
                  child: Text('Insert'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 6.0,
                  onPressed: () {
                    getImage();
                  }),
              RaisedButton(
                  color: Colors.blue,
                  child: Text('Search'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 6.0,
                  onPressed: () {
                    setState(() {
                      sstate = false;
                      print("pressed");
                    });
                  })
            ],
        ),
          ),
      ])),
      sstate == true
          ? Container(
              color: Colors.red,
        child: Text("asas"),
            )
          : Container(
              color: Colors.blue,
        child: Text("data"),
            ),
    ]));
  }
}
