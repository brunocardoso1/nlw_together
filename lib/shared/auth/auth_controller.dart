import 'package:flutter/material.dart';
import 'package:nlw_together/modules/home/home_page.dart';
import 'package:nlw_together/modules/login/login_page.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user){
    if (user != null){
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}