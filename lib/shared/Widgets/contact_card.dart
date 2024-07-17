import 'package:flutter/material.dart';

import '../Themes/Texts.dart';
import '../Themes/colors.dart';

class contactCard extends StatelessWidget {
  contactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/kaffo.jpeg'),
          radius: 38.5,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kaffo.co',
              style: title1,
            ),
            Text(
              '00201147617485',
              style: title1.merge(TextStyle(color: gray)),
            ),
          ],
        )
      ],
    );
  }
}
