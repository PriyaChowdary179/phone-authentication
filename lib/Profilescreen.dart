import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Please select your profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 90,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 2),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                          focusColor: Colors.black54,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.apartment_outlined,
                          size: 50,
                        ),
                        SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,17,50,7),
                                child: Text(
                                  "Shipper",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,bottom: 10),
                                child: Text(
                                  "Lorem ipsum dolor sit amet,\n consectetur adipiscing",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 90,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 2),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio(
                        value: 1,
                        groupValue: 0,
                        onChanged: ( int? value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                        focusColor: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.local_shipping_outlined,
                        size: 50,
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,17,80,7),
                            child: Text(
                              "Transporter",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12,bottom: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet,\n consectetur adipiscing",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          RawMaterialButton(onPressed: (){

          },
            fillColor: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(110,15,110,15),
              child: Text("CONTINUE",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          )







        ],
      ),
    );
  }
}
