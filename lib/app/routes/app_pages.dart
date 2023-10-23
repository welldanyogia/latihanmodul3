import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/todospage/bindings/todospage_binding.dart';
import '../modules/todospage/views/todospage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODOSPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TODOSPAGE,
      page: () => const TodosPage(),
      binding: TodospageBinding(),
    ),
  ];
}
