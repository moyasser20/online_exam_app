import 'package:flutter/material.dart';
import 'package:online_exam_app/core/l10n/translation/app_localizations.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';

abstract class Routes {

  static Route generateRoute(RouteSettings settings) {
    final url = Uri.parse(settings.name ?? "/");

    switch (url.path) {
      case AppRoutes.home:

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(),
              Center(child: Text(AppLocalizations.of(context)!.appName)),
              FilledButton(onPressed: () {}, child: Text("Test")),
            ],
          )),
        );
    }
  }
}
