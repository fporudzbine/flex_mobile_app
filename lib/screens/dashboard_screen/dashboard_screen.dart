import 'package:flex_mobile_app/screens/courier_invite_screen/courier_invite_screen.dart';
import 'package:flex_mobile_app/screens/price_calculator_screen/price_calculator_screen.dart';
import 'package:flex_mobile_app/screens/pricing_screen/pricing_screen.dart';
import 'package:flex_mobile_app/screens/save_data_screen/save_data_screen.dart';
import 'package:flex_mobile_app/screens/tracking_screen/tracking_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/shared_prefs.dart';
import '../../provider/variables.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    PricingScreen(),
    PriceCalculatorScreen(),
    CourierInviteScreen(),
    SaveDataScreen(),
    TrackingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("DASHBOARDNAMESURNAME");
    print(SharedPrefs().getValue().nameSurname);
    print("DASHBOARDCITY");
    print(SharedPrefs().getValue().city);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xfff8f4f4),
            body:  Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedFontSize: 10,
            selectedFontSize: 10,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/price_list_icon.png'),),
                label: 'Cenovnik',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/price_calculator_icon.png'),),
                label: 'Kalkulator cene',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/courier_invitation_icon.png'),),
                label: 'Pozivnica za kurira',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/remember_data_icon.png'),),
                label: 'Prijava',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/delivery_tracking_icon.png'),),
                label: 'Pracenje posiljke',
                backgroundColor: Colors.red,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xffc0ad93),
            onTap: _onItemTapped,
          ),
        ),
    );
  }
}
