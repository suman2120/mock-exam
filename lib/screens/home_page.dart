import 'package:apiprovider/models/category_model.dart';
import 'package:apiprovider/providers/category_provider.dart';
import 'package:apiprovider/widgets/category_card.dart';
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
        else
          return ListView.builder(
            itemCount: categoryProvider.categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                id: index+1,
                name: categoryProvider.categories[index].name,
                createdAt: categoryProvider.categories[index].createdAt.toString(),
              );
            },
          );
      },)
    );
  }
}