import 'dart:convert';

import 'package:apiprovider/models/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryServices{
  static String baseUrl = "https://loksewa-quiz.herokuapp.com/";

  Future<List<Category>> fetchCategories() async{
    var url = Uri.parse(baseUrl+"quiz-category");
    var response = await http.get(url);
    print(response.body);

    List<Category> categories = [];
    if(response.statusCode==200) {
      var jsonString = response.body;
      var json = jsonDecode(jsonString);
      for(var item in json){
        categories.add(Category.fromJson(item));

      }
      return categories;
    }else
      return categories;
    
  }
}


