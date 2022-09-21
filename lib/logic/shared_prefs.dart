import 'package:flex_mobile_app/models/user.dart';
import 'package:flex_mobile_app/screens/registration_screen/registration_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{
  SharedPrefs._private();

  SharedPreferences? prefs;

  factory SharedPrefs() {
    if (!GetIt.instance.isRegistered<SharedPrefs>()){
      GetIt.instance.registerSingleton(SharedPrefs._private());
    }
    return GetIt.instance<SharedPrefs>();
  }

  void init() async {
    prefs = await SharedPreferences.getInstance();
  }

   setValue (
        String nameSurname,
        String regUserName,
        String email,
        String regPassword,
        String city,
        String address,
        String homeNumber,
        String postalNumber,
        String phone,
        String contactPerson
       ) async {
    await prefs?.setString("nameSurname", nameSurname);
    await prefs?.setString("username", regUserName);
    await prefs?.setString("email", email);
    await prefs?.setString("password", regPassword);
    await prefs?.setString("city", city);
    await prefs?.setString("address", address);
    await prefs?.setString("homeNumber", homeNumber);
    await prefs?.setString("postalNumber", postalNumber);
    await prefs?.setString("phone", phone);
    await prefs?.setString("contactPerson", contactPerson);
  }
  updateValue (
      String nameSurname,
      String city,
      String address,
      String homeNumber,
      String postalNumber,
      String phone,
      String contactPerson,
  ) async {
    await prefs?.setString("nameSurname", nameSurname);
    await prefs?.setString("city", city);
    await prefs?.setString("address", address);
    await prefs?.setString("homeNumber", homeNumber);
    await prefs?.setString("postalNumber", postalNumber);
    await prefs?.setString("phone", phone);
    await prefs?.setString("contactPerson", contactPerson);
  }

  UserModel getValue () {
    String? nameSurname = prefs?.getString("nameSurname");
    String? username = prefs?.getString("username");
    String? email = prefs?.getString("email");
    String? password = prefs?.getString("password");
    String? city = prefs?.getString("city");
    String? address = prefs?.getString("address");
    String? homeNumber = prefs?.getString("homeNumber");
    String? postalNumber = prefs?.getString("postalNumber");
    String? phone = prefs?.getString("phone");
    String? contactPerson = prefs?.getString("contactPerson");
    return UserModel(nameSurname: nameSurname ?? "",username: username ?? "", email: email ?? "", password: password ?? "", city: city ?? "", address: address ?? "", homeNumber: homeNumber ?? "", postalNumber: postalNumber ?? "", phone: phone ?? "", contactPerson: contactPerson ?? "");
  }


}