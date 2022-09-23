import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_mobile_app/logic/shared_prefs.dart';
import 'package:flex_mobile_app/screens/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../logic/user_auth.dart';

class SaveDataScreen extends StatefulWidget {
  const SaveDataScreen({Key? key}) : super(key: key);

  @override
  State<SaveDataScreen> createState() => _SaveDataScreenState();
}

bool isEnabled = false;

class _SaveDataScreenState extends State<SaveDataScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController nameSurnameController = TextEditingController(text: SharedPrefs().getValue().nameSurname);
    TextEditingController cityController = TextEditingController(text: SharedPrefs().getValue().city);
    TextEditingController addressController = TextEditingController(text: SharedPrefs().getValue().address);
    TextEditingController homeNumberController = TextEditingController(text: SharedPrefs().getValue().homeNumber);
    TextEditingController postalNumberController = TextEditingController(text: SharedPrefs().getValue().postalNumber);
    TextEditingController phoneController = TextEditingController(text: SharedPrefs().getValue().phone);
    TextEditingController contactController = TextEditingController(text: SharedPrefs().getValue().contactPerson);


    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8f4f4),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 40, left: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Container(
                      color: Color(0xfff8f4f4),
                      width: 300,
                      height: 80,
                      child: Text("POPUNITE FORMU I SAČUVAJTE SVOJE PODATKE", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffc0ad93), fontSize: 24), textAlign: TextAlign.center,)
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: nameSurnameController,
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Ime i prezime",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: cityController,
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Grad",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: addressController,
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Adresa",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: homeNumberController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                style: TextStyle(fontSize: 16),
                                enabled: isEnabled,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Kućni broj",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: postalNumberController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Poštanski broj",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: phoneController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Telefon",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: TextFormField(
                                controller: contactController,
                                style: TextStyle(fontSize: 16),
                                cursorColor: Colors.black,
                                enabled: isEnabled,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Kontakt osoba",
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                          ),
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         padding: EdgeInsets.only(left: 10),
                  //         child: Center(
                  //           child: Container(
                  //             child: TextFormField(
                  //               controller: emailController,
                  //               style: TextStyle(fontSize: 16),
                  //               cursorColor: Colors.black,
                  //               enabled: isEnabled,
                  //               decoration: InputDecoration(
                  //                   border: InputBorder.none,
                  //                   hintText: "Email",
                  //                   enabledBorder: InputBorder.none),
                  //             ),
                  //           ),
                  //         ),
                  //         height: 55,
                  //         decoration: BoxDecoration(
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.1),
                  //               spreadRadius: 5,
                  //               blurRadius: 7,
                  //               offset: Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //           color: Colors.white,
                  //           border: Border.all(color: Colors.white),
                  //           // borderRadius: BorderRadius.circular(40)
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: GestureDetector(
                      onTap: () async {
                        setState(() {
                          if(isEnabled == true){
                            isEnabled = false;
                          }else if(isEnabled == false){
                            isEnabled = true;
                          }
                        });
                        UserAuth userAuthService = UserAuth(
                            firebaseAuth: FirebaseAuth.instance,
                            fireStore: FirebaseFirestore.instance);
                          await userAuthService.updateUserData(
                              nameSurnameController.text,
                              cityController.text,
                              addressController.text,
                              homeNumberController.text,
                              postalNumberController.text,
                              phoneController.text,
                              contactController.text,
                          );
                        await SharedPrefs().updateValue(
                            nameSurnameController.text,
                            cityController.text,
                            addressController.text,
                            homeNumberController.text,
                            postalNumberController.text,
                            phoneController.text,
                            contactController.text,
                        );
                        setState(() {
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 260,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.red,
                            border: Border.all(color: Colors.white),
                            // borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(
                            child: !isEnabled ? Text("IZMENI PODATKE",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ) : Text("SACUVAJ PODATKE",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 8),
                    child: Text("ili", style: TextStyle(fontSize: 16, color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: GestureDetector(
                      onTap: () async {
                        await SharedPrefs().prefs?.clear();
                        print("ERASED PREF: ${nameSurnameController.text}");
                        print("ERASED PREF: ${cityController.text}");
                        print("ERASED PREF: ${addressController.text}");
                        setState(() {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                              LoginScreen()), (Route<dynamic> route) => false);
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 260,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.red,
                          border: Border.all(color: Colors.white),
                          // borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(
                          child: Text("ODJAVI SE",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
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
