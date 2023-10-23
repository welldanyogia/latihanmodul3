import 'dart:convert';

ApiModel ApiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String ApiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
  int userId;
  int id;
  String title;
  bool completed;

  ApiModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}