// ignore_for_file: prefer_const_constructors

import 'package:exam_test/CampaignListPage.dart';
import 'package:exam_test/DetailPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => CampaignListPage(),
       '/detail': (context) => DetailPage(),
      },
    );
  }
}