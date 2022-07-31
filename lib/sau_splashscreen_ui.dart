import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10030/sau_ui.dart';

class SauSplashscreenUI extends StatefulWidget {
  const SauSplashscreenUI({Key? key}) : super(key: key);

  @override
  State<SauSplashscreenUI> createState() => _SauSplashscreenUIState();
}

class _SauSplashscreenUIState extends State<SauSplashscreenUI> {
  @override
  void initState() {
    //โค้ด SplashScreen
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SauUI(),
        ),
      ),
    );

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              child: Image.asset('assets/images/saulogo.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
