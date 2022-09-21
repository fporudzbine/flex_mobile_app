import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../labels.dart';
import 'package:provider/provider.dart';
import '../../../provider/variables.dart';

class CustomInputField extends StatefulWidget {
  CustomInputField(
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
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {


  @override
  Widget build(BuildContext context) {
    if(widget.label == kRSD){
        Provider.of<Variables>(context, listen: false);
        (context.read<Variables>().startingValueStandardWeight == "0kg - 0.5kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "600,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "0.5kg - 1kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "620,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "1kg - 2kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "640,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "2kg - 5kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "780,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "5kg - 10kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "900,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "10kg - 15kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "930,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "15kg - 20kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "950,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "20kg - 30kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "1070,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "30kg - 50kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za danas') ? context.read<Variables>().controllerStandardAmountRSD.text = "1220,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "0kg - 0.5kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "350,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "0.5kg - 1kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "410,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "1kg - 2kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "450,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "2kg - 5kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "580,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "5kg - 10kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "740,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "10kg - 15kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "970,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "15kg - 20kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "1020,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "20kg - 30kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "1210,00 RSD" :
        (context.read<Variables>().startingValueStandardWeight == "30kg - 50kg" && context.read<Variables>().startingValueStandardDelivery == 'Danas za sutra do 18h') ? context.read<Variables>().controllerStandardAmountRSD.text = "1560,00 RSD" :
        context.watch<Variables>().controllerStandardAmountRSD.text = "0";
    }
    return Container(
      color: Color(0xFFE2C7A8),
      width: 230,
      height: 45,
      child: TextField(
        controller: context.watch<Variables>().controllerStandardAmountRSD,
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
