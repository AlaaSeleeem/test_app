import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';

import '../shared/Themes/colors.dart';
import '../shared/Widgets/contact_card.dart';

class SingleGroupScreen extends StatelessWidget {
  const SingleGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'work',
            style: h5Bold,
          ),
          leading: Icon(
            Icons.arrow_back,
            color: orange,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('assets/kaffo.jpeg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Group Members',
              style: h3,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    contactCard(),
                    SizedBox(
                      height: 20,
                    ),
                    contactCard(),
                    SizedBox(
                      height: 20,
                    ),
                    contactCard(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
