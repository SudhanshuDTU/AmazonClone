import 'package:ecommerce/features/auth/auth_screen/auth_screen.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) => const AuthScreen(),
      );
    
    default: 
  }
}
