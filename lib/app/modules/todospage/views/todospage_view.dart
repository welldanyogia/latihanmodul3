import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:latihanmodul3/app/data/model/api_model.dart';
import 'package:latihanmodul3/app/modules/todospage/controllers/todospage_controller.dart';
class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);
  @override
  State<TodosPage> createState() => _TodosPageState();
}
class _TodosPageState extends State<TodosPage> {
  // late Future<ApiModel> _futureTodos;
  // @override
  // void initState() {
  //   super.initState();
  //   _futureTodos = fetchTodos();
  // }
  // Future<ApiModel> fetchTodos() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
  //   if (response.statusCode == 200) {
  //     return ApiModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
  final TodospageController controller = Get.put(TodospageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Fetch Data Example'),
    ),
    body: Center(
    child: FutureBuilder<ApiModel>(
    future: controller.fetchTodos(),
    builder: (context, snapshot) {
    var state = snapshot.connectionState;
    if (state != ConnectionState.done) {
    return const Center(child: CircularProgressIndicator());
    } else {
    if (snapshot.hasData) {
    return Text(snapshot.data!.title);
    } else if (snapshot.hasError) {
    return Center(child: Text("${snapshot.error}"));
    } else {
    return const Text('');
    }
    }
    },
    ),
    ),
    );
  }
}