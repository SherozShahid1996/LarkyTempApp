import 'dart:async';
import 'dart:convert';

//import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';
import 'Auth.dart';

enum authProblems { UserNotFound, PasswordNotValid, NetworkError, UnknownError }

class AuthDetails {
  static Future<List<String>> signIn(String email, String password) async {
    CustomerLoginObject customerLoginObject =
        await Auth.signInWithEmailAndPassword(email, password);
    await Auth.signInWithEmailAndPassword(email, password);

    List<String> keys = List.filled(3, '');
    keys[0] = customerLoginObject.Token;
    keys[1] = customerLoginObject.id;
    keys[2] = customerLoginObject.Restaurantid;

    return keys;
  }

  static Future<void> storeTokenLocal(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<void> storeUserLocal(String Userid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('user', Userid);
  }

  static Future<void> storeRestaurantLocal(String Restaurantid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('Restaurantid', Restaurantid);
  }

  static Future<void> storePrintCountLocal(String noofPrint) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('noofPrint', noofPrint);
  }

  static Future<String> getPrintCountLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('noofPrint') != null) {
      String restid = prefs.getString('noofPrint')!;
      return restid;
    } else {
      return "";
    }
  }

  static Future<String> getUserLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('user') != "") {
      String userid = prefs.getString('user')!;
      return userid;
    } else {
      return "";
    }
  }

  static Future<String> getRestaurantLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('Restaurantid') != "") {
      String restid = prefs.getString('Restaurantid')!;
      return restid;
    } else {
      return "";
    }
  }

  static Future<String?> getTokenLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      String? token = prefs.getString('token');
      return token;
    } else {
      return null;
    }
  }

  static Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }

  static String getExceptionText(Exception e) {
    if (e is PlatformException) {
      switch (e.message) {
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          return 'User with this email address not found.';
          break;
        case 'The password is invalid or the user does not have a password.':
          return 'Invalid password.';
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          return 'No internet connection.';
          break;
        case 'The email address is already in use by another account.':
          return 'This email address already has an account.';
          break;
        case 'Authorization Failed':
          return 'Authorization Failed.';
          break;
        default:
          return 'Unknown error occured.';
      }
    } else {
      return 'Unknown error occured.';
    }
  }
}
