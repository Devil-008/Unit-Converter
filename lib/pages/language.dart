import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Rx<Locale> locale = const Locale('en', 'US').obs;

  void toggleLocale() {
    if (locale.value.languageCode == 'en') {
      locale.value = const Locale('es', 'ES');
    } else if (locale.value.languageCode == 'es') {
      locale.value = const Locale('en', 'US');
    } else if (locale.value.languageCode == 'hi') {
      locale.value = const Locale('bn', 'BD');
    } else if (locale.value.languageCode == 'bn') {
      locale.value = const Locale('hi', 'IN');
    }
  }
}

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Hello World',
          'hello': 'Hello',
        },
        'es_ES': {
          'title': 'Hola Mundo',
          'hello': 'Hola',
        },
        'bn_BD': {
          'title': 'হ্যালো ওয়ার্ল্ড',
          'hello': 'হ্যালো',
        },
        'hi_IN': {
          'title': 'नमस्ते दुनिया',
          'hello': 'नमस्ते',
        },
      };
}

Widget build(BuildContext context) {
  final LocaleController localeController = Get.put(LocaleController());
  return Obx(() => GetMaterialApp(
        translations: Messages(), // Your translations
        locale: localeController.locale.value,
      ));
}
