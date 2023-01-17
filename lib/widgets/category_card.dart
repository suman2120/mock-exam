import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("1"),
                ),
                title: Text("Category Name"),
                subtitle: Text("Number of Quizzes"),
                trailing: Icon(Icons.delete),
              ),
            ),
          ],
        ),
      
      ),
    );
  }
}
