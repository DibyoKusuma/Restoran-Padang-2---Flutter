import 'package:flutter/material.dart';
import 'package:jagoflutter2/uiscreen/page_datepicker.dart';
import 'package:jagoflutter2/uiscreen/page_dropdown.dart';
import 'package:jagoflutter2/uiscreen/page_galerymakanan.dart';
import 'package:jagoflutter2/uiscreen/page_gridview.dart';
import 'package:jagoflutter2/uiscreen/page_satu.dart';
import 'package:jagoflutter2/uiscreen/page_tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//beda listview dan column
//column
class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Salero Denai'),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image.asset('gambar/profile.png'),
                  SizedBox(height: 10,),
                  Text('Rizki Syaputra')
                ],
              ),
              // child: Stack(
              //
              //   children: [
              //     ImageV
              //
              //   ],
              // ),
            )
          ],
        ),
      ),


      body: Container(
        child: ListView(
          children: [

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSatu()));
              },
                color: Colors.deepOrangeAccent,
                textColor: Colors.black,
                child: Text('Passing Data'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageGridview()));
              },
                color: Colors.deepOrangeAccent,
                textColor: Colors.black,
                child: Text('Gridview'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageGaleryMakanan()));
              },
                color: Colors.deepOrangeAccent,
                textColor: Colors.black,
                child: Text('Galery Makanan'),
              ),
            ),

            IconButton(
              onPressed: (){},
              color: Colors.deepOrangeAccent,
              icon: Icon(Icons.add),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlineButton(
                shape: StadiumBorder(),
                textColor: Colors.blue,
                child: Text('Tab Bar Menu'),
                borderSide: BorderSide(
                    color: Colors.blue, style: BorderStyle.solid,
                    width: 1),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex)

                      =>PageTabBar()
                  ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDropDown()));
              },
                color: Colors.deepOrangeAccent,
                textColor: Colors.black,
                child: Text('Page Drop Down'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDatePicker()));
              },
                color: Colors.deepOrangeAccent,
                textColor: Colors.black,
                child: Text('Page Date Picker'),
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.mouse),
        backgroundColor: Colors.green,
      ),
    );
  }
}

