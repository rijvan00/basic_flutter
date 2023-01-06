import 'dart:developer';

import 'package:http/http.dart' as http;

class NetworkService{
  Future<dynamic> getRequest(String url) async {
    final response = await http.get(Uri.parse(url), headers: {"X-Api-Key":"uv40VxtBnOeiceMkFKZ9mQ==RjGWj91eSvYMfq7t"});
    log("RESPONSE FROM SERVE ==> ${response.body}");
    return response.body;
  }
}