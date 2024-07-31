import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared/Themes/colors.dart';
import '../shared/Widgets/action_button.dart';
import '../shared/Widgets/back_button.dart';
import '../shared/Widgets/botton_Nav_Bar.dart';
import 'wedgets/socialMediaIcon.dart';

class FriendScreen extends StatelessWidget {
  FriendScreen({super.key});

  final Uri phoneNumber = Uri.parse('tel:+201147617485');
  final Map myContacts = {
    'whatsapp': Uri.parse('https://wa.me/+201147617485'),
    'facebook': Uri.parse('https://www.facebook.com/Kaffo.co?mibextid=ZbWKwL'),
    'insta': Uri.parse('https://www.instagram.com/Kaffo.co'),
    'x': Uri.parse('https://x.com/kaffo_co'),
    'tiktok': Uri.parse('http://tiktok.com/kaffo.co/'),
    'youtube': Uri.parse('http://www.youtube.com/kaffo_co/'),
    'kaffo.': Uri.parse('https://kaffo.co/'),
  };

  @override
  Widget build(BuildContext myContext) {
    return SafeArea(
        bottom: true,
        left: true,
        top: true,
        right: true,
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.zero,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Friend',
            ),
            leading: MyBackButton(),
          ),
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/kaffo.jpeg'),
                      radius: 100,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'هــلا .. خليــك كفوّ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ActionButtonWithIcon(
                        title: 'Add To Group',
                        icon: Icons.add,
                        action: () {
                          showModalBottomSheet<void>(
                            backgroundColor: transperent,
                            context: myContext,
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    border: Border.all(
                                      color: blue,
                                      width: 3,
                                    ),
                                    color: blue),
                                height: 300,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(myContext);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9)),
                                              color: gray,
                                            ),
                                            width: 75,
                                            height: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          physics: BouncingScrollPhysics(),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, left: 16),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      print(
                                                          'work button was pressed');
                                                    },
                                                    child: Text(
                                                      '. Work',
                                                      style: h3,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      print(
                                                          'Collage button was pressed');
                                                    },
                                                    child: Text(
                                                      '. Collage',
                                                      style: h3,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      print(
                                                          'Club button was pressed');
                                                    },
                                                    child: Text(
                                                      '. Club',
                                                      style: h3,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      print(
                                                          'Event button was pressed');
                                                    },
                                                    child: Text(
                                                      '. Event',
                                                      style: h3,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      print(
                                                          'Family button was pressed');
                                                    },
                                                    child: Text(
                                                      '. Family',
                                                      style: h3,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          print('Frind Added to Group');
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '00201147617485',
                          style: TextStyle(fontSize: 20, color: gray),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        IconButton(
                          icon: Icon(Icons.phone, size: 30, color: gray),
                          onPressed: () {
                            launchUrl(phoneNumber);
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      itemCount: myContacts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, index) {
                        return contactChanelCard(
                          url: myContacts.values.toList()[index],
                          platForm: myContacts.keys.toList()[index],
                        );
                      },
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                  ]),
            ),
          ),
          bottomNavigationBar: BottonNavBar(
            selectedItemColor: gray,
          ),
       extendBody: true, ));
  }
}
