import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unitconverterapp/function/convert_functions.dart';
import '../controller/controller.dart';

class NextPage1 extends StatefulWidget {
  final String appBarName;
  final List<String> unitItems;

  NextPage1({super.key, required this.appBarName, required this.unitItems});

  @override
  State<NextPage1> createState() => _NextPage1State();
}

var unitConveterConroller = Get.put(ConvertController());

final formKey1 = GlobalKey<FormState>();
final formKey2 = GlobalKey<FormState>();

class _NextPage1State extends State<NextPage1> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text(widget.appBarName),
            centerTitle: true,
            backgroundColor: Colors.purple,
          ),
          body: Container(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(children: [
                TextFormField(
                  controller: unitConveterConroller.unitValue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'Enter Units To Convert',
                  ),
                  onChanged: (value) {
                    double.tryParse(value);
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 40),
                unitDropDownFrom(
                    unitItems: widget.unitItems,
                    unitConveterConroller: unitConveterConroller,
                    formKey1: formKey1),
                const SizedBox(height: 8),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.swap_horiz)),
                const SizedBox(height: 8),
                unitDropDownTo(
                    unitItems: widget.unitItems,
                    unitConveterConroller: unitConveterConroller,
                    formKey2: formKey2),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  icon: const Icon(Icons.swap_horiz),
                  label: const Text(
                    'CONVERT',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    var appBarName = widget.appBarName;
                    if (appBarName == 'Mass Converter') {
                      mConverter();
                    } else if (appBarName == 'Temperature Converter') {
                      tConverter();
                    } else if (appBarName == 'Speed Converter') {
                      sConverter();
                    } else if (appBarName == 'Length Converter') {
                      lConverter();
                    } else if (appBarName == 'Area Converter') {
                      aConverter();
                    } else if (appBarName == 'Frequency Converter') {
                      fConverter();
                    }
                    unitConveterConroller.isShowResult.value = true;
                  },
                ),
                const SizedBox(height: 15),
                if (unitConveterConroller.isShowResult.value)
                  Text(
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                      "Converted ${unitConveterConroller.fromUnit.value} to ${unitConveterConroller.toUnit.value}:${unitConveterConroller.result.value.toStringAsFixed(2)}")
              ]))),
    );
  }
}

Widget unitDropDownFrom(
    {required List<String> unitItems,
    required unitConveterConroller,
    required formKey1}) {
  return DropdownButtonFormField2<String>(
    key: formKey1,
    isExpanded: true,
    decoration: InputDecoration(
      // Add Horizontal padding using menuItemStyleData.padding so it matches
      // the menu padding when button's width is not specified.
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // Add more decoration..
    ),
    hint: const Text(
      'From',
      style: TextStyle(fontSize: 14),
    ),
    items: unitItems
        .map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ))
        .toList(),
    validator: (value) {
      if (value == null) {
        return 'Please select unit.';
      } else if (unitConveterConroller.toUnit.value ==
          unitConveterConroller.fromUnit.value) {
        return 'Please select different unit.';
      }
      return null;
    },
    onChanged: (newValue) {
      print("$newValue");
      unitConveterConroller.fromUnit.value = newValue.toString();
    },
    onSaved: (value) {
      // var selectedValue = value.toString();
    },
    buttonStyleData: const ButtonStyleData(
      padding: EdgeInsets.only(right: 8),
    ),
    iconStyleData: const IconStyleData(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 24,
    ),
    dropdownStyleData: DropdownStyleData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    menuItemStyleData: const MenuItemStyleData(
      padding: EdgeInsets.symmetric(horizontal: 16),
    ),
  );

//
}

Widget unitDropDownTo(
    {required List<String> unitItems,
    required unitConveterConroller,
    required formKey2}) {
  return DropdownButtonFormField2<String>(
    key: formKey2,
    isExpanded: true,
    decoration: InputDecoration(
      // Add Horizontal padding using menuItemStyleData.padding so it matches
      // the menu padding when button's width is not specified.
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // Add more decoration..
    ),
    hint: const Text(
      'To',
      style: TextStyle(fontSize: 14),
    ),
    items: unitItems
        .map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ))
        .toList(),
    validator: (value) {
      if (value == null) {
        return 'Please select unit.';
      } else if (unitConveterConroller.toUnit.value ==
          unitConveterConroller.fromUnit.value) {
        return 'Please select different unit.';
      }
      return null;
    },
    onChanged: (newValue) {
      print("$newValue");
      unitConveterConroller.toUnit.value = newValue.toString();
    },
    onSaved: (value) {
      var selectedValue = value.toString();
    },
    buttonStyleData: const ButtonStyleData(
      padding: EdgeInsets.only(right: 8),
    ),
    iconStyleData: const IconStyleData(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 24,
    ),
    dropdownStyleData: DropdownStyleData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    menuItemStyleData: const MenuItemStyleData(
      padding: EdgeInsets.symmetric(horizontal: 16),
    ),
  );
}
