import 'package:flutter/material.dart';

class PageGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Gridview'),
        foregroundColor: Colors.green,
      ),

      body: GridView.count(crossAxisCount: 3,
        children: List.generate(16, (index){

          //array
          //diawali
          int nIndex = index + 1;
          String nDataIndex = "$nIndex";

          return Center(
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.deepOrangeAccent,
              height: 100,
              width: 100,
              child: Text('Data Ke : $nDataIndex'),
            ) ,
          );

        }),
      ),
    );
  }
}
