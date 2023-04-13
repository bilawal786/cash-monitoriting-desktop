import 'dart:convert';

import 'package:http/http.dart'as http;

import 'package:admin_dashboard/src/provider/report_provider/report_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/color.dart';
import '../../constant/string.dart';
import '../../constant/text.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {


  var reportsModel;

  Future<void> getReports(month, year) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.get(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/reports/$month/$year'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("Get reports Api is working");
      setState(() {
        reportsModel = jsonDecode(response.body) as Map<String, dynamic>;
      });
    }
    else {
      debugPrint("Get reports Api is not working");
    }
    print(response.body);
  }



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
  String defaultMonthNo = "01";
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

  bool initialReport = false;
  @override
  Widget build(BuildContext context) {
    final reportsData = Provider.of<ReportProvider>(context);
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
                        if(newValue == 'Jan'){
                          defaultMonthNo = '01';
                        } else if(newValue == 'Fév'){
                          defaultMonthNo = '02';
                        } else if(newValue == 'Mar'){
                          defaultMonthNo = '03';
                        } else if(newValue == 'Avr'){
                          defaultMonthNo = '04';
                        } else if(newValue == 'Peut'){
                          defaultMonthNo = '05';
                        } else if(newValue == 'Juin'){
                          defaultMonthNo = '06';
                        } else if(newValue == 'juillet'){
                          defaultMonthNo = '07';
                        } else if(newValue == 'Août'){
                          defaultMonthNo = '08';
                        } else if(newValue == 'Sep'){
                          defaultMonthNo = '09';
                        } else if(newValue == 'Oct'){
                          defaultMonthNo = '10';
                        } else if(newValue == 'Nov'){
                          defaultMonthNo = '11';
                        } else if(newValue == 'Déc'){
                          defaultMonthNo = '12';
                        }
                        defaultMonthValue = newValue!;
                          print(defaultMonthNo);
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
          if(initialReport == true)
          if(reportsData.reportsModel == null) ...[
            Center(
              child: CupertinoActivityIndicator(
                radius: 14,
              ),
            ),
          ] else ... [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text("Solde d'ouverture",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                              // FxBox.w28,
                              Text("${reportsData.reportsModel['this_month_opening_balance']} €",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                              // FxBox.w4,
                            ],
                          ),
                          FxBox.h24,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text("Solde de clôture",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                              FxBox.w28,
                              Text("${reportsData.reportsModel['this_month_closing_balancee']} €",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],
                          ),
                          // ListView.builder(
                          //   shrinkWrap: true,
                          //   physics: const NeverScrollableScrollPhysics(),
                          //   itemCount: 2,
                          //   itemBuilder: (_, index) => Column(
                          //     children: <Widget>[
                          //       Row(
                          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //         children: <Widget>[
                          //           const Text("Opening Balance",
                          //             style: TextStyle(
                          //               fontSize: 14,
                          //               fontWeight: FontWeight.bold,
                          //             ),),
                          //           FxBox.w28,
                          //           const Text("2300€",
                          //             style: TextStyle(
                          //               fontSize: 14,
                          //               fontWeight: FontWeight.bold,
                          //             ),),
                          //         ],
                          //       ),
                          //       FxBox.h16,
                          //     ],
                          //   ),),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  <Widget>[
                              SizedBox(
                                // color: Colors.red,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                     Text("Catégorie",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ),
                              // FxBox.w28,

                               SizedBox(
                                 // color: Colors.red,
                                 width: 150,
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: const <Widget>[
                                     Text("Solde d'ouverture",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                   ],
                                 ),
                               ),
                              // FxBox.w28,
                              SizedBox(
                                // color: Colors.red,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text("Solde de clôture",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          FxBox.h16,
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //   children:  <Widget>[
                          //     Text("${reportsData.reportsModel[]}",
                          //       style: TextStyle(
                          //         fontSize: 14,
                          //         fontWeight: FontWeight.bold,
                          //       ),),
                          //     FxBox.w28,
                          //     const Text("Opening Balance",
                          //       style: TextStyle(
                          //         fontSize: 14,
                          //         fontWeight: FontWeight.bold,
                          //       ),),
                          //     FxBox.w28,
                          //     const Text("Closing Balance",
                          //       style: TextStyle(
                          //         fontSize: 14,
                          //         fontWeight: FontWeight.bold,
                          //       ),),
                          //   ],
                          // ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: reportsData.reportsModel!['expenses'].length,
                            itemBuilder: (_, index) => Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      // color: Colors.red,
                                      width: 150,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${reportsData.reportsModel!['expenses'][index]['category_name']}",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    // FxBox.w10,
                                    SizedBox(
                                      // color: Colors.red,
                                      width: 150,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${reportsData.reportsModel!['expenses'][index]['starting_balance']} €",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    // FxBox.w28,
                                    SizedBox(
                                      // color: Colors.red,
                                      width: 150,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${reportsData.reportsModel!['expenses'][index]['price']} €",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                        ],
                                      ),
                                    ),
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
          Provider.of<ReportProvider>(context,listen: false).getReports(context, defaultMonthNo, defaultYearValue).then((value) =>
              setState(() {
                initialReport = true;
              })
          );
        },
        text: 'Obtenir le rapport',
      ),
    );
  }
}
