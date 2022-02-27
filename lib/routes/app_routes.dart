import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const  initialRoute = 'home';
  static final menuOptions = <MenuOptions> [
    // TODO: borrar home
    //MenuOptions(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list, name: 'Listview1 Screen', screen: const Listview1Screen()),
    MenuOptions(route: 'listview2', icon: Icons.list_alt, name: 'Listview2 Screen', screen: const Listview2Screen()),
    MenuOptions(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: const CardScreen()),
    MenuOptions(route: 'alert', icon: Icons.access_alarm, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOptions(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOptions(route: 'animated', icon: Icons.play_circle_fill_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOptions(route: 'input', icon: Icons.input_rounded, name: 'Input Screen', screen: const InputScreen()),
    MenuOptions(route: 'slider', icon: Icons.slideshow_sharp, name: 'Slider Screen', screen: const SliderScreen()),
    MenuOptions(route: 'listviewbuilder', icon: Icons.list_alt_sharp, name: 'List view builder Screen', screen: const ListViewBuilderScreen()),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes (){
    Map<String, Widget Function(BuildContext)> appRoutes = {    };
    appRoutes.addAll({ 'home': ( BuildContext context ) => const HomeScreen() });
    for (final options in menuOptions){
      appRoutes.addAll({ options.route: ( BuildContext context ) => options.screen });
    }
    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home'      : ( BuildContext context ) => const HomeScreen(),
        'listview1' : ( BuildContext context ) => const Listview1Screen(),
        'listview2' : ( BuildContext context ) => const Listview2Screen(),
        'card'      : ( BuildContext context ) => const CardScreen(),
        'alert'     : ( BuildContext context ) => const AlertScreen(),
      };*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}