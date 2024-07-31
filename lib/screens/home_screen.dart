import 'package:flutter/material.dart';
import 'package:my_network_app/screens/my_network_screen.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:my_network_app/shared/Themes/colors.dart';
import 'package:my_network_app/shared/Widgets/action_button.dart';

import '../shared/Widgets/botton_Nav_Bar.dart';
import '../shared/methods/navigation.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var phoneNumper = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'home',
        ),
        titleSpacing: 16,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: phoneNumper,
              keyboardType: TextInputType.phone,
              cursorColor: white,
              style: title1,
              decoration: InputDecoration(
                  label: Text('enter the phone number'),
                  // hintText: 'enter the phone number',
                  //hintStyle: title1.merge(TextStyle(color: gray)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: gray)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: white))),
            ),
            SizedBox(height: 20),
            ActionButtonWithIcon(
              title: 'Search',
              icon: Icons.search,
              action: () {
                print(phoneNumper.text);
                goTO(context: context, screen: MyNetworkScreen());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottonNavBar(),
      extendBody: true,
    );
  }
}
