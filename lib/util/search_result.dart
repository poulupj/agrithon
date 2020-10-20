// import 'dart:ui';
// import 'package:agrithon/model/Disease.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
//
// class searchResult{
//   Future<Disease> fetchAlbum() async {
//     final response =
//     await http.get('');
//
//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       return Disease.fromJson(jsonDecode(response.body));
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load album');
//     }
//   }
//
//   Future<Disease> searchImage(Image image) async{
//
//     final api = Uri.parse("");
//     var stream = new http.ByteStream(DelegatingStream.typed(image.openRead()));
//     var length = await image.length();
//     var request = new http.MultipartRequest("POST", api);
//     var multipartFileSign = new http.MultipartFile(
//         'search_imahe', stream, length,
//         filename: path.basename(image.path));
//     request.files.add(multipartFileSign);
//     // send
//     var response = await request.send();
//     print(response.statusCode);
//     response.stream.transform(utf8.decoder).listen((value) {
//       print(value);
//     });
//   }
//
//   Future<Disease> get getResult{
//     return fetchAlbum();
//   }
//
//
// }
//
