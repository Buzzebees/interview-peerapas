// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Map<String, dynamic> _rec_member;
  var _img;
  var _name;
  var _price;
  var _detail;

  Future getDetail() async {
    _rec_member =
        (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?)!;
    _img = _rec_member['cp_img'];
    _name = _rec_member['cp_name'];
    _price = _rec_member['cp_price'];
    _detail = _rec_member['cp_detail'];

    print(_img);
    print(_name);
    print(_price);
    print(_detail);
  }

  @override
  Widget build(BuildContext context) {
    getDetail();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Details',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 412,
            height: 275,
            child: Image.network(
              _img,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SPECIAL DEALS',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  _name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Divider(
                    height: 2,
                    // indent: 10,
                    // endIndent: 10,
                    thickness: 1,
                  ),
                ),
                Text(_price,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.yellowAccent.shade700)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  _detail,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
