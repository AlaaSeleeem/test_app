import 'package:flutter/material.dart';

//import '../shared/Widgets/back_button.dart';
import '../shared/Widgets/back_button.dart';
import '../shared/Widgets/botton_Nav_Bar.dart';
import 'wedgets/group_items.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Groups',
        ),
        leading: MyBackButton(),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, index) {
          return GroupItem();
        },
        physics: BouncingScrollPhysics(),
        //shrinkWrap: true,
        //primary: false,
        padding: const EdgeInsets.all(10),
      ),
      bottomNavigationBar: BottonNavBar(),
      extendBody: true,
    );
  }
}
