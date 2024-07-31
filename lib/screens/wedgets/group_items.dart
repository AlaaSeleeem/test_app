import 'package:flutter/material.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:my_network_app/shared/Themes/colors.dart';
import 'package:my_network_app/shared/methods/navigation.dart';

class GroupItem extends StatelessWidget {
  const GroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goTO(context: context, screen: SingleGroupScreen());
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(gray, BlendMode.darken), //darken image
                  fit: BoxFit.cover,
                  image: AssetImage('assets/kaffo.jpeg'),
                ),
                borderRadius: BorderRadius.circular(39),
                border: Border.all(color: white)),
            child: Center(
              child: Text(
                'work',
                style: h3Bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
