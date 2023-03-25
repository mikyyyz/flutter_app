import 'package:flutter_app/pages/home/index.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getRoutes = [
  GetPage(name: '/home', page: () => const Home())
];