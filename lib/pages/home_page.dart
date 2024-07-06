import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:unitconverterapp/controller/controller.dart';
import 'package:unitconverterapp/pages/language.dart';
import 'package:unitconverterapp/pages/theme.dart';
import '../lists/item_list.dart';
import 'next_page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var convertController = Get.put(ConvertController());
  final LocaleController localeController = Get.put(LocaleController());
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'Unit Converter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w300,
            ),
          ),
          actions: [
            Switch(
              value: themeController.isDarkMode.value,
              onChanged: (value) {
                themeController.toggleTheme(value);
              },
            ),
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: " Change the language",
                      content: Text('select your language'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            localeController.toggleLocale();
                            Get.back();
                          },
                          child: Text('English'),
                        ),
                        TextButton(
                          onPressed: () {
                            localeController.toggleLocale();
                            Get.back();
                          },
                          child: Text('Hindi'),
                        ),
                        TextButton(
                          onPressed: () {
                            localeController.toggleLocale();
                            Get.back();
                          },
                          child: Text('Bengali'),
                        ),
                      ]);
                },
                icon: const Icon(Icons.settings)),
            const Tooltip(
              message: 'Settings',
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 0.98,
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Wrap(children: [
            ...itemlist.map((e) => eCard(
                image: e['image'],
                title: e['title'],
                context: context,
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NextPage1(
                                  appBarName: e['title'] == 'Area'
                                      ? "Area Conveter"
                                      : e['title'] == 'Speed'
                                          ? "Speed Converter"
                                          : e['title'] == 'Temperature'
                                              ? "Temperature Converter"
                                              : e['title'] == 'Length'
                                                  ? "Length Converter"
                                                  : e['title'] == 'Mass'
                                                      ? "Mass Converter"
                                                      : e['title'] == 'Frequency'
                                                          ? "Frequency Converter"
                                                          : e,
                                  unitItems: e['unitItems'],
                                )));
                    //-----------------------clear
                    convertController.unitValue.clear();
                    convertController.fromUnit.value = '';
                    convertController.toUnit.value = '';
                    convertController.result.value = 0.0;
                  });
                }))
          ]),
        ),
      ),
    );
  }
}

Widget eCard(
    {required String image,
    required String title,
    required BuildContext context,
    required VoidCallback onTap}) {
  return Column(children: [
    Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(8),
        height: 160,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 85,
                  width: 85,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ))
              ],
            )))
  ]);
}
