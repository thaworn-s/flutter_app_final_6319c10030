import 'package:flutter/material.dart';

import 'art_sci_ui.dart';
import 'bs_ui.dart';
import 'en_ui.dart';
import 'sau_ui.dart';

class LaUI extends StatefulWidget {
  const LaUI({Key? key}) : super(key: key);

  @override
  State<LaUI> createState() => _LaUIState();
}

class _LaUIState extends State<LaUI> {
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
              'FACULTY OF LAW',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 350,
              child: Image.asset('assets/images/la.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'สาขาวิชานิติศาสตร์',
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
                  onPressed: () => setState(() {}),
                ),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                  icon: Image.asset('assets/images/Globe-icon.png'),
                  iconSize: 40,
                  onPressed: () => setState(
                    () {},
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
}
