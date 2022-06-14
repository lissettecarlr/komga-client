import 'package:flutter/material.dart';

class KlutterAboutListTile extends StatelessWidget {
  const KlutterAboutListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationLegalese: "基于Klutter的改版，用于连接komga",
      applicationName: "Klutter-卡拉版",
      icon: Icon(Icons.help),
      applicationVersion: "0.0.1",
    );
  }
}
