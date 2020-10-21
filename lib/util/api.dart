import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';

class api{
  String endPoint="http://192.168.43.19:5000/search";
  uploadH(File imageFile) async {
    final api = Uri.parse(endPoint);
    // ignore: deprecated_member_use
    http.MultipartRequest request = http.MultipartRequest('POST', api);

    request.files.add(
      await http.MultipartFile.fromPath(
        'images',
        imageFile.path,
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

  }
}