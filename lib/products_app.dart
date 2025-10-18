import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/routing/app_router.dart';
import 'package:it_legend_task/core/routing/routes.dart';

class ProductsApp extends StatelessWidget {
  const ProductsApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.offersScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
