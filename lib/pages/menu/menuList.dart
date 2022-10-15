import 'package:flutter/material.dart';
import './menuItems.dart'; // list of menu Items

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: menuItems.length,
      itemBuilder: ((context, index) {
        return Card(
          child: ListTile(
            title: Text(menuItems[index].name),
          ),
        );
      }),
    );
  }
}
