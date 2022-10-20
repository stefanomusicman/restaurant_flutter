import 'package:flutter/material.dart';
import './menuCard.dart';
import './menuItems.dart'; // list of menu Items

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: menuItems.length,
        itemBuilder: ((context, index) {
          return MenuCard(
            name: menuItems[index].name,
            price: menuItems[index].price,
            image: menuItems[index].image,
          );
          // return Card(
          //   child: ListTile(
          //     title: Text(menuItems[index].name),
          //   ),
          // );
        }),
      ),
    );
  }
}
