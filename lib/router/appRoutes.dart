import 'package:compoentesvarios/models/models.dart';
import 'package:compoentesvarios/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO:borrar Home
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'homeScreen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listView2',
        icon: Icons.light_sharp,
        name: 'List view Rick and morty',
        screen: const ListViewRickAndMortyScreen()),
    MenuOption(
        route: 'listView1',
        icon: Icons.list_alt,
        name: 'list view 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'detalles',
        icon: Icons.details,
        name: 'detalles screen',
        screen: const DetallesScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'card screen',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'listView1': (BuildContext context) => const ListView1Screen(),
    'listView2': (BuildContext context) => const ListViewRickAndMortyScreen(),
    'detalles': (BuildContext context) => const DetallesScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (context) => const CardScreen(),
    );
  }
}
