import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/dashboard/sales_analytics.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/dash_list_item.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/global_sale.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/sales_overview.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/vender_sales.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/vender_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class EcommerceDashboard extends StatefulWidget {
  const EcommerceDashboard({super.key});

  @override
  State<EcommerceDashboard> createState() => _EcommerceDashboardState();
}

class _EcommerceDashboardState extends State<EcommerceDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DashListItem(),
        FxBox.h24,
        Responsive.isWeb(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: VenderSalesReport(),
                  ),
                  FxBox.w24,
                  Expanded(
                    child: _reachdetails(),
                    //  Column(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Expanded(child: newUserBox()),
                    //         FxBox.w24,
                    //         Expanded(child: newsubcriptionBox()),
                    //       ],
                    //     ),
                    //     FxBox.h24,
                    //     totalsubcriptionBox(),
                    //   ],
                    // ),
                  ),
                  FxBox.w24,
                  const Expanded(
                    //flex: 2,
                    child: Salesanalytics(),
                  ),
                ],
              )
            : Column(
                children: [
                  const VenderSalesReport(),
                  FxBox.h24,
                  // Row(
                  //   children: [
                  //     Expanded(child: newUserBox()),
                  //     FxBox.w24,
                  //     Expanded(child: newsubcriptionBox()),
                  //   ],
                  // ),

                  // FxBox.h24,
                  // totalsubcriptionBox(),
                  _reachdetails(),
                  FxBox.h24,
                  const Salesanalytics(),
                ],
              ),
        FxBox.h24,
        Responsive.isWeb(context)
            ? Row(
                children: [
                  const Expanded(child: GlobalSale()),
                  FxBox.w24,
                  Expanded(child: _overViewChart()),
                ],
              )
            : Column(
                children: [
                  const GlobalSale(),
                  FxBox.h24,
                  _overViewChart(),
                ],
              ),
        FxBox.h24,
        const VenderTransaction(),
      ],
    );
  }

  Widget _reachdetails() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Container(
        // alignment: Alignment.center,
        height: 465,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstText.lightText(
              text: 'Monthly report of user'.toUpperCase(),
              fontWeight: FontWeight.bold,
            ),
            FxBox.h10,
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 100,
                    right: 300,
                    child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(191, 159, 129, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CustomText(
                        title: '10%',
                        textColor: ColorConst.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    right: 150,
                    child: Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 64, 152),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CustomText(
                        title: '52%',
                        textColor: ColorConst.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    right: 80,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(170, 191, 156, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CustomText(
                        title: '34%',
                        textColor: ColorConst.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    right: 90,
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(219, 211, 206, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CustomText(
                        title: '22%',
                        textColor: ColorConst.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxBox.h12,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _descriptionHeadre(
                  boxColor: const Color.fromRGBO(170, 191, 156, 1),
                  headerText: 'User',
                ),
                FxBox.w10,
                _descriptionHeadre(
                  boxColor: const Color.fromRGBO(219, 211, 206, 1),
                  headerText: 'Vender',
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _descriptionHeadre(
                  boxColor: const Color.fromRGBO(191, 159, 129, 1),
                  headerText: 'Subscription',
                ),
                FxBox.w10,
                _descriptionHeadre(
                  boxColor: const Color.fromARGB(255, 54, 64, 152),
                  headerText: 'Total',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget newUserBox() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: ColorConst.primary,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstText.lightText(
                text: 'New User',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '24,800',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newsubcriptionBox() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: ColorConst.primary,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstText.lightText(
                text: 'New SubScribers',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '1452',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget totalsubcriptionBox() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: ColorConst.primary,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstText.lightText(
                text: 'Total SubScribers',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '3200',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: 'Lorem Ipsum is simply dummy text of the printing.',
                textAlign: TextAlign.center,
                fontSize: 15,
                // color: ColorConst.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _overViewChart() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Container(
        constraints: const BoxConstraints(minHeight: 418),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstText.lightText(
                  text: Strings.salesOverview,
                  fontWeight: FontWeight.bold,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _descriptionHeadre(
                      boxColor: const Color(0xff81d7d0),
                      headerText: 'Traffics',
                    ),
                    FxBox.h10,
                    _descriptionHeadre(
                      boxColor: const Color(0xffaab1e6),
                      headerText: 'Sales',
                    ),
                  ],
                ),
              ],
            ),
            FxBox.h40,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 240,
              // child: _chart(),
              child: const SalesOverview(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _descriptionHeadre({
    Color? boxColor,
    required String headerText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: boxColor),
        ),
        FxBox.w10,
        ConstText.lightText(
          text: headerText,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
