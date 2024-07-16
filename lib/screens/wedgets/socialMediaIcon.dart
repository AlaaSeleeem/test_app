import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactChanelCard extends StatelessWidget {
  String platForm;
  Uri url;
  contactChanelCard({
    Key? key,
    required this.platForm,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        child: InkWell(
          onTap: () async {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          },
          child: Image(
            image: AssetImage('assets/$platForm.png'),
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
      )
    ]);
  }
}
