import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/shared/Themes/colors.dart';

import '../../screens/screens.dart';
import '../methods/navigation.dart';

class BottonNavBar extends StatelessWidget {
  BottonNavBar({super.key, this.selectedItemColor});
  Color? selectedItemColor;
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BottomNavigationBar(
          backgroundColor: bottonNavBar,
          selectedItemColor: selectedItemColor ?? orange,
          unselectedItemColor: gray,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.globe), label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.userGroup), label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user), label: ''),
          ],
          onTap: (value) {
            if (value == 0) {
              index = value;
              goTO(context: context, screen: HomeScreen());
            } else if (value == 1) {
              index = value;
              goTO(context: context, screen: MyNetworkScreen());
            } else if (value == 2) {
              index = value;
              goTO(context: context, screen: GroupsScreen());
            } else if (value == 3) {
              index = value;
              goTO(context: context, screen: ProfileScreen());
            }
          }),
    );
  }
}
