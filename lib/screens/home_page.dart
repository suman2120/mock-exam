import 'package:apiprovider/models/category_model.dart';
import 'package:apiprovider/providers/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<CategoryProvider>(builder: (context, categoryProvider, child) {
        if(categoryProvider.categories.length==0){
          return Center(child: Text('No Categories'),);
        }
        else return ListView.builder(itemBuilder: ((context, index) {
          List<Category> categories = categoryProvider.categories;
          return ListTile(
            title: Text(categories[index].name!),
          );
        }));
      },)
    );
  }
}