import 'package:get/get.dart';

import '../controllers/todospage_controller.dart';

class TodospageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodospageController>(
      () => TodospageController(),
    );
  }
}
