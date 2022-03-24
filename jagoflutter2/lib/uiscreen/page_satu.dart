import 'package:flutter/material.dart';
import 'package:jagoflutter2/uiscreen/page_dua.dart';

class PageSatu extends StatelessWidget {

  //tetx editing controller
  TextEditingController etNama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Page Satu'),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: etNama,
                decoration: InputDecoration(
                  hintText: 'Input Username',
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageDua(etNama.text)));
              },
              color: Colors.deepOrangeAccent,
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
