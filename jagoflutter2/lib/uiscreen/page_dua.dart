import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {

  //constructor
  String nama = "";
  PageDua(this.nama); //cara pertama


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hi .. Selamat Datang ${nama}',

        style: TextStyle(color: Colors.green),),//didalam text
      ),
    );
  }
}
