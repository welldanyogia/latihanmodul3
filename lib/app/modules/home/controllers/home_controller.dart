import 'package:get/get.dart';

import '../../../data/api/apiservice.dart';
import '../../../data/model/api_model.dart';

class HomeController extends GetxController {
  final ApiService apiService = Get.put(ApiService());
  Rx<ApiModel?> apiData = Rx<ApiModel?>(null);
  // late Future<ApiModel> _futureApiModels;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      var response = await ApiService.fetchData();
      apiData.value = response;
    } catch (e) {
      print('Error: $e');
    }
  }
}
