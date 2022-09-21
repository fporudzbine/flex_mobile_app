import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 20),
                child: Container(
                    width: 300,
                    height: 40,
                    child: Text(
                      "CENOVNIK USLUGA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffc0ad93),
                          fontSize: 24),
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                color: Color(0xffc0ad93),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text(
                        'Danas za danas',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Danas za sutra',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Dodatne usluge',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Specijalne usluge',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Table(
                                  columnWidths: {
                                    0: FixedColumnWidth(110.0),
                                  },
                                  border: TableBorder.all(
                                    width: 0.5,
                                    color: Colors.blueGrey
                                  ),
                                  children: [
                                    TableRow(
                                        decoration:
                                            BoxDecoration(color: Color(0xffe8e4e4)),
                                        children: [
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Masa posiljke',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Cena bez PDV',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Cena sa PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                        ]),
                                    TableRow(
                                        children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8,
                                            top: 15,
                                            bottom: 15),
                                        child: Text('Do 0,5kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('500,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('100,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('600,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ],
                                    decoration: BoxDecoration(color: Colors.white10)
                                    ),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 0,5kg do 1kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('550,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('110,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('660,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 1kg do 2kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('583,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('116,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('700,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 2kg do 5kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('691,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('138,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('830,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 5kg do 10kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('825,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('165,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('990,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 10kg do 15kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.016,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('203,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.220,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 15kg do 20kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.058,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('211,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.270,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 20kg do 30kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.216,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('243,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.460,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 30kg do 50kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.508,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('301,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.810,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Preko 50kg',
                                              textAlign: TextAlign.center),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Table(
                                  columnWidths: {
                                    0: FixedColumnWidth(110.0),
                                  },
                                  border: TableBorder.all(
                                      width: 0.5,
                                      color: Colors.blueGrey
                                  ),
                                  children: [
                                    TableRow(
                                        decoration:
                                        BoxDecoration(color: Color(0xffe8e4e4)),
                                        children: [
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Masa posiljke',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Cena bez PDV',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Cena sa PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                        ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8,
                                            top: 15,
                                            bottom: 15),
                                        child: Text('Do 0,5kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 0,5kg do 1kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 1kg do 2kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 2kg do 5kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 5kg do 10kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 10kg do 15kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 15kg do 20kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 20kg do 30kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Od 30kg do 50kg',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Preko 50kg',
                                              textAlign: TextAlign.center),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('222',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Table(
                                  columnWidths: {
                                    0: FixedColumnWidth(110.0),
                                  },
                                  border: TableBorder.all(
                                      width: 0.5,
                                      color: Colors.blueGrey
                                  ),
                                  children: [
                                    TableRow(
                                        decoration:
                                            BoxDecoration(color: Color(0xffe8e4e4)),
                                        children: [
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Masa posiljke',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Cena bez PDV',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Cena sa PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                        ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8,
                                            top: 15,
                                            bottom: 15),
                                        child: Text('SMS izvestaj',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('12,50 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('2,50 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('15,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Potvrda o urucenju',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('100,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('20,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('120,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Licno',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('100,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('20,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('120,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(
                                        children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Potpisivanje dodatne dokumentacije',
                                            textAlign: TextAlign.center),
                                      ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('100,00 RSD',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('20,00 RSD',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('120,00 RSD',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Placeni odgovor',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('166,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('33,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('200,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Lezarina po danu',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('20,83 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('4,17 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('25,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Otkupnina',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Osiguranje vrednosti sadrzaja posiljke',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('222',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Table(
                                  columnWidths: {
                                    0: FixedColumnWidth(110.0),
                                  },
                                  border: TableBorder.all(
                                      width: 0.5,
                                      color: Colors.blueGrey
                                  ),
                                  children: [
                                    TableRow(
                                        decoration:
                                        BoxDecoration(color: Color(0xffe8e4e4)),
                                        children: [
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Masa posiljke',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Cena bez PDV',
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Cena sa PDV",
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                        ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8,
                                            top: 15,
                                            bottom: 15),
                                        child: Text('Bicikl',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.383,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('276,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.660,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Televizor do 55 incha',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('725,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('145,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('870,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Guma putnicka',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('333,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('66,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('400,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Guma poluteretna',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('641,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('128,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('770,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Guma teretna',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.325,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('265,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.590,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Guma putnicka sa felnom',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('425,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('85,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('510,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Guma poluteretna sa felnom',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('866,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('173,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.040,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Guma teretna sa felnom',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.516,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('303,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.820,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Traktorska guma',
                                            textAlign: TextAlign.center),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.116,67 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('223,33 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('1.340,00 RSD',
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ]),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Traktorska guma sa felnom',
                                              textAlign: TextAlign.center),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1.466,67 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('293,33 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1.760,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Menjac manji',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1.291,67 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('258,33 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1.550,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Menjac automatski',
                                              textAlign: TextAlign.center),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('4.200,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('840,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('5.040,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Auto motor',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('4.225,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('845,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('5.070,00 RSD',
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
