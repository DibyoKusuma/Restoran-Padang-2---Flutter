import 'package:flutter/material.dart';
class PageDropDown extends StatefulWidget {
  @override
  _PageDropDownState createState() => _PageDropDownState();
}

class _PageDropDownState extends State<PageDropDown> {

  List<String> listKota = [
    "Bali",
    "Bandung",
    "Jakatrta",
    "Depok",
    "Tangerang"
  ];

  String nKota = "Bali";

  bool nValue = false;

  void pilihKota(String value){
    setState(() {
      nKota = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu'),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Container(
        child: Center(
          child: Column(
            children: [
              DropdownButton(
                onChanged: (String? value){
                  pilihKota(value!);
                  // nKota = listKota.indexOf(value);
                },
                value: nKota,
                items: listKota.map(
                        (String? value){
                      return DropdownMenuItem(
                        child: Text(value!),
                        value: value,
                      );
                    }
                ).toList(),
              ),

              SizedBox(
                height: 10,
              ),

              Text('$nKota'),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Checkbox(
                    value: nValue,
                    onChanged: (bool? value){
                      setState(() {
                        this.nValue = value!;
                      });
                    },
                  ),

                  SizedBox(width: 10,),
                  Text('Setujuin ini')
                ],

              )
            ],

          )
        ),
      ),
    );
  }
}
