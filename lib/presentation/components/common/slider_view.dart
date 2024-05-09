import 'package:flutter/material.dart';
import 'package:miscellaneous_calculator/presentation/components/common/slider_menu_item.dart';

class SliderView extends StatelessWidget {
  final Function(String, int)? onItemClick;

  const SliderView({super.key, this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(2, 52, 63, 1),
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: Image.asset(
              'assets/main_avatar_3.JPG',
              fit: BoxFit.fill,
            ).image,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Welcome!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(240, 237, 204, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...[
            Menu(Icons.calculate, '실생활편', 0),
          ].map(
            (menu) => SliderMenuItem(
                title: menu.title,
                iconData: menu.iconData,
                pageId: menu.pageId,
                onTap: onItemClick),
          ),
        ],
      ),
    );
  }
}
