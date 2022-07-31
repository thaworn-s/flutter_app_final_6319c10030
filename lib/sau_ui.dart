import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10030/art_sci_ui.dart';
import 'package:flutter_app_final_6319c10030/bs_ui.dart';
import 'package:flutter_app_final_6319c10030/en_ui.dart';
import 'package:flutter_app_final_6319c10030/la_ui.dart';

class SauUI extends StatefulWidget {
  const SauUI({Key? key}) : super(key: key);

  @override
  State<SauUI> createState() => _SauUIState();
}

class _SauUIState extends State<SauUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'SAU',
          style: TextStyle(
            color: Colors.black,
            fontSize: 45.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              'WELCOME ',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'TO',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'SOUTHEAST ASIA UNIVERSITY',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 150.0,
              child: Image.asset('assets/images/saubanner1.JPG'),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'ทางเลือกใหม่ของโลกดิจิตอล',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'เริ่มต้นที่นี่',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 300,
              child: Image.asset('assets/images/saubanner2.JPG'),
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
                'วิศวกรรมศาสตร์',
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
