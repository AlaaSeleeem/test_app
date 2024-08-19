import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'image.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  'We are what we do',
                  style: title1Bold,
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Thousand of people are usign silent moon '),
                Text(' for smalls meditation '),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
