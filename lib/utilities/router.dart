import 'package:flutter/material.dart';
import 'package:quizu/utilities/routes.dart';

import '../presentation/login.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.login:
    return MaterialPageRoute(builder: ((context) => const Login()));
    default:
       return MaterialPageRoute(builder: ((context) => const Login())); 

  }
}
