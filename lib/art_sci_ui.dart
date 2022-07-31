import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bs_ui.dart';
import 'en_ui.dart';
import 'la_ui.dart';
import 'sau_ui.dart';

class ArtSciUI extends StatefulWidget {
  const ArtSciUI({Key? key}) : super(key: key);

  @override
  State<ArtSciUI> createState() => _ArtSciUIState();
}

class _ArtSciUIState extends State<ArtSciUI> {
  final Uri toLaunch = Uri(scheme: 'http',host: 'www.sau.ac.th',path: '');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'SAU',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'FACULTY OF ARTS and SCIS',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 350,
              child: Image.asset('assets/images/artsci.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'สาขาวิชาดิจิทัลมีเดีย',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชาเทคโนโลยีดิจิทัลและนวัตกรรม',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชาภาษาอังกฤษธุรกิจ',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชารัฐประศาสนศาสตร์',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/phone-icon.png'),
                  iconSize: 40,
                  onPressed: () => setState(
                    () {
                      _makePhoneCall('028064500');
                    }),
                ),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                  icon: Image.asset('assets/images/Globe-icon.png'),
                  iconSize: 40,
                  onPressed: () => setState(
                    () {
                      _launchInBrowser(toLaunch);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'SAU',
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'SAU',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SauUI(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'วิศวกรรมคอมพิวเตอร์',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnUI(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'ศิลปศาสตร์และวิยาศาสตร์',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtSciUI(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'บริหารธุรกิจ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BsUI(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'นิติศาสตร์',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaUI(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
   Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
