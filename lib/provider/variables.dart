import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Variables with ChangeNotifier, DiagnosticableTreeMixin {
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
  bool isCheckedReturnReceipt = false;
  bool isCheckedBackDocumentation = false;
  bool isCheckedPaidResponse = false;
  bool isCheckedSMSReports = false;
  bool isCheckedPersonalDelivery = false;
  bool isStandard = false;
  String cutRSD = '';
  int valueChecked = 0;
  int valueEntered = 0;
  String startingValueStandardWeight = "";
  String startingValueStandardDelivery = "";
  String startingValueSpecialDelivery = "";
  String startingValueSpecialType = "";

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', 0));
  }
}