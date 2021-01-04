// import 'dart:convert';

// import 'package:get_api/model.dart';
// import 'package:http/http.dart' as http;

// class Services {
//   //
//   static const String url = 'http://203.130.133.166/ATI-ERP2/ticket-lookup';
//   static Future<List<User>> getUsers() async {
//     try {
//       final response = await http.get(url);
//       if (response.statusCode == 200) {
//         final body = jsonDecode(response.body);
//         //print(body);
//         final Iterable json = body;
//         return json.map((user) => User.fromJson(user)).toList();
//       } else {
//         return List<User>();
//       }
//     } catch (e) {
//       return List<User>();
//     }
//   }
// }

import 'dart:convert';

import 'package:get_api/model.dart';
import 'package:http/http.dart' as http;

class NetService {
  static Future fetchJsonData(String url) {
    return http
        .get(url)
        .then((response) =>
            response?.statusCode == 200 ? jsonDecode(response.body) : null)
        .catchError((err) => print(err));
  }

  static Future<User> fetchTickesInfo() {
    return fetchJsonData('http://203.130.133.166/ATI-ERP2/ticket-lookup')
        .then((response) =>
            (response != null) ? User.fromJson(response[0]) : null)
        .catchError((err) => print('OMFG!!! an error: $err'));
  }
}
