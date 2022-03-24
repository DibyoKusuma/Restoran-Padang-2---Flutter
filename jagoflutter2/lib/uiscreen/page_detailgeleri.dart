import 'package:flutter/material.dart';

class PageDetailGalery extends StatelessWidget {
  String namaMakanan = "";
  String gambar ="";
  PageDetailGalery({required this.namaMakanan, required this.gambar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('$namaMakanan'),
      ),


      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Card(
              child: Hero(
                  tag: gambar,
                  child: Image.asset('gambar/$gambar')),
            ),
            Text('$namaMakanan')
          ],
        ),
      ),
    );
  }
}
