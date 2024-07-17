import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared/Themes/colors.dart';
import '../shared/Widgets/action_button.dart';
import 'wedgets/screenWedgets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

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
              'My profile',
              style: title1,
            ),
            leading: Icon(
              Icons.arrow_back,
              color: orange,
            ),
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
                          color: Color.fromARGB(255, 4, 107, 129)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ActionButton(
                            buttonColor: gray,
                            title: 'Edit profile',
                            action: () {
                              print(
                                'Edit profile',
                              );
                            }),
                        SizedBox(
                          width: 20,
                        ),
                        ActionButton(
                            title: 'Delete profile',
                            buttonColor: lightRed,
                            action: () {
                              AwesomeDialog(
                                context: myContext,
                                titleTextStyle:
                                    h5Bold.merge(TextStyle(color: black)),
                                dialogType: DialogType.warning,
                                animType: AnimType.rightSlide,
                                title: 'Delete Profile',
                                desc:
                                    'Are you sure that you want to delete Profile ?',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {
                                  print('Delete My profile');
                                },
                              ).show();
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '00201147617485',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 14, 107, 129)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        IconButton(
                          icon: Icon(Icons.phone,
                              size: 30,
                              color: Color.fromARGB(255, 14, 107, 129)),
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
        ));
  }
}
