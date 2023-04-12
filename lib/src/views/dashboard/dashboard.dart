import 'package:admin_dashboard/src/provider/dashboard_provider/dashboard_provider.dart';
import 'package:admin_dashboard/src/views/dashboard/list_item.dart';
import 'package:admin_dashboard/src/views/dashboard/montly_earning.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var isInit = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(isInit){
      Provider.of<DashboardProvider>(context).getDashboardStatsApi();
    }
    isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Listitem(),
            FxBox.h24,
            const Monthlyearning(),
            FxBox.h24,
            // Responsive.isWeb(context)
            //     ? Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Expanded(
            //             child: SalesReport(),
            //           ),
            //           FxBox.w24,
            //           const Expanded(
            //             child: Salesanalytics(),
            //           ),
            //         ],
            //       )
            //     : Column(
            //         children: [
            //           const SalesReport(),
            //           FxBox.h24,
            //           const Salesanalytics(),
            //         ],
            //       ),
            // FxBox.h24,
            // Responsive.isWeb(context)
            //     ? Row(
            //         children: [
            //           const Expanded(
            //             child: Chatscreen(),
            //           ),
            //           FxBox.w24,
            //           Expanded(
            //             child: Column(
            //               children: [
            //                 Row(
            //                   children: [
            //                     const Expanded(child: StatusBox()),
            //                     FxBox.w24,
            //                     const Expanded(child: TopProductSale()),
            //                   ],
            //                 ),
            //                 FxBox.h24,
            //                 const Clienresponse(),
            //               ],
            //             ),
            //           ),
            //           FxBox.w24,
            //           const Expanded(
            //             child: Activity(),
            //           ),
            //         ],
            //       )
            //     : Column(
            //         children: [
            //           const Chatscreen(),
            //           FxBox.h24,
            //           Responsive.isTablet(context)
            //               ? Row(
            //                   children: [
            //                     const Expanded(child: StatusBox()),
            //                     FxBox.w24,
            //                     const Expanded(child: TopProductSale()),
            //                   ],
            //                 )
            //               : Column(
            //                   children: [
            //                     const StatusBox(),
            //                     FxBox.h24,
            //                     const TopProductSale(),
            //                   ],
            //                 ),
            //           FxBox.h24,
            //           const Clienresponse(),
            //           FxBox.h24,
            //           const Activity(),
            //         ],
            //       ),
            // FxBox.h24,
            // const Transaction(),
          ],
        ),
      ],
    );
  }
}
