import 'package:flex_mobile_app/screens/price_calculator_screen/widgets/sum_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../labels.dart';
import '../widgets/heading_container.dart';
import 'additional_service_row.dart';

class AdditionalServicesColumn extends StatefulWidget {
  AdditionalServicesColumn({
    required this.controllerReturnReceipt,
    required this.controllerBackDocumentation,
    required this.controllerPaidResponse,
    required this.controllerSMSReports,
    required this.controllerBuyOut,
    required this.controllerSendValue,
    required this.controllerPersonalDelivery,
    required this.controllerFinalAmount,
    required this.controllerStandardAmountRSD,
    required this.controllerSpecialAmountRSD,
    this.isStandard = true,
    this.isClicked = false,
  }) : super();

  final TextEditingController controllerReturnReceipt;
  final TextEditingController controllerBackDocumentation;
  final TextEditingController controllerPaidResponse;
  final TextEditingController controllerSMSReports;
  final TextEditingController controllerBuyOut;
  final TextEditingController controllerSendValue;
  final TextEditingController controllerPersonalDelivery;
  final TextEditingController controllerFinalAmount;
  final TextEditingController controllerStandardAmountRSD;
  final TextEditingController controllerSpecialAmountRSD;
  final bool isStandard;
  bool isClicked;

  @override
  State<AdditionalServicesColumn> createState() => _AdditionalServicesColumnState();
}

class _AdditionalServicesColumnState extends State<AdditionalServicesColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingContainer(label: kAdditionalServices),
        SizedBox(height: 60),
        AdditionalServicesRow(
          label: kReturnReceipt,
          controller: widget.controllerReturnReceipt,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kBackDocumentation,
          controller: widget.controllerBackDocumentation,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kPaidResponse,
          controller: widget.controllerPaidResponse,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kSMSReports,
          controller: widget.controllerSMSReports,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kBuyOut,
          isForBuyOut: true,
          controller: widget.controllerBuyOut,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kSendValue,
          isForBuyOut: true,
          controller: widget.controllerSendValue,
          isStandard: widget.isStandard,
        ),
        AdditionalServicesRow(
          label: kPersonalDelivery,
          controller: widget.controllerPersonalDelivery,
          isStandard: widget.isStandard,
        ),
        SizedBox(height: 30),
        SumRow(label: kSum, isStandard: widget.isStandard),
        SizedBox(height: 40),
      ],
    );
  }
}
