import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class Auth {
  static const _serviceBaseUrl = 'https://UATapi.larky.ch/api/';

  static final _headers = {'Content-Type': 'application/json'};

  static Future<CustomerLoginObject> signInWithEmailAndPassword(
      String email, String password) async {
    print("signInWithEmailAndPassword() called");
    String signInURL = _serviceBaseUrl + 'Account/Login';
    var resBody = {};
    resBody["Email"] = email;
    resBody["Password"] = password;

    try {
      final response = await http.post(Uri.parse(signInURL),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(resBody));

      Map<String, String> headers = response.headers;

      if (response.statusCode == 200) {
        var cust = customerLoginResultFromJson(response.body);

        var custObject = CustomerLoginObjectFromJson(json.decode(cust.Objects));

        return custObject;
      } else {
        // If that response was not OK, throw an error.
        print("response.statusCode: " + response.statusCode.toString());
        //throw CustomException(json.decode(response.body)["Error"]);
        throw (json.decode(response.body)["message"]);
      }
    } catch (e) {
      print(e);
      throw Exception("Error");
    }
  }
}
