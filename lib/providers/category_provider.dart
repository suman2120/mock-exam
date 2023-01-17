
import 'package:apiprovider/models/category_model.dart';
import 'package:apiprovider/services/category_services.dart';
import 'package:flutter/cupertino.dart';

class CategoryProvider extends ChangeNotifier{
  CategoryProvider(){
    setCategories();
  }
List<Category> categories = [];
List<Category> get getCategories => categories;

void setCategories() async{
  await CategoryServices().fetchCategories().then((value){
    categories = value;
  });
  notifyListeners();
}
}