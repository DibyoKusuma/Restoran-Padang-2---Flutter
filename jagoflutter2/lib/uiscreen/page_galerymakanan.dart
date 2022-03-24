import 'package:flutter/material.dart';
import 'package:jagoflutter2/uiscreen/page_detailgeleri.dart';

class PageGaleryMakanan extends StatefulWidget {
  @override
  _PageGaleryMakananState createState() => _PageGaleryMakananState();
}

class _PageGaleryMakananState extends State<PageGaleryMakanan> {

  //deklarasi
  List<Container> galeryMakanan = [] ;

  var listGaleryMakanan = [
    {"nama":"Nasi Padang", "gambar":"gambar1.jpg"}, //0
    {"nama":"Nasi Balado", "gambar":"gambar2.jpg"},//1
    {"nama":"Nasi Dendeng", "gambar":"gambar3.jpg"},//2
    {"nama":"Nasi Ayam Lado Hijau", "gambar":"gambar4.png"},
    {"nama":"Nasi Rendang Daging", "gambar":"gambar5.jpg"},

  ];

  _createGaleryMakanan() async{
    for(var i=0; i<listGaleryMakanan.length; i++){
      final itemDataGalery = listGaleryMakanan[i];
      final String? gambarMakanan = itemDataGalery['gambar']!;
      final String? namaMakanan = itemDataGalery['nama'];

      galeryMakanan.add(
        Container(
          padding: EdgeInsets.all(4),
          child: Card(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                  => PageDetailGalery(namaMakanan: namaMakanan!, gambar: gambarMakanan!)
                ));
              },
              child: Column(
                children: [
                  //menggunakan animasi
                  //HERO
                  Hero(
                    tag: namaMakanan!,
                    child: Image.asset('gambar/$gambarMakanan',
                      height: 145, fit: BoxFit.contain,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  Text('$namaMakanan', style: TextStyle(
                    fontSize: 12, color: Colors.deepOrangeAccent
                  ),)
                ],
              ),

            ),
          ),
        )
      );

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createGaleryMakanan();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Makanan'
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: GridView.count(crossAxisCount: 2,
        children: galeryMakanan,
      ),
    );
  }
}
