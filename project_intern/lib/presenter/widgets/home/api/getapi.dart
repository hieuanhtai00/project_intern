import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_intern/presenter/model/covid19.dart';

Future<Covid19> getApi() async {
  final response =
      await http.get(Uri.parse('https://static.pipezero.com/covid/data.json'));
  final responseData = jsonDecode(response.body);
  return Covid19.fromJson(responseData);
}
