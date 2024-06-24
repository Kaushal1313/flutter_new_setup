import 'package:carzup_logic/Home/screen.dart';
import 'package:carzup_logic/routes/constants.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(name: AppRoutePath.home, page: ()=>  homeScreen())
  ];
}
