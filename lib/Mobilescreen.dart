import 'package:flutter/material.dart';
import 'package:user_authentication/Mobilescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_authentication/Otpscreen.dart';


class Mobilescreen extends StatefulWidget {
  @override
  _MobilescreenState createState() => _MobilescreenState();
}

class _MobilescreenState extends State<Mobilescreen> {
   late  String phonenumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "language");
                  },
                  child: Icon(Icons.backspace_rounded),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Please enter your mobile number",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                "You'll receive a 6-digit code",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Text(
                "to verify next.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,10),
                child: Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            phonenumber = value;
                            print(phonenumber);
                          },
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              prefix: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "+91  -  ",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              hintText: " Enter Your Mobile Number",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Otpscreen(phonenumber)));
                },
                fillColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110, top: 15, bottom: 15),
                  child: Text(
                    "CONTINUE",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
