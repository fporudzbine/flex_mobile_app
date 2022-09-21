import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_mobile_app/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flex_mobile_app/screens/login_screen/login_screen.dart';
import 'package:flex_mobile_app/logic/shared_prefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/user_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

TextEditingController nameSurnameController = TextEditingController();
TextEditingController regUserNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController regPasswordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController homeNumberController = TextEditingController();
TextEditingController postalNumberController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController contactPersonController = TextEditingController();

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8f4f4),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0, right: 300),
                  child: GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
                Container(
                  color: Color(0xfff8f4f4),
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/flex_logo.png'),
                ),
                SizedBox(height: 40),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/user_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: nameSurnameController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ime i prezime",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/user_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: regUserNameController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Korisnicko ime",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/email_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: emailController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                                height: 17,
                                width: 17,
                                child: Image.asset(
                                  "assets/images/password_icon.png",
                                  color: Colors.grey,
                                ))),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: regPasswordController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Lozinka",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                                height: 17,
                                width: 17,
                                child: Image.asset(
                                  "assets/images/password_icon.png",
                                  color: Colors.grey,
                                ))),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: confirmPasswordController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Potvrdi lozinku",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/city_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: cityController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Grad",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/address_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: addressController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Adresa",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/home_telephone_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: homeNumberController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Kućni broj",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/postal_number_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: postalNumberController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Poštanski broj",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/mobile_phone_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: phoneController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Telefon",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
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
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                            child: Container(
                          height: 17,
                          width: 17,
                          child: Image.asset(
                            'assets/images/contact_person_icon.png',
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: contactPersonController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Kontakt osoba",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () async {
                    UserAuth userAuthService = UserAuth(
                        firebaseAuth: FirebaseAuth.instance,
                        fireStore: FirebaseFirestore.instance);
                    await userAuthService.signUp(
                        emailController.text,
                        regPasswordController.text,
                        nameSurnameController.text,
                        regUserNameController.text,
                        cityController.text,
                        addressController.text,
                        homeNumberController.text,
                        postalNumberController.text,
                        phoneController.text,
                        contactPersonController.text);
                    print("REGISTRATION!!!!!");
                    print("REG EMAIL: ${emailController.text}");
                    print("REG CITY: ${cityController.text}");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    height: 60,
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
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: Text(
                      "REGISTRUJ SE",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
