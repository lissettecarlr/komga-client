import 'package:flutter/material.dart';
import 'package:klutter/presentation/widgets/klutter_drawer_header.dart';
import 'package:klutter/presentation/widgets/select_theme_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'klutter_about_list_tile.dart';

//服务器选择页面的侧边栏点开才显示下来内容
class ServerPickerDrawer extends StatelessWidget {
  const ServerPickerDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        KlutterDrawerHeader(),
        ListTile(
          leading: Icon(Icons.web),
          title: Text("Komga官网"),
          onTap: () => _launchBrowser("http://komga.org"),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text("此软件仓库"),
          onTap: () => _launchBrowser("https://github.com/lissettecarlr/komga-client"),
        ),
        Divider(),
        KlutterAboutListTile(),
        SelectThemeTile(),
      ]),
    );
  }

  Future<void> _launchBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
