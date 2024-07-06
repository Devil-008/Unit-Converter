import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvertController extends GetxController {
  RxBool isShowResult = false.obs;
  var result = 0.0.obs;
  var fromUnit = ''.obs;
  var toUnit = ''.obs;
  TextEditingController unitValue = TextEditingController();
}
