import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'ListView Tipo 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_sharp, name: 'ListView Tipo 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text Inputs', screen: const InputsScreen()),
    MenuOption(route: 'sliders', icon: Icons.check_box_outlined, name: 'Slider & Checks', screen: const SliderScreen()),
  ];

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
