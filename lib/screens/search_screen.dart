import 'dart:convert';
import 'dart:io';
import 'dart:convert';
import 'package:agrithon/widget/loading.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:agrithon/model/Disease.dart';

import 'package:agrithon/widget/disease_tile.dart';

import 'package:image_picker/image_picker.dart';

import 'package:agrithon/widget/disease_list.dart';

class searchScreen extends StatefulWidget {
  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  File _image;
  bool rstate=true;
  Disease result;
  String endPoint="http://192.168.43.19:5000/search";
  uploadH() async {
    final api = Uri.parse(endPoint);
    // ignore: deprecated_member_use
    http.MultipartRequest request = http.MultipartRequest('POST', api);

    request.files.add(
      await http.MultipartFile.fromPath(
        'images',
        _image.path,
        contentType: MediaType('application', 'jpeg'),
      ),
    );

    http.StreamedResponse r = await request.send();

    print(r.statusCode);

    var res=await r.stream.transform(utf8.decoder).join();
    Map<String,dynamic> imap=jsonDecode(res);
    // print(imap["results"]);
    List rList=imap["results"];
    //print(rList[0]);
    print(rList[0]["image"]);
    print(rList[0]["info"]["description"]);
    print(rList[0]["info"]["name"]);
    print(rList[0]["info"]["remedies"]);
    setState(() {
      result= Disease(name: rList[0]["info"]["name"],
          path: rList[0]["image"],
          desc: rList[0]["info"]["description"],
          rem: rList[0]["info"]["remedies"]);
          rstate=false;
    });


  }
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

                      print("pressed");
                      if(_image!=null) {
                        uploadH();
                        sstate = false;
                      }else{
                        _showAlertBox();
                      }
                    });
                  })
            ],
        ),
          ),
      ])),
      sstate == true
          ? Container(
              //color: Colors.red,c
            )
          : rstate==true?Loading():Container(
              child: DiseaseTile(result),)
    ]));
  }

  Widget _showAlertBox(){
  return AlertDialog(
  title: Text('AlertDialog Title'),
  content: SingleChildScrollView(
  child: Text("Please Enter an image",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
  ),);
}
}
