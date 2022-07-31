import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10030/la_ui.dart';

import 'art_sci_ui.dart';
import 'en_ui.dart';
import 'sau_ui.dart';

class BsUI extends StatefulWidget {
  const BsUI({Key? key}) : super(key: key);

  @override
  State<BsUI> createState() => _BsUIState();
}

class _BsUIState extends State<BsUI> {
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
              'FACULTY OF BUSINESS ASMIMISTRATION',
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
              child: Image.asset('assets/images/bs.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'สาขาวิชาการบัญชี',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชาการบริหารทรัยพยากรมนุยษ์',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชาการตลาดยุคดิจิตอล',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              'สาขาวิชาระบบสารสนเทศเพื่อธุรกิจดิจิตอล',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Text(
              'สาขาวิชาการจัดการ',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Text(
              'สาขาวิชาการจัดการนัวตกรรมการค้า',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            )
           
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
