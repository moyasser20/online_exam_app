import 'package:flutter/material.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/features/login/presentation/views/screens/login.dart';

import '../../features/Profile/presentation/views/screens/profile_Screen.dart';
import '../../features/signUp/presentation/views/screens/signUp.dart';

abstract class Routes {

  static Route generateRoute(RouteSettings settings) {
    final url = Uri.parse(settings.name ?? "/");

    switch (url.path) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const loginScreen());
      case AppRoutes.SignUp:
        return MaterialPageRoute(builder: (context) => const SignupScreen());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      default:
        return MaterialPageRoute(builder: (context) => const loginScreen());

    }
  }
}
