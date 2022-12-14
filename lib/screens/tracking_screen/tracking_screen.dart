import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex_mobile_app/models/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../provider/variables.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  List<FormModel> forms = [];
  String _scanBarcode = 'Unknown';

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }
  Future<void> _launchUrl() async {
    await launchUrl(Uri.parse('$_scanBarcode'));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      _launchUrl();
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  Future<void> scanBarcodeNormal(String id) async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
      FirebaseFirestore.instance.collection('form').doc(id).update({
        'barcodeScanResult' : barcodeScanRes
      });
    });
  }

  Future<List<FormModel>> getForms() async {
    CollectionReference _collectionRef =
    FirebaseFirestore.instance.collection('form');
    QuerySnapshot querySnapshot = await _collectionRef.get();
    forms = querySnapshot.docs.map((doc) {
      FormModel form = FormModel(
        id: doc.id,
        senderNameSurname: doc['senderNameSurname'],
        senderCity: doc['senderCity'],
        senderAddress: doc['senderAddress'],
        senderHomeNumber: doc['senderHomeNumber'],
        senderPostalNumber: doc['senderPostalNumber'],
        senderPhone: doc['senderPhone'],
        senderContactPerson: doc['senderContactPerson'],
        senderEmail: doc['senderEmail'],
        senderNote: doc['senderNote'],
        receiverNameSurname: doc['receiverNameSurname'],
        receiverCity: doc['receiverCity'],
        receiverAddress: doc['receiverAddress'],
        receiverHomeNumber: doc['receiverHomeNumber'],
        receiverPostalNumber: doc['receiverPostalNumber'],
        receiverPhone: doc['receiverPhone'],
        receiverContactPerson: doc['receiverContactPerson'],
        receiverNote: doc['receiverNote'],
        packageNumber: doc['packageNumber'],
        packageDelivery: doc['packageDelivery'],
        packageWeight: doc['packageWeight'],
        packageContent: doc['packageContent'],
        packageBuyOut: doc['packageBuyOut'],
        packageValue: doc['packageValue'],
        additionalServices: doc['additionalServices'],
        packagePayment: doc['packagePayment'],
        bankAccountNumber: doc['bankAccountNumber'],
      );
      return form;
    }).toList();
    return forms;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FutureBuilder(
          future: getForms(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Container(
                  height: 160,
                  child: ListView.builder(
                    itemCount: forms.length,
                    itemBuilder: (context, i) {
                      return Container(
                        child: ListTile(
                          title: Text(forms[i].id),
                          trailing: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.red)),
                              onPressed: () {
                                scanBarcodeNormal(forms[i].id);
                              },
                              child: Text('Skeniraj barkod')),
                        ),
                      );
                    },
                  ),
                ),
              );
            } else if (snapshot.hasError){
              return Center(
                  child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
          child: Container(
            child: Center(
              child: TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Upisite broj posiljke",
                    enabledBorder: InputBorder.none),
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
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          child: Text("Sve moje po??iljke"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                          controller: context.read<Variables>().controllerPackageNumber,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            hintText: 'Upi??i broj po??iljke',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red
                                ),
                          ),
                        ),
                      ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                          child: Text("Zatvori"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                  );
                });
          },
        ),
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () => scanBarcodeNormal("bre"),
            child: Text('Skeniraj barkod')),
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () => scanQR(),
            child: Text('Skeniraj QR kod')),
        SizedBox(height: 10),
        // ElevatedButton(
        //     onPressed: () => startBarcodeScanStream(),
        //     child: Text('Start barcode scan stream')),
        Text('Rezultat skeniranja : $_scanBarcode\n',
            style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
