import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

import '../../constant/color.dart';
import '../../constant/string.dart';
import '../../constant/text.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  String defaultYearValue = "2023";
  final List<String> _yearList = [
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
    '2028',
    '2029',
    '2030',
    '2031',
    '2032',
  ];

  String defaultMonthValue = "Jan";
  final List<String> _monthList = [
    'Jan',
    'Fév',
    'Mar',
    'Avr',
    'Peut',
    'Juin',
    'juillet',
    'Août',
    'Sep',
    'Oct',
    'Nov',
    "Déc"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                    value: defaultYearValue,
                    isExpanded: true,
                    underline: const SizedBox.shrink(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _yearList.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        defaultYearValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              FxBox.w24,
              Expanded(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                    value: defaultMonthValue,
                    isExpanded: true,
                    underline: const SizedBox.shrink(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _monthList.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        defaultMonthValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              FxBox.w24,
              _getReport()
            ],
          ),
          FxBox.h20,
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(Strings.expenseReport,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis
                          ),),
                        FxBox.h20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Text("Id",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            FxBox.w28,
                            const Text("Titre",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            FxBox.w28,
                            const Text("Frais",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                        FxBox.h16,
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (_, index) => Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const Text("1",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  FxBox.w28,
                                  const Text("I Phone",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  FxBox.w28,
                                  const Text("2300€",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              FxBox.h16,
                            ],
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              FxBox.w32,
              Expanded(
                flex: 2,
                child: Card(
                  child:  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // ConstText.lightText(
                        //   text: Strings.expenseCategoryReport,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        const Text(Strings.expenseCategoryReport,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis
                          ),),
                        FxBox.h20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  <Widget>[
                            const Text("Id",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            FxBox.w28,
                            const Text("Catégorie",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            FxBox.w28,
                            const Text("Frais",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                        FxBox.h16,
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (_, index) => Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const Text("1",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  FxBox.w28,
                                  const Text("I Phone",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  FxBox.w28,
                                  const Text("2300€",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              FxBox.h16,
                            ],
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget _getReport() {
    return Align(
      alignment: Alignment.centerRight,
      child: FxButton(
        height: 50,
        color: ColorConst.primary,
        fullWidth: false,
        minWidth: MediaQuery.of(context).size.width / 7,
        onPressed: () {
          setState(() {});
        },
        text: 'Obtenir le rapport',
      ),
    );
  }
}
