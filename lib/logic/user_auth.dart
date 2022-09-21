import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_mobile_app/models/save_data.dart';

import '../models/user.dart';

class UserAuth {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore fireStore;

  UserAuth({required this.firebaseAuth, required this.fireStore});

  Future<UserModel> signInWithCredentials(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      var document = await fireStore
          .collection('users')
          .doc(firebaseAuth.currentUser?.uid ?? '')
          .get();
      var data = document.data();
      return UserModel(
          nameSurname: data!['nameSurname'],
          username: data['username'],
          email: data['email'],
          password: data['password'],
          city: data['city'],
          address: data['address'],
          homeNumber: data['homeNumber'],
          postalNumber: data['postalNumber'],
          phone: data['phone'],
          contactPerson: data['contactPerson']);
    } catch (e) {
      return UserModel(
          nameSurname: "",
          username: "",
          email: "",
          phone: "",
          postalNumber: "",
          homeNumber: "",
          address: "",
          password: '',
          city: "",
          contactPerson: "");
    }
  }

  Future<SaveDataModel> updateUserData(
    String nameSurname,
    String city,
    String address,
    String homeNumber,
    String postalNumber,
    String phone,
    String contactPerson,
  ) async {
    try {
      DocumentReference usersDocument =
          fireStore.collection('users').doc(firebaseAuth.currentUser?.uid ?? '');
      Map<String, dynamic> data = <String, dynamic>{
        "nameSurname": nameSurname,
        "city": city,
        "address": address,
        "homeNumber": homeNumber,
        "postalNumber": postalNumber,
        "phone": phone,
        "contactPerson": contactPerson,
      };
      await usersDocument.update(data);
      return SaveDataModel(
          nameSurname: data['nameSurname'],
          city: data['city'],
          address: data['address'],
          homeNumber: data['homeNumber'],
          postalNumber: data['postalNumber'],
          phone: data['phone'],
          contactPerson: data['contactPerson'],
      );
    } catch (e) {
      return SaveDataModel(
          nameSurname: "",
          city: "",
          address: "",
          homeNumber: "",
          postalNumber: "",
          phone: "",
          contactPerson: "",
      );
    }
  }

  Future<UserCredential> signUp(
      String email,
      String password,
      String nameSurname,
      String username,
      String city,
      String address,
      String homeNumber,
      String postalNumber,
      String phone,
      String contactPerson) async {
    var createdUser = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    DocumentReference usersDocument =
        fireStore.collection('users').doc(createdUser.user?.uid);

    Map<String, dynamic> data = <String, dynamic>{
      "nameSurname": nameSurname,
      "username": username,
      "email": email,
      "password": password,
      "city": city,
      "address": address,
      "homeNumber": homeNumber,
      "postalNumber": postalNumber,
      "phone": phone,
      "contactPerson": contactPerson,
    };
    await usersDocument
        .set(data)
        .whenComplete(() => print("Notes item added to the database"))
        .catchError((e) => print(e));
    return createdUser;
  }

  Future<Future<List>> signOut() async {
    return Future.wait([firebaseAuth.signOut()]);
  }

  Future<bool> isSignedIn() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }
}
