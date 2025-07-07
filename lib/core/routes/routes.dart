import 'package:flutter/material.dart';
import 'package:online_exam_app/core/l10n/translation/app_localizations.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/features/login/presentation/views/screens/login.dart';

abstract class Routes {

  static Route generateRoute(RouteSettings settings) {
    final url = Uri.parse(settings.name ?? "/");

    switch (url.path) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const loginScreen());

      default:
        return MaterialPageRoute(builder: (context) => const loginScreen());

    }
  }
}
