import 'package:flutter/material.dart';

class MyDrawerListTile extends StatelessWidget {
  final void Function()? onTap;
  final Icon icon;
  final String title;
  const MyDrawerListTile(
      {super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: Colors.grey,
      onTap: onTap,
      leading: icon,
      iconColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
