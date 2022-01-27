import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_lock/app/modules/home/views/next_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      // binding: HomeBinding(),
      transition: Transition.downToUp,
      fullscreenDialog: false,
    ),
    GetPage(
      name: _Paths.NEXT,
      page: () => NextView(),
      // binding: HomeBinding(),
      transition: Transition.downToUp,
      fullscreenDialog: false,
    ),
  ];
}
