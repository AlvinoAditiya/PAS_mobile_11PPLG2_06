import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pas_mobile_11pplg2_06/binding/bottomNav_binding.dart';
import 'package:pas_mobile_11pplg2_06/binding/login_binding.dart';
import 'package:pas_mobile_11pplg2_06/binding/register_binding.dart';
import 'package:pas_mobile_11pplg2_06/binding/splashscreen_binding.dart';
import 'package:pas_mobile_11pplg2_06/pages/bottomNav_page.dart';
import 'package:pas_mobile_11pplg2_06/pages/login_page.dart';
import 'package:pas_mobile_11pplg2_06/pages/register_page.dart';
import 'package:pas_mobile_11pplg2_06/pages/splashscreen_page.dart';
import 'package:pas_mobile_11pplg2_06/pages/tv_page.dart';
import 'package:pas_mobile_11pplg2_06/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage(),binding: LoginBinding()),
    GetPage(name: AppRoutes.registerPage, page: () => RegisterPage(),binding: RegisterBinding()),
    GetPage(name: AppRoutes.splashscreenPage, page: () => SplashscreenPage(),binding: SplashscreenBinding()),

    GetPage(name: AppRoutes.bottomNavPage, page: () => BottomNavPage(),binding: BottomNavBinding()),
    GetPage(name: AppRoutes.tvPage, page: () => TvPage(),binding: BottomNavBinding()),

   
  ];
}