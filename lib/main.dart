import 'package:flutter/material.dart';
import 'package:it_legend_task/core/routing/app_router.dart';
import 'package:it_legend_task/products_app.dart';
import 'package:it_legend_task/core/helpers/dependency_injection/dependency_container.dart'
    as dc;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dc.init();
  runApp(const ProductsApp(appRouter: AppRouter()));
}
