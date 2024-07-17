import 'package:flutter/material.dart';

import '../shared/Themes/Texts.dart';
import '../shared/Themes/colors.dart';
import 'wedgets/group_items.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Groups',
          style: h5,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: orange,
        ),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
        itemBuilder: (BuildContext context, index) {
          return GroupItem();
        },
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
