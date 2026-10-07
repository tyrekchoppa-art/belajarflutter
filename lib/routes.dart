import 'package:belajarflutter/pages/confirmreg_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/listmakanan_page.dart';

import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmreg= "/confirm_registration";
  static const String listmakanan = "/list_makanan";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmreg, page: () => ConfirmRegPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
  ];
}