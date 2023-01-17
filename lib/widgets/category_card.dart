import 'package:apiprovider/providers/category_provider.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  int? id;
  String? name;
  String? createdAt;

  CategoryCard({super.key, this.id, this.name, this.createdAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
            leading: CircleAvatar(
              child: Text("$id"),
            ),
            title: Text(name!),
            subtitle: Text(createdAt!),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete))),
      ),
    );
  }
}
