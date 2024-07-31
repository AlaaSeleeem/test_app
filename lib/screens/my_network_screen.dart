import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Widgets/botton_Nav_Bar.dart';

//import '../shared/Widgets/back_button.dart';
import '../shared/Widgets/back_button.dart';
import '../shared/Widgets/contact_card.dart';
import 'screens.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'My Network',
          ),
          leading: MyBackButton()),
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
              contactCard(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonNavBar(
      
      ),
   extendBody: true, );
  }
}
