import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/datatable.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  bool isShow = false;

  final TextEditingController _couponName = TextEditingController();
  final TextEditingController _couponAmout = TextEditingController();
  final TextEditingController _couponStartDate = TextEditingController();
  final TextEditingController _couponEndDate = TextEditingController();
  final TextEditingController _search = TextEditingController();

  String? defaultValue;
  bool isEdit = false;
  final List<String> _statusList = [
    'Active',
    'Deactive',
  ];
  @override
  void initState() {
    super.initState();
    defaultValue = _statusList[0];
  }

  List<Map<String, dynamic>> _searchList = [];

  final List<Map<String, dynamic>> _venderList = [
    {
      'id': 1,
      'couponName': 'GET50',
      'amount': '40.00 \$',
      'startDate': '12 Jan 2022',
      'endDate': '12 Feb 2022',
      'status': 'Active',
    },
    {
      'id': 2,
      'couponName': 'GET100',
      'amount': '30.00 \$',
      'startDate': '22 Jan 2022',
      'endDate': '21 Apr 2022',
      'status': 'Active',
    },
    {
      'id': 3,
      'couponName': 'GET10',
      'amount': '100.00 \$',
      'startDate': '01 Jan 2022',
      'endDate': '22 Apr 2022',
      'status': 'Active',
    },
    {
      'id': 4,
      'couponName': 'GET20',
      'amount': '60.00 \$',
      'startDate': '31 Jan 2022',
      'endDate': '31 May 2022',
      'status': 'Deactive',
    },
    {
      'id': 5,
      'couponName': 'GET70',
      'amount': '120.00 \$',
      'startDate': '28 Oct 2022',
      'endDate': '01 Jan 2023',
      'status': 'Deactive',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _addNewVender(),
        FxBox.h16,
        if (isShow) ...[
          _createVender(),
          FxBox.h16,
        ],
        Card(
          shadowColor: ColorConst.primary.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 7,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ConstText.lightText(
                  text: Strings.coupons.toUpperCase(),
                  fontWeight: FontWeight.bold,
                ),
                FxBox.h12,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: CustomTextField(
                    controller: _search,
                    hintText: 'Search',
                    onChanged: (value) {
                      _searchList = _venderList.where((element) {
                        return element['couponName']
                            .toLowerCase()
                            .contains(_search.text.toLowerCase());
                      }).toList();
                      setState(() {});
                    },
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SvgIcon(
                        icon: IconlyBroken.search,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                FxBox.h16,
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: (56.0 * 10) + 72.0),
                  child: DataTable3(
                    showCheckboxColumn: false,
                    showBottomBorder: true,
                    columnSpacing: 20.0,
                    minWidth: 728.0,
                    dataRowHeight: Responsive.isMobile(context)
                        ? 100
                        : Responsive.isTablet(context)
                            ? 95
                            : islg(context)
                                ? 90
                                : 56.0,
                    headingRowHeight: 64.0,
                    border: TableBorder(
                      bottom: BorderSide(
                        width: 1,
                        color: isDark
                            ? ColorConst.white.withOpacity(0.25)
                            : Colors.grey.shade200,
                      ),
                      horizontalInside: BorderSide(
                        width: 1,
                        color: isDark
                            ? ColorConst.white.withOpacity(0.25)
                            : Colors.grey.shade50,
                      ),
                    ),
                    columns: [
                      DataColumn2(
                        label: _tableHeader('ID'),
                        size: ColumnSize.S,
                      ),
                      DataColumn2(
                        label: _tableHeader('Coupon Name'),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: _tableHeader('Amount'),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: _tableHeader('Start Date'),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: _tableHeader('End Date'),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: _tableHeader('Status'),
                        size: ColumnSize.S,
                      ),
                      DataColumn2(
                        label: _tableHeader(''),
                        size: ColumnSize.S,
                      ),
                    ],
                    rows: _searchList.isEmpty
                        ? _venderList.map((e) {
                            return DataRow(
                              onSelectChanged: (value) {
                                //autoTabRouter!.setActiveIndex(43);
                              },
                              cells: [
                                DataCell(_tableHeader(e['id'].toString())),
                                DataCell(_tableHeader(e['couponName'])),
                                DataCell(_tableHeader(e['amount'])),
                                DataCell(_dateBox(e['startDate'], false)),
                                DataCell(_dateBox(e['endDate'], true)),
                                DataCell(_statusBox(
                                    e['status'] == 'Active'
                                        ? ColorConst.successDark
                                        : ColorConst.errorDark,
                                    e['status'])),
                                DataCell(_editButton(
                                  onPressed: () {
                                    isShow = !isShow;
                                    isEdit = true;

                                    setState(() {});
                                    _couponName.text = e['couponName'];
                                    _couponAmout.text = e['amount'];
                                    _couponStartDate.text = e['startDate'];
                                    _couponEndDate.text = e['endDate'];
                                  },
                                )),
                              ],
                            );
                          }).toList()
                        : _searchList.map((e) {
                            return DataRow(
                              onSelectChanged: (value) {
                                //autoTabRouter!.setActiveIndex(43);
                              },
                              cells: [
                                DataCell(_tableHeader(e['id'].toString())),
                                DataCell(_tableHeader(e['couponName'])),
                                DataCell(_tableHeader(e['amount'])),
                                DataCell(_dateBox(e['startDate'], false)),
                                DataCell(_dateBox(e['endDate'], true)),
                                DataCell(_statusBox(
                                    e['status'] == 'Active'
                                        ? ColorConst.successDark
                                        : ColorConst.errorDark,
                                    e['status'])),
                                DataCell(_editButton(
                                  onPressed: () {
                                    isEdit = true;
                                    isShow = !isShow;

                                    _couponName.text = e['couponName'];
                                    _couponAmout.text = e['amount'];
                                    _couponStartDate.text = e['startDate'];
                                    _couponEndDate.text = e['endDate'];
                                    setState(() {});
                                  },
                                )),
                              ],
                            );
                          }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }

  Widget _dateBox(
    String date,
    bool isEnd,
  ) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isEnd
            ? ColorConst.errorDark.withOpacity(0.2)
            : ColorConst.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ConstText.lightText(
        text: date,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }

  Widget _editButton({
    required void Function()? onPressed,
  }) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.mode_edit_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: ColorConst.errorDark,
          ),
        ),
      ],
    );
  }

  Widget _createVender() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              title: 'Coupon Detail',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            FxBox.h16,
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: CustomTextField(
                    controller: _couponName,
                    hintText: 'Enter Coupon Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                FxBox.w24,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: CustomTextField(
                    controller: _couponAmout,
                    hintText: 'Enter Coupon Amount',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            FxBox.h24,
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: CustomTextField(
                    controller: _couponStartDate,
                    hintText: 'Enter Start Date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                FxBox.w24,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: CustomTextField(
                    controller: _couponEndDate,
                    hintText: 'Enter End Date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            FxBox.h24,
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                value: defaultValue,
                underline: const SizedBox.shrink(),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: _statusList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    defaultValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
        const Spacer(),
        FxButton(
          height: 50,
          onPressed: () async {
            isShow = !isShow;
            _couponName.text = '';
            _couponAmout.text = '';
            _couponStartDate.text = '';
            _couponEndDate.text = '';

            setState(() {});
          },
          fullWidth: false,
          color: ColorConst.primary,
          minWidth: MediaQuery.of(context).size.width / 7,
          text: isEdit ? 'Update Coupon' : 'Add Coupon',
        ),
        FxBox.w24,
        FxButton(
          height: 50,
          minWidth: 50,
          hoverColor: ColorConst.error.withOpacity(0.1),
          onPressed: () {
            isShow = !isShow;

            setState(() {});
          },
          color: ColorConst.error.withOpacity(0.4),
          icon: const SvgIcon(
            icon: IconlyBroken.closeSquare,
            color: ColorConst.white,
          ),
        ),
      ],
    );
  }

  Widget _addNewVender() {
    return Align(
      alignment: Alignment.centerRight,
      child: FxButton(
        height: 50,
        color: ColorConst.primary,
        fullWidth: false,
        minWidth: MediaQuery.of(context).size.width / 7,
        onPressed: () {
          isShow = !isShow;
          isEdit = false;
          setState(() {});
        },
        text: 'New Coupon',
      ),
    );
  }
}
