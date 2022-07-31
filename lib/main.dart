import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10030/art_sci_ui.dart';
import 'package:flutter_app_final_6319c10030/bs_ui.dart';
import 'package:flutter_app_final_6319c10030/en_ui.dart';
import 'package:flutter_app_final_6319c10030/la_ui.dart';
import 'package:flutter_app_final_6319c10030/sau_splashscreen_ui.dart';
import 'package:flutter_app_final_6319c10030/sau_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SauSplashscreenUI(),
      theme: ThemeData(
        fontFamily: 'Itim',
      ),
    
    ),
  );
}