import 'package:flutter/material.dart';
import 'package:quran_app/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/appIcon.png',
                  height: 80,
                ),
                const Text(
                  'Al Quran',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.share,
            ),
            title: Text(
              'Share',
            ),
//             onTap: () {
//               Share.share('''*Quran app*\n
// u can develop it from my github github.com/itsherifahmed ''');
//               Navigator.pop(context);
//             },
          ),
          const ListTile(
            leading: Icon(
              Icons.rate_review,
            ),
            title: Text(
              'Rate',
            ),
            // onTap: () async {
            //   if (!await launchUrl(quranAppurl,
            //       mode: LaunchMode.externalApplication)) {
            //     throw 'Could not launch $quranAppurl';
            //   }
            // },
          ),
        ],
      ),
    );
  }
}
