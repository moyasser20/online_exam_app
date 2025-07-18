import 'package:flutter/material.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/features/forgetPassword/presentation/views/screens/email_varificationScreen.dart';
import 'package:online_exam_app/features/forgetPassword/presentation/views/screens/forgertPasswordScreen.dart';
import 'package:online_exam_app/features/login/presentation/views/screens/login.dart';

import '../../features/Profile/presentation/views/screens/profile_Screen.dart';
import '../../features/forgetPassword/presentation/views/screens/ResetPassword.dart';
import '../../features/signUp/presentation/views/screens/signUp.dart';

abstract class Routes {

  static Route generateRoute(RouteSettings settings) {
    final url = Uri.parse(settings.name ?? "/");

    switch (url.path) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const loginScreen());
      case AppRoutes.SignUp:
        return MaterialPageRoute(builder: (context) => const SignupScreen());

      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (context) => const ForgetPasswordScreen());
      case AppRoutes.emailVarification:
        return MaterialPageRoute(builder: (context) => const EmailVerificationScreen());
      case AppRoutes.ResetPasswordScreen:
        return MaterialPageRoute(builder: (context) => const ResetPasswordScreen());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      default:
        return MaterialPageRoute(builder: (context) => const loginScreen());

    }
  }
}
