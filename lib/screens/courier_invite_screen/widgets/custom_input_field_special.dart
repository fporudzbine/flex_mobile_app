
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../labels.dart';
import '../../../provider/sum.dart';
import 'package:provider/provider.dart';

import '../../../provider/variables.dart';

class CustomInputFieldSpecial extends StatefulWidget {
  CustomInputFieldSpecial(
      {
        this.isForBuyOut = false,
        this.label = "",
        required this.controller,
        this.isChecked = false,
        this.startingValueStandardWeight = "",
        this.startingValueStandardDelivery = "",
        this.startingValueSpecialDelivery = "",
        this.startingValueSpecialType = "",
      }
      );

  final bool isForBuyOut;
  final String label;
  final bool isChecked;
  String startingValueStandardWeight;
  String startingValueStandardDelivery;
  String startingValueSpecialDelivery;
  String startingValueSpecialType;
  TextEditingController controller;

  @override
  State<CustomInputFieldSpecial> createState() => _CustomInputFieldSpecialState();
}

class _CustomInputFieldSpecialState extends State<CustomInputFieldSpecial> {


  @override
  Widget build(BuildContext context) {
    if(widget.label == kRSD){
      Provider.of<Variables>(context, listen: false);
      (context.read<Variables>().startingValueSpecialType == "Bicikl") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1660,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Televizor do 55 incha") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "870,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma putnička") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "400,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma poluteretna") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "770,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma teretna") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1590,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma putnička sa felnom") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "510,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma poluteretna sa felnom") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1040,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Guma teretna sa felnom") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1820,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Traktorska guma") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1340,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Traktorska guma sa felnom") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1760,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Menjač manji") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "1550,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Menjač automatski") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "5040,00 RSD" :
      (context.read<Variables>().startingValueSpecialType == "Auto motor") ? context.watch<Variables>().controllerSpecialAmountRSD.text = "5070,00 RSD" :
      context.watch<Variables>().controllerSpecialAmountRSD.text = "0";
    }
    return Container(
      color: Color(0xFFE2C7A8),
      width: 230,
      height: 45,
      child: TextField(
        controller: context.watch<Variables>().controllerSpecialAmountRSD,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        obscureText: false,
        decoration: InputDecoration(
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          hintText: "0",
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.only(left: 10),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),),
        ),
        readOnly: true,
      ),
    );
  }
}
