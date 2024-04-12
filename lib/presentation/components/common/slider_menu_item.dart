import 'package:flutter/material.dart';

class SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final int pageId;
  final Function(String, int)? onTap;

  const SliderMenuItem(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onTap,
      required this.pageId});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: const TextStyle(
              color: Color.fromRGBO(240, 237, 204, 1),
              fontWeight: FontWeight.w600,
            )),
        leading: Icon(iconData, color: const Color.fromRGBO(240, 237, 204, 1),),
        onTap: () => onTap?.call(title, pageId));
  }
}

class Menu {
  final IconData iconData;
  final String title;
  final int pageId;

  Menu(this.iconData, this.title, this.pageId);
}
