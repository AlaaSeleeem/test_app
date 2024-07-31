import 'package:flutter/material.dart';

import '../Themes/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: orange,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
  }
}