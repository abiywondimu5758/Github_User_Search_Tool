import 'package:flutter/material.dart';
import 'package:github_user_search_tool/user/user.dart';

class UserAppRoute{
  static Route generateRoute(RouteSettings settings){
    if (settings.name =='/'){
      return MaterialPageRoute(builder:(context) => UsersList());
    }
    return MaterialPageRoute(builder: (context) => UsersList());
  }
}
