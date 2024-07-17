import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:my_network_app/shared/Themes/colors.dart';

import '../shared/Widgets/contact_card.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Network',
          style: h5,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: orange,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

