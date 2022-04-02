import 'package:barcode_qr_reader_new_version/widgets/confirm_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/User_model.dart';
import '../utils/UserPreferences.dart';
import '../widgets/Button_widget.dart';
import '../widgets/Numbers_widget.dart';
import '../widgets/profile_widget.dart';

const userData = UserPreferences.myUser;

class YoPage extends StatelessWidget {
  const YoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        ProfileWidget(
          imagePath: userData.imagePath,
          onClicked: () {},
        ),
        const SizedBox(height: 24),
        buildName(userData),
        const SizedBox(height: 24),
        Center(
            child: Text(
          'Contacto: ' + userData.cellPhone,
          style:
              const TextStyle(fontWeight: FontWeight.w100, color: Colors.black),
        )),
        const SizedBox(height: 24),
        Center(child: socialMediaFollowButton(context)),
        const SizedBox(height: 24),
        NumbersWidget(),
        const SizedBox(height: 24),
        buildAbout(userData),
        const SizedBox(height: 90),
        const Center(
            child: Text(
          'Traigan a los MCR al Capital, HDSPTM :D',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
        const SizedBox(height: 90)
      ],
    );
  }
}

Widget buildName(User user) => Column(
      children: <Widget>[
        Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          user.email,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          'A.K.A: ' + userData.aka,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );

Widget socialMediaFollowButton(context) => ButtonWidget(
      text: 'Follow Me: ' + userData.socialMedia,
      onClicked: () {
        showAlertDialog(context); //importamos el widgets desde su custom
      },
    );

Widget buildAbout(User userData) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Sobre mí',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            userData.about,
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
