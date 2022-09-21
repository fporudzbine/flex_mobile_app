import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../labels.dart';

class CustomAppHeader extends StatelessWidget {
  const CustomAppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/header_background_image.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Column(
              children: [
                Text('Pozovite nas bilo kad. Stižemo bilo gde!', style: TextStyle(fontSize: 16, color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/telephone_icon.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
                      child: Text(kFlexPhoneNumber, style: TextStyle(fontSize: 16, color: Colors.white),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.white, height: 1),
          Padding(
            padding: EdgeInsets.only(left: 50.0, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 50,
                    child: Image.asset('assets/images/flex_logo.png'),
                  ),
                ),
                SizedBox(height: 20),
                Text('Usluge', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Pocetna', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Zakazi kurira', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Cenovnik  ', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Kontakt', style: TextStyle(color: Colors.white, fontSize: 16),),
              ],
            ),
          ),
          Divider(color: Colors.white, height: 1),
          SizedBox(height: 100),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Kalkulator cena", style: TextStyle(color: Colors.white, fontSize: 32, letterSpacing: 2),),
                  ),
                ],
              ),
              // SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(),
                  Container(
                    padding: EdgeInsets.only(bottom: 7, left: 7),
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/home_icon.png'),
                  ),
                  Text("Početna - Flex kurirska služba", style: TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 2),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
