import 'package:flutter/material.dart';
import 'package:it_legend_task/core/routing/routes.dart';
import 'package:it_legend_task/features/filters/filters_screen.dart';
import 'package:it_legend_task/features/offers/presentation/screens/offers_screens.dart';
import 'package:it_legend_task/features/plans/plans_screen.dart';

class AppRouter {
  const AppRouter();
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.offersScreen:
        return MaterialPageRoute(builder: (_) => OffersScreens());

      case Routes.plansScreen:
        return MaterialPageRoute(builder: (_) => PlansScreen());

      case Routes.filtersScreen:
        return MaterialPageRoute(builder: (_) => FiltersScreen());

      default:
        return _unhandledRoute(settings.name);
    }
  }

  static Route<dynamic> _unhandledRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            'No route defined for ${routeName ?? 'Unknown Route'}',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
