import 'package:flutter/physics.dart';

class Category {
  String? id;
  String? name;
  DateTime? createdAt;
  DateTime? updatedAt;
  CategoryCount? count;

  Category({this.id, this.name, this.createdAt, this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
    count = CategoryCount.fromJson(json['count']);
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class CategoryCount {
  int? quizzes;
  CategoryCount({this.quizzes});

  CategoryCount.fromJson(Map<String, dynamic> json) {
    quizzes = json['quizzes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quizzes'] = this.quizzes;
    return data;
  }
}
