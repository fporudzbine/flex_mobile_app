import 'package:flex_mobile_app/screens/price_calculator_screen/widgets/additional_service_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../labels.dart';
import '../../provider/sum.dart';
import '../../provider/variables.dart';
import '../courier_invite_screen/widgets/custom_input_field_special.dart';
import 'widgets/custom_input_field.dart';
import 'widgets/heading_container.dart';

class PriceCalculatorScreen extends StatefulWidget {
  const PriceCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<PriceCalculatorScreen> createState() => _PriceCalculatorScreenState();
}

class _PriceCalculatorScreenState extends State<PriceCalculatorScreen> {

  TextEditingController controllerStandardReturnReceipt = TextEditingController();
  TextEditingController controllerStandardBackDocumentation = TextEditingController();
  TextEditingController controllerStandardPaidResponse = TextEditingController();
  TextEditingController controllerStandardSMSReports = TextEditingController();
  TextEditingController controllerStandardBuyOut = TextEditingController();
  TextEditingController controllerStandardSendValue = TextEditingController();
  TextEditingController controllerStandardPersonalDelivery = TextEditingController();
  TextEditingController controllerStandardAmountRSD = TextEditingController();
  TextEditingController controllerStandardFinalAmount = TextEditingController();
  TextEditingController controllerSpecialReturnReceipt = TextEditingController();
  TextEditingController controllerSpecialBackDocumentation = TextEditingController();
  TextEditingController controllerSpecialPaidResponse = TextEditingController();
  TextEditingController controllerSpecialSMSReports = TextEditingController();
  TextEditingController controllerSpecialBuyOut = TextEditingController();
  TextEditingController controllerSpecialSendValue = TextEditingController();
  TextEditingController controllerSpecialPersonalDelivery = TextEditingController();
  TextEditingController controllerSpecialAmountRSD = TextEditingController();
  TextEditingController controllerSpecialFinalAmount = TextEditingController();
  String cutStandardRSD = '';
  String cutSpecialRSD = '';
  String cutSpecialAdditionalServicesRSD = '';
  String cutStandardAdditionalServicesRSD = '';
  int finalStandardAmountNote = 0;
  int finalSpecialAmountNote = 0;
  String startingValueStandardWeight = "";
  String startingValueStandardDelivery = "";
  String startingValueSpecialDelivery = "";
  String startingValueSpecialType = "";
  String label = '';
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      kHeadingMessage,
                      style: TextStyle(color: Color(0xffB59F80), fontSize: 32),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingContainer(label: kStandardDelivery),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 177,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kDeliveryMass,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 20, left: 30, right: 30),
                      child: Container(
                        width: 450,
                        height: 60,
                        padding: EdgeInsets.only(left: 8, top: 8),
                        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 8, left: 30),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            onChanged: (String? newValue) {
                              setState(() {
                                Provider.of<Variables>(context, listen: false);
                                context.read<Variables>().startingValueStandardWeight = newValue!;
                              });
                            },
                            hint: context.read<Variables>().startingValueStandardWeight == ""
                                ? Text("Izaberite", style: TextStyle(fontSize: 14))
                                : Text(context.read<Variables>().startingValueStandardWeight, style: TextStyle(fontSize: 14)),
                            items: <String>[
                              '',
                              '0kg - 0.5kg',
                              '0.5kg - 1kg',
                              '1kg - 2kg',
                              '2kg - 5kg',
                              '5kg - 10kg',
                              '10kg - 15kg',
                              '15kg - 20kg',
                              '20kg - 30kg',
                              '30kg - 50kg'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 177,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kDelivery,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 20, left: 30, right: 30),
                      child: Container(
                        width: 450,
                        height: 60,
                        padding: EdgeInsets.only(left: 8, top: 8),
                        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 8, left: 30),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            onChanged: (String? newValue) {
                              setState(() {
                                Provider.of<Variables>(context, listen: false);
                                context.read<Variables>().startingValueStandardDelivery = newValue!;
                              });
                            },
                            hint: context.read<Variables>().startingValueStandardDelivery == ""
                                ? Text("Izaberite uslugu", style: TextStyle(fontSize: 14))
                                : Text(context.read<Variables>().startingValueStandardDelivery, style: TextStyle(fontSize: 14)),
                            items: <String>['', 'Danas za danas', 'Danas za sutra do 12h', 'Danas za sutra do 18h']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                enabled: value == 'Danas za sutra do 12h' ? false : true,
                                value: value,
                                child: Text(
                                  value,
                                  style: value == 'Danas za sutra do 12h' ? TextStyle(color: Colors.black12) : TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 177,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kRSD,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, bottom: 20),
                      child: CustomInputField(
                        label: kRSD,
                        controller: controllerStandardAmountRSD,
                        startingValueStandardWeight: startingValueStandardWeight,
                        startingValueStandardDelivery: startingValueStandardDelivery,
                      ),
                    ),
                  ],
                ),
                AdditionalServicesColumn(
                  isClicked: isClicked,
                  isStandard: true,
                  controllerBackDocumentation: context.read<Variables>().controllerStandardBackDocumentation,
                  controllerBuyOut: context.read<Variables>().controllerStandardBuyOut,
                  controllerPaidResponse: context.read<Variables>().controllerStandardPaidResponse,
                  controllerPersonalDelivery: context.read<Variables>().controllerStandardPersonalDelivery,
                  controllerReturnReceipt: context.read<Variables>().controllerStandardReturnReceipt,
                  controllerSendValue: context.read<Variables>().controllerStandardSendValue,
                  controllerSMSReports: context.read<Variables>().controllerStandardSMSReports,
                  controllerFinalAmount: context.read<Variables>().controllerStandardFinalAmount,
                  controllerStandardAmountRSD: context.read<Variables>().controllerStandardAmountRSD,
                  controllerSpecialAmountRSD: context.read<Variables>().controllerSpecialAmountRSD,
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingContainer(label: kSpecialDelivery),
                    SizedBox(height: 20),
                    Container(
                      width: 177,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kDeliveryType,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 20, left: 30, right: 30),
                      child: Container(
                        width: 450,
                        height: 60,
                        padding: EdgeInsets.only(left: 8, top: 8),
                        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 8, left: 30),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            onChanged: (String? newValue) {
                              setState(() {
                                context.read<Variables>().startingValueSpecialType = newValue!;
                              });
                            },
                            hint: context.read<Variables>().startingValueSpecialType == ""
                                ? Text("Izaberite", style: TextStyle(fontSize: 14))
                                : Text(context.read<Variables>().startingValueSpecialType, style: TextStyle(fontSize: 14)),
                            items: <String>[
                              '',
                              'Bicikl',
                              'Televizor do 55 incha',
                              'Guma putnička',
                              'Guma poluteretna',
                              'Guma teretna',
                              'Guma putnička sa felnom',
                              'Guma poluteretna sa felnom',
                              'Guma teretna sa felnom',
                              'Traktorska guma',
                              'Traktorska guma sa felnom',
                              'Menjač manji',
                              'Menjač automatski',
                              'Auto motor'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kDelivery,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 20, left: 30, right: 30),
                      child: Container(
                        width: 450,
                        height: 60,
                        padding: EdgeInsets.only(left: 8, top: 8),
                        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 8, left: 30),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            onChanged: (String? newValue) {
                              setState(() {
                                context.read<Variables>().startingValueSpecialDelivery = newValue!;
                              });
                            },
                            hint: context.read<Variables>().startingValueSpecialDelivery == ""
                                ? Text("Izaberite uslugu", style: TextStyle(fontSize: 14))
                                : Text(context.read<Variables>().startingValueSpecialDelivery, style: TextStyle(fontSize: 14)),
                            items: <String>['', 'Danas za danas', 'Danas za sutra do 12h', 'Danas za sutra do 18h']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                enabled: value == 'Danas za sutra do 12h' ? false : true,
                                value: value,
                                child: Text(
                                  value,
                                  style: value == 'Danas za sutra do 12h' ? TextStyle(color: Colors.black12) : TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 177,
                      height: 19,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          kRSD,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, bottom: 20),
                      child: CustomInputFieldSpecial(
                        label: kRSD,
                        controller: controllerSpecialAmountRSD,
                        startingValueSpecialDelivery: startingValueSpecialDelivery,
                        startingValueSpecialType: startingValueSpecialType,
                      ),
                    ),
                  ],
                ),
                AdditionalServicesColumn(
                  isClicked: isClicked,
                  isStandard: false,
                  controllerBackDocumentation: context.read<Variables>().controllerSpecialBackDocumentation,
                  controllerBuyOut: context.read<Variables>().controllerSpecialBuyOut,
                  controllerPaidResponse: context.read<Variables>().controllerSpecialPaidResponse,
                  controllerPersonalDelivery: context.read<Variables>().controllerSpecialPersonalDelivery,
                  controllerReturnReceipt: context.read<Variables>().controllerSpecialReturnReceipt,
                  controllerSendValue: context.read<Variables>().controllerSpecialSendValue,
                  controllerSMSReports: context.read<Variables>().controllerSpecialSMSReports,
                  controllerFinalAmount: context.read<Variables>().controllerSpecialFinalAmount,
                  controllerStandardAmountRSD: context.read<Variables>().controllerStandardAmountRSD,
                  controllerSpecialAmountRSD: context.read<Variables>().controllerSpecialAmountRSD,
                ),
                SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 250,
                          color: Color(0xFFFF2121),
                          child: Padding(
                            padding: EdgeInsets.only(top: 11, bottom: 11),
                            child: Center(
                              child: Text(
                                kCheckPrice,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            cutStandardRSD = context.read<Variables>().controllerStandardAmountRSD.text.length == 10 ? context.read<Variables>().controllerStandardAmountRSD.text.substring(0, 3) : context.read<Variables>().controllerStandardAmountRSD.text.length == 11 ? context.read<Variables>().controllerStandardAmountRSD.text.substring(0, 4) : context.read<Variables>().controllerStandardAmountRSD.text.length == 0 ? "0" : "0";
                            cutStandardAdditionalServicesRSD = context.read<Sum>().sumStandard.text.length == 10 ? context.read<Sum>().sumStandard.text.substring(0, 3) : context.read<Sum>().sumStandard.text.length == 11 ? context.read<Sum>().sumStandard.text.substring(0, 4) : "0";
                            finalStandardAmountNote = int.parse(cutStandardRSD) + int.parse(cutStandardAdditionalServicesRSD);
                            cutSpecialRSD = context.read<Variables>().controllerSpecialAmountRSD.text.length == 10 ? context.read<Variables>().controllerSpecialAmountRSD.text.substring(0, 3) : context.read<Variables>().controllerSpecialAmountRSD.text.length == 11 ? context.read<Variables>().controllerSpecialAmountRSD.text.substring(0, 4) : context.read<Variables>().controllerStandardAmountRSD.text.length == 0 ? "0" : "0";
                            cutSpecialAdditionalServicesRSD = context.read<Sum>().sumSpecial.text.length == 10 ? context.read<Sum>().sumSpecial.text.substring(0, 3) : context.read<Sum>().sumSpecial.text.length == 11 ? context.read<Sum>().sumSpecial.text.substring(0, 4) : "0";
                            finalSpecialAmountNote = int.parse(cutSpecialRSD) + int.parse(cutSpecialAdditionalServicesRSD);
                            isClicked = true;
                            print("CUT STANDARD: ${cutStandardRSD}");
                            print("CUT SPECIAL: ${cutSpecialRSD}");
                            print("STANDARD AMOUNT RSD: ${context.read<Variables>().controllerStandardAmountRSD.text}");
                            print("SPECIAL AMOUNT RSD: ${context.read<Variables>().controllerSpecialAmountRSD.text}");
                            print("SPECIAL: $finalSpecialAmountNote");
                            print("STANDARD $finalStandardAmountNote");

                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                if(isClicked)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(kStandardDelivery, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      if(context.read<Variables>().startingValueStandardWeight.isNotEmpty) Text(kDeliveryMass + context.read<Variables>().startingValueStandardWeight),
                      if(context.read<Variables>().startingValueStandardWeight.isNotEmpty) SizedBox(height: 15,),
                      if(context.read<Variables>().startingValueStandardDelivery.isNotEmpty) Text(kDelivery + context.read<Variables>().startingValueStandardDelivery),
                      if(context.read<Variables>().startingValueStandardDelivery.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardAmountRSD.text.isNotEmpty) Text(kStandardDeliveryNote + context.read<Variables>().controllerStandardAmountRSD.text),
                      if(context.read<Variables>().controllerStandardAmountRSD.text.isNotEmpty) SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardReturnReceipt.text.isNotEmpty) Text(kReturnReceipt + context.read<Variables>().controllerStandardReturnReceipt.text),
                      if(context.read<Variables>().controllerStandardReturnReceipt.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardBackDocumentation.text.isNotEmpty) Text(kBackDocumentation + context.read<Variables>().controllerStandardBackDocumentation.text),
                      if(context.read<Variables>().controllerStandardBackDocumentation.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardPaidResponse.text.isNotEmpty) Text(kPaidResponse + context.read<Variables>().controllerStandardPaidResponse.text),
                      if(context.read<Variables>().controllerStandardPaidResponse.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardSMSReports.text.isNotEmpty) Text(kSMSReports + context.read<Variables>().controllerStandardSMSReports.text),
                      if(context.read<Variables>().controllerStandardSMSReports.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardBuyOut.text.isNotEmpty) Text(kBuyOut + context.read<Variables>().controllerStandardBuyOut.text),
                      if(context.read<Variables>().controllerStandardBuyOut.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardSendValue.text.isNotEmpty) Text(kSendValue + context.read<Variables>().controllerStandardSendValue.text),
                      if(context.read<Variables>().controllerStandardSendValue.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerStandardPersonalDelivery.text.isNotEmpty) Text(kPersonalDelivery + context.read<Variables>().controllerStandardPersonalDelivery.text),
                      Text("Ukupna vrednost Vaše pošiljke iznosi $finalStandardAmountNote.00 RSD"),
                      SizedBox(height: 40),
                      Text(kSpecialDelivery, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      if(context.read<Variables>().startingValueSpecialType.isNotEmpty) Text(kDeliveryMass + context.read<Variables>().startingValueSpecialType),
                      if(context.read<Variables>().startingValueSpecialType.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().startingValueSpecialDelivery.isNotEmpty) Text(kDelivery + context.read<Variables>().startingValueSpecialDelivery),
                      if(context.read<Variables>().startingValueSpecialDelivery.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialAmountRSD.text.isNotEmpty) Text(kSpecialDeliveryNote + context.read<Variables>().controllerSpecialAmountRSD.text),
                      if(context.read<Variables>().controllerSpecialAmountRSD.text.isNotEmpty) SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialReturnReceipt.text.isNotEmpty) Text(kReturnReceipt + context.read<Variables>().controllerSpecialReturnReceipt.text),
                      if(context.read<Variables>().controllerSpecialReturnReceipt.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialBackDocumentation.text.isNotEmpty) Text(kBackDocumentation + context.read<Variables>().controllerSpecialBackDocumentation.text),
                      if(context.read<Variables>().controllerSpecialBackDocumentation.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialPaidResponse.text.isNotEmpty) Text(kPaidResponse + context.read<Variables>().controllerSpecialPaidResponse.text),
                      if(context.read<Variables>().controllerSpecialPaidResponse.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialSMSReports.text.isNotEmpty) Text(kSMSReports + context.read<Variables>().controllerSpecialSMSReports.text),
                      if(context.read<Variables>().controllerSpecialSMSReports.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialBuyOut.text.isNotEmpty) Text(kBuyOut + context.read<Variables>().controllerSpecialBuyOut.text),
                      if(context.read<Variables>().controllerSpecialBuyOut.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialSendValue.text.isNotEmpty) Text(kSendValue + context.read<Variables>().controllerSpecialSendValue.text),
                      if(context.read<Variables>().controllerSpecialSendValue.text.isNotEmpty)SizedBox(height: 15,),
                      if(context.read<Variables>().controllerSpecialPersonalDelivery.text.isNotEmpty) Text(kPersonalDelivery + context.read<Variables>().controllerSpecialPersonalDelivery.text),
                      Text("Ukupna vrednost vaše pošiljke iznosi $finalSpecialAmountNote.00 RSD"),
                      SizedBox(height: 40),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0, right: 20),
                        child: Text(konClickTermsMessage, style: TextStyle(color: Colors.black, fontSize: 20), textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
