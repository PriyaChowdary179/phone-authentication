import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Languagescreen extends StatefulWidget {
  @override
  _LanguagescreenState createState() => _LanguagescreenState();
}

class _LanguagescreenState extends State<Languagescreen> {

    String? valueChoose;

  final List<String> listItem=[
    "English","Hindi","Telugu","Tamil"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 160, 40, 40),
              child: Column(
                children: [

                  Text("Please select your Language",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  ),
                      SizedBox(height: 10),
                    Text("You can change the language",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text("at any time.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 60,right: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black54,width: 1
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton<String>(
                        hint: Text("select Language"),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        underline: SizedBox(),
                        value: valueChoose,
                          onChanged: (String? newvalue){
                            setState(() {
                              valueChoose=newvalue!;
                            });
                          },
                        items: listItem.map((String valueItem) {
                          return DropdownMenuItem<String>(
                            value: valueItem,
                              child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: RawMaterialButton(onPressed: (){
                      Navigator.pushNamed(context, "phone");
                      },
                      fillColor: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80,right: 80,top: 15,bottom: 15),
                        child: Center(
                          child: Text("NEXT",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

              ],
          ),
            ),
        ),
        ),
      ),
    );
  }
}

class Value {
}
