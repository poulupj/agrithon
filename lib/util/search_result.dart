import 'package:agrithon/model/Disease.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
class searchResult{
  Future<Disease> fetchAlbum() async {
    final response =
    await http.get('');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Disease.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }



}

