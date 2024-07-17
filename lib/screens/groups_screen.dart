import 'package:flutter/material.dart';

import '../shared/Themes/Texts.dart';
import '../shared/Themes/colors.dart';

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
      body: Center(),
    );
  }
}
