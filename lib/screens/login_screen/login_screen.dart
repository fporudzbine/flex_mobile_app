import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_mobile_app/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flex_mobile_app/screens/registration_screen/registration_screen.dart';
import 'package:flex_mobile_app/logic/shared_prefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/user_auth.dart';
import '../../models/user.dart';
import '../../provider/variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
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
                  padding: EdgeInsets.only(top: 120.0),
                  child: Container(
                    color: Color(0xfff8f4f4),
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/flex_logo.png'),
                  ),
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
                        child: Center(child: Container(
                            height: 17,
                            width: 17,
                            child: Image.asset('assets/images/user_icon.png', color: Colors.grey,),)),
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
                                hintText: "Username",
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
                        padding: EdgeInsets.only(left: 15.0),
                        child: Center(child: Container(
                            height: 17,
                            width: 17,
                            child: Image.asset("assets/images/password_icon.png", color: Colors.grey,))),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 160,
                          child: TextFormField(
                            controller: passwordController,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
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
                    UserAuth userAuthService = UserAuth(firebaseAuth: FirebaseAuth.instance, fireStore: FirebaseFirestore.instance);
                    UserModel loggedUser = await userAuthService.signInWithCredentials(emailController.text, passwordController.text);
                    await SharedPrefs().setValue(
                        loggedUser.nameSurname,
                        loggedUser.username,
                        loggedUser.email,
                        loggedUser.password,
                        loggedUser.city,
                        loggedUser.address,
                        loggedUser.homeNumber,
                        loggedUser.postalNumber,
                        loggedUser.phone,
                        loggedUser.contactPerson,
                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
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
                      "PRIJAVI SE",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SizedBox(height: 40),
                Text("Nemas nalog?", style: TextStyle(fontSize: 14, color: Colors.grey),),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  },
                    child: Text("REGISTRUJ SE ODMAH",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
