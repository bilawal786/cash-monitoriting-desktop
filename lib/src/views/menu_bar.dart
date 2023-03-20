import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/theme_mode_bloc.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/extainsions/string_extainsions.dart';
import 'package:admin_dashboard/src/utils/hive/hive.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/routes.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:admin_dashboard/src/widget/end_drawer.dart';
import 'package:admin_dashboard/src/widget/expantion_tile.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class FMenuBar extends StatefulWidget {
  const FMenuBar({Key? key}) : super(key: key);

  @override
  State<FMenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<FMenuBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldDrawerKey =
      GlobalKey<ScaffoldState>();

  final ScrollController _scrollController = ScrollController();

  ValueNotifier<bool> isOpen = ValueNotifier(true);

  Map<String, String> mainData = {
    Strings.dashboard: IconlyBroken.home,
    Strings.category: IconlyBroken.drawer,
    Strings.expense: IconlyBroken.calendar,
    Strings.reports1: IconlyBroken.archive,
  };

  // Map<String, String> componentData = {
  //   // Strings.uiElements: IconlyBroken.box,
  //   // Strings.forms: IconlyBroken.forms,
  //   // Strings.charts: IconlyBroken.charts,
  //   // Strings.tables: IconlyBroken.tables,
  //   // Strings.eCommerce: IconlyBroken.eCommerce,
  // };

  // Map<String, String> extrasData = {
  //   Strings.authentication: IconlyBroken.archive,
  //   Strings.emailTemplates: IconlyBroken.emailTemplate,
  //   Strings.extraPages: IconlyBroken.extraPages,
  // };

  // List<List<String>> componentsExpandList = [
  //   // [
  //   //   Strings.toast,
  //   //   Strings.buttons,
  //   //   Strings.rating,
  //   //   Strings.badge,
  //   //   Strings.alertDialog,
  //   //   Strings.modal,
  //   //   Strings.loader,
  //   //   Strings.tabs,
  //   //   Strings.carousel,
  //   //   Strings.videoPlayer,
  //   //   Strings.dragDrop,
  //   //   Strings.datePicker,
  //   // ],
  //   // [
  //   //   Strings.formElements,
  //   //   Strings.formValidation,
  //   //   Strings.formFileUpload,
  //   //   Strings.formRepeater,
  //   //   Strings.formWizard,
  //   //   Strings.formMask,
  //   // ],
  //   // [Strings.morrisChart, Strings.chartistChart, Strings.chartJsChart],
  //   // [
  //   //   Strings.basicTable,
  //   //   Strings.dataTable,
  //   //   Strings.responsiveTable,
  //   //   Strings.editableTable,
  //   // ],
  //   [
  //     // Strings.eCommerceDashboard,
  //     // Strings.products,
  //     Strings.productAdd,
  //     Strings.category,
  //     // Strings.vender,
  //     // Strings.customer,
  //     // Strings.cart,
  //     // Strings.payment,
  //     // Strings.order,
  //     // Strings.returnOrder,
  //     // Strings.subscriber,
  //     // Strings.coupons,
  //     // Strings.returnCondition,
  //   ],
  // ];

  List<List<String>> extrasExpandList = [
    [
      // Strings.loginOne,
      Strings.loginTwo,
      // Strings.registerOne,
      Strings.registerTwo,
      // Strings.recoverPasswordOne,
      Strings.recoverPasswordTwo,
      // Strings.lockScreenOne,
      Strings.lockScreenTwo,
    ],
    // [
    //   Strings.basicActionEmail,
    //   Strings.alertEmail,
    //   Strings.billingEmail,
    // ],
    // [
    //   Strings.timeline,
    //   Strings.invoice,
    //   Strings.directory,
    //   Strings.error404,
    //   Strings.error500,
    //   Strings.pricing,
    //   Strings.gallery,
    //   Strings.maintenence,
    //   Strings.comingSoon,
    //   Strings.faqs,
    // ],
  ];

  final List<String> _items = [
    Strings.profile,
    // Strings.settings,
    // Strings.lockScreen,
  ];

  final List<String> _notificationTitle = [
    'Your order is shipped',
    'your accound have verified',
    'New Notification arrived',
  ];

  final List<String> _notificationSubtitle = [
    'Please share your experience with us',
    'Congratulation  👏🏻',
    'Hey!, How are you?',
  ];

  final List<PageRouteInfo<dynamic>> _routes = const [
    Dashboard(),
    Button(),
    Rating(),
    CustomBadge(),
    Toast(),
    AlertDialogBox(),
    Modal(),
    BasicEmail(),
    AlertEmail(),
    BillingEmail(),
    Loaders(),
    MorrisChart(),
    ChartListChart(),
    ChartJsChart(),
    BasicTable(),
    Datatable(),
    ResponsiveTable(),
    EditableTable(),
    TimelineScreen(),
    Pricing(),
    DirectoryRoute(),
    FAQs(),
    Invoice(),
    Gallery(),
    Carousel(),
    TabScreen(),
    Calendar(),
    ElementsForm(),
    ValidationForm(),
    FileUploadForm(),
    RepeaterForm(),
    WizardForm(),
    MaskForm(),
    VideoScreen(),
    GoogleMaps(),
    UserProfile(),
    DragAndDrop(),
    DatePicker(),
    ProductsScreen(),
    ProductDetailScreen(),
    CategoryScreen(),
    SubCategoryScreen(),
    VenderScreen(),
    VenderDetailScreen(),
    CustomerScreen(),
    PaymentScreen(),
    ReturnOrderScreen(),
    ReturnOrderInvoice(),
    SubScriptionScreen(),
    CouponsScreen(),
    OrderScreen(),
    OrderInvoice(),
    ReturnConditionScreen(),
    EcommerceDashboard(),
    CartScreen(),
    ProductAdd(),
    Datatable()
  ];

  // TextDirection _layout = TextDirection.ltr;

  final ValueNotifier<TextDirection> _layout =
      ValueNotifier<TextDirection>(TextDirection.ltr);
  final ValueNotifier<bool> _switchlayout = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        autoTabRouter = tabsRouter;
        return ValueListenableBuilder<TextDirection>(
            valueListenable: _layout,
            builder: (context, value, _) {
              return Directionality(
                textDirection: value,
                child: Scaffold(
                  key: _scaffoldKey,
                  endDrawer: Drawer(
                    width: 280,
                    child: SafeArea(
                      child: SettingDrawer(scaffoldKey: _scaffoldKey),
                    ),
                  ),
                  appBar: _appBar(tabsRouter),
                  body: SafeArea(
                    child: Scaffold(
                      key: _scaffoldDrawerKey,
                      drawerScrimColor: ColorConst.transparent,
                      drawer: _sidebar(tabsRouter),
                      body: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ValueListenableBuilder<bool>(
                            valueListenable: isOpen,
                            builder: (context, value, child) {
                              return Responsive.isWeb(context)
                                  ? _sidebar(tabsRouter)
                                  : const SizedBox.shrink();
                            },
                          ),
                          Expanded(
                            child: CustomScrollView(
                              controller: _scrollController,
                              slivers: [
                                SliverList(
                                  delegate: SliverChildListDelegate(
                                    [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FxBox.h20,
                                            Text(
                                              upperCase(tabsRouter.currentPath),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            FxBox.h8,
                                            _routesDeatils(tabsRouter),
                                            FxBox.h20,
                                            getRouteWidget(
                                                tabsRouter.activeIndex),
                                            FxBox.h20,
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SliverFillRemaining(
                                  hasScrollBody: false,
                                  fillOverscroll: true,
                                  child: Column(
                                    children: <Widget>[
                                      const Expanded(
                                        child: SizedBox.shrink(),
                                      ),
                                      _footer(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
      },
    );
  }

  /// appbar
  PreferredSizeWidget _appBar(TabsRouter tabsRouter) => AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        shadowColor: ColorConst.transparent,
        leadingWidth: 392,
        leading: Row(
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isOpen,
              builder: (context, value, child) {
                if (Responsive.isWeb(context) && value) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                  return InkWell(
                    onTap: () {
                      tabsRouter
                          .setActiveIndex(getRouteIndex(Strings.dashboard));
                      // _scaffoldDrawerKey.currentState?.closeDrawer();
                    },
                    child: Container(
                      width: 240,
                      padding: const EdgeInsets.symmetric(horizontal: 61),
                      height: double.infinity,
                      color: ColorConst.transparent,
                      child: Image.asset(
                          isDark ? Images.cmLogo : Images.cmLogo),
                    ),
                  );
                }
                return InkWell(
                  onTap: () {
                    tabsRouter.setActiveIndex(getRouteIndex(Strings.dashboard));
                    _scaffoldDrawerKey.currentState?.closeDrawer();
                  },
                  child: Container(
                    width: 70,
                    height: double.infinity,
                    color:
                        isDark ? ColorConst.transparent : ColorConst.drawerBG,
                    child: Image.asset(
                      Images.cmLogo,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            MaterialButton(
              height: double.infinity,
              minWidth: 60,
              hoverColor: ColorConst.transparent,
              onPressed: () async {
                if (Responsive.isMobile(context) ||
                    Responsive.isTablet(context)) {
                  if (_scaffoldDrawerKey.currentState!.isDrawerOpen) {
                    _scaffoldDrawerKey.currentState!.closeDrawer();
                  } else {
                    _scaffoldDrawerKey.currentState!.openDrawer();
                  }
                } else if (Responsive.isWeb(context)) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                  isOpen.value = !isOpen.value;
                }
              },
              child: const SvgIcon(icon: IconlyBroken.drawer),
            )
          ],
        ),
        actions: [
          // Responsive.isMobile(context) || Responsive.isTablet(context)
          //     ? MaterialButton(
          //         height: double.infinity,
          //         minWidth: 60,
          //         hoverColor: ColorConst.transparent,
          //         onPressed: () {},
          //         child: const SvgIcon(icon: IconlyBroken.search),
          //       )
          //     : Container(
          //         padding: const EdgeInsets.symmetric(vertical: 12),
          //         width: 180,
          //         height: 48,
          //         child: TextField(
          //           cursorWidth: 1,
          //           textAlignVertical: TextAlignVertical.center,
          //           decoration: InputDecoration(
          //             hoverColor: ColorConst.transparent,
          //             border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(25.0),
          //               borderSide: BorderSide.none,
          //             ),
          //             filled: true,
          //             contentPadding: _switchlayout.value == false
          //                 ? const EdgeInsets.fromLTRB(12, 10, 0, 4)
          //                 : const EdgeInsets.fromLTRB(0, 10, 12, 4),
          //             hintText: Strings.searchHint,
          //             hintStyle: const TextStyle(fontSize: 15),
          //             suffixIcon: const Padding(
          //               padding: EdgeInsets.all(12.0),
          //               child: SvgIcon(icon: IconlyBroken.search),
          //             ),
          //             // fillColor: ColorConst.textFieldBG,
          //             isCollapsed: true,
          //           ),
          //         ),
          //       ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.more_vert),
          // ),
          // PopupMenuButton<int>(
          //   icon: const Icon(Icons.more_vert),
          //   itemBuilder: (context) => [
          //     // popupmenu item 1
          //     PopupMenuItem(
          //       value: 1,
          //       // row has two child icon and text.
          //       child: const Text('RTL'),
          //       onTap: () {
          //         _layout.value = TextDirection.rtl;
          //         _layout.notifyListeners();
          //       },
          //     ),
          //     // popupmenu item 2
          //     PopupMenuItem(
          //       value: 2,
          //       // row has two child icon and text
          //       child: const Text("LTR"),
          //       onTap: () {
          //         _layout.value = TextDirection.ltr;
          //         _layout.notifyListeners();
          //       },
          //     ),
          //   ],
          //   offset: const Offset(0, 50),
          //   elevation: 2,
          // ),
          // SizedBox(
          //   width: 150,
          //   child: SwitchListTile(
          //     dense: false,
          //     contentPadding: EdgeInsets.zero,
          //     title: const Text('Layout'),
          //     value: true,
          //     onChanged: (value) {},
          //   ),
          // ),
          // const SizedBox(
          //   width: 10,
          // ),
          // ValueListenableBuilder<bool>(
          //   valueListenable: _switchlayout,
          //   builder: (context, value, _) {
          //     return Text(value == true ? 'RTL' : 'LTR');
          //   },
          // ),
          // ValueListenableBuilder<bool>(
          //     valueListenable: _switchlayout,
          //     builder: (context, value, _) {
          //       return Transform.scale(
          //         scale: 0.7,
          //         child: Switch(
          //           value: value,
          //           onChanged: (value) {
          //             _switchlayout.value = value;
          //             value == true
          //                 ? _layout.value = TextDirection.rtl
          //                 : _layout.value = TextDirection.ltr;
          //           },
          //         ),
          //       );
          //     }),
          // _notification(),
          BlocBuilder<ThemeModeBloc, ThemeModeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        HiveUtils.set(HiveKeys.themeMode, !isDark);
                        themeModeBloc.add(ThemeModeEvent.changeTheme(!isDark));
                      },
                      icon: Icon(
                        isDark
                            ? Icons.light_mode_outlined
                            : Icons.dark_mode_outlined,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          _profile(tabsRouter),
        ],
      );

  // TextDirection _layout(String layout)
  // {
  //     if(layout == 'RTL')
  //     {
  //       return TextDirection.rtl;
  //     }
  //     else
  //     {
  //       return TextDirection.ltr;
  //     }
  // }

  // Widget _notification() {
  //   return FxDropdownButton(
  //     focusColor: Colors.transparent,
  //     underline: FxBox.shrink,
  //     customButton: const MaterialButton(
  //       height: double.infinity,
  //       minWidth: 60,
  //       hoverColor: ColorConst.transparent,
  //       onPressed: null,
  //       child: SvgIcon(icon: IconlyBroken.notification),
  //     ),
  //     customItemsIndexes: const [1],
  //     customItemsHeight: 0,
  //     onChanged: (value) {},
  //     dropdownWidth: 298,
  //     dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
  //     dropdownDecoration: BoxDecoration(
  //       color: isDark ? ColorConst.cardDark : Colors.white,
  //       border: Border.all(
  //         color: isDark
  //             ? ColorConst.lightGrey.withOpacity(0.1)
  //             : ColorConst.lightGrey.withOpacity(0.5),
  //       ),
  //       borderRadius: BorderRadius.circular(4.0),
  //     ),
  //     scrollbarAlwaysShow: false,
  //     dropdownElevation: 0,
  //     offset: const Offset(-246, 0),
  //     itemHeight: 352,
  //     items: [
  //       DropdownMenuItem(
  //         alignment: AlignmentDirectional.topStart,
  //         value: '',
  //         child: SizedBox(
  //           height: 344,
  //           child: ScrollConfiguration(
  //             behavior:
  //                 ScrollConfiguration.of(context).copyWith(scrollbars: false),
  //             child: SingleChildScrollView(
  //               controller: ScrollController(),
  //               physics: const NeverScrollableScrollPhysics(),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   const Padding(
  //                     padding:
  //                         EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
  //                     child: Text(
  //                       '${Strings.notifications} (258)',
  //                       style: TextStyle(
  //                         fontSize: 17,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //                   ),
  //                   FxBox.h8,
  //                   SizedBox(
  //                     height: 200,
  //                     child: ListView.builder(
  //                       shrinkWrap: true,
  //                       itemCount: _notificationTitle.length,
  //                       physics: const NeverScrollableScrollPhysics(),
  //                       itemBuilder: (context, index) {
  //                         return ListTile(
  //                           contentPadding:
  //                               const EdgeInsets.symmetric(horizontal: 4.0),
  //                           title: Text(
  //                             _notificationTitle[index],
  //                             style:
  //                                 const TextStyle(fontWeight: FontWeight.bold),
  //                           ),
  //                           subtitle: Text(
  //                             _notificationSubtitle[index],
  //                             style: Theme.of(context)
  //                                 .textTheme
  //                                 .labelMedium!
  //                                 .copyWith(
  //                                   color: Theme.of(context)
  //                                       .textTheme
  //                                       .labelMedium!
  //                                       .color!
  //                                       .withOpacity(0.5),
  //                                 ),
  //                           ),
  //                         );
  //                       },
  //                     ),
  //                   ),
  //                   const Divider(color: ColorConst.lightGrey, height: 8.0),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //                     child: Align(
  //                       alignment: Alignment.center,
  //                       child: Text(
  //                         Strings.viewAll,
  //                         style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.bold,
  //                           color: Theme.of(context).colorScheme.primary,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _profile(TabsRouter tabsRouter) {
    return FxDropdownButton(
      focusColor: Colors.transparent,
      underline: FxBox.shrink,
      customButton: const MaterialButton(
        height: double.infinity,
        minWidth: 60,
        hoverColor: ColorConst.transparent,
        onPressed: null,
        child: CircleAvatar(
          maxRadius: 16,
          backgroundImage: AssetImage(Images.profileImage),
        ),
      ),
      customItemsIndexes: const [3],
      customItemsHeight: 8,
      onChanged: (value) {
        if (value == 'Profile') {
          // context.router.push(const MenuBar());
          tabsRouter.setActiveIndex(getRouteIndex(Strings.userProfile));
          _scaffoldDrawerKey.currentState?.closeDrawer();
        }
      },
      items: [
        ..._items.map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              e,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const DropdownMenuItem<Divider>(
          enabled: false,
          child: Divider(color: ColorConst.lightGrey),
        ),
        const DropdownMenuItem(

          value: 'Logout',
          child: Text(
            Strings.logout,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
      itemHeight: 48,
      itemPadding: const EdgeInsets.only(left: 16, right: 16),
      dropdownWidth: 160,
      dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
      dropdownDecoration: BoxDecoration(
        color: isDark ? ColorConst.cardDark : Colors.white,
        border: Border.all(
          color: isDark
              ? ColorConst.lightGrey.withOpacity(0.1)
              : ColorConst.lightGrey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      dropdownElevation: 0,
      offset: const Offset(-108, 0),
    );
  }

  /// drawer / sidebar
  Widget _sidebar(TabsRouter tabsRouter) => ValueListenableBuilder<bool>(
        valueListenable: isOpen,
        builder: (context, value, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: value ? 240 : 70,
            color: isDark ? ColorConst.transparent : ColorConst.drawerBG,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FxBox.h8,
                  // main
                  // if (value) _menuHeading(Strings.main),
                  _menuList(
                    tabsRouter: tabsRouter,
                    items: mainData,
                    isopen: value,
                  ),
                  // components
                  // if (value) _menuHeading(Strings.components),
                  // _menuList(
                  //   tabsRouter: tabsRouter,
                  //   items: componentData,
                  //   isExpanded: true,
                  //   children: componentsExpandList,
                  //   isopen: value,
                  // ),
                  // _menuList(
                  //   tabsRouter: tabsRouter,
                  //   items: extrasData,
                  //   isExpanded: true,
                  //   children: extrasExpandList,
                  //   isopen: value,
                  // ),
                  // extras
                  // if (value) _menuHeading(Strings.extras),
                  // _menuList(
                  //   tabsRouter: tabsRouter,
                  //   items: extrasData,
                  //   isExpanded: true,
                  //   children: extrasExpandList,
                  //   isopen: value,
                  // ),
                  FxBox.h20,
                ],
              ),
            ),
          );
        },
      );

  /// menu heading
  // Widget _menuHeading(String title) {
  //   return Container(
  //     padding: const EdgeInsets.only(left: 18),
  //     height: 40,
  //     alignment: Alignment.centerLeft,
  //     child: Text(
  //       title.toUpperCase(),
  //       style: TextStyle(
  //         color: isDark ? ColorConst.white : ColorConst.black,
  //         fontSize: 11,
  //       ),
  //     ),
  //   );
  // }

  /// menu list
  Widget _menuList({
    required TabsRouter tabsRouter,
    required Map<String, String> items,
    bool isExpanded = false,
    List<List<String>> children = const [],
    required bool isopen,
  }) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => FxHover(
        builder: (isHover) {
          Color color = isHover
              ? isDark
                  ? ColorConst.chartForgoundColor
                  : ColorConst.primary
              : isDark
                  ? ColorConst.white
                  : ColorConst.black;
          if (isExpanded) {
            return isopen
                ? FxExpansionTile(
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FxBox.w(22.0),
                        SvgIcon(
                          icon: items.values.elementAt(index),
                          size: 16,
                          color: children[index]
                                  .contains(upperCase(tabsRouter.currentPath))
                              ? isDark
                                  ? ColorConst.chartForgoundColor
                                  : ColorConst.primary
                              : color,
                        ),
                        FxBox.w(24.0),
                      ],
                    ),
                    title: Text(
                      items.keys.elementAt(index),
                      style: TextStyle(
                          color: children[index]
                                  .contains(upperCase(tabsRouter.currentPath))
                              ? isDark
                                  ? ColorConst.chartForgoundColor
                                  : ColorConst.primary
                              : color,
                          fontSize: 15.7),
                    ),
                    trailing: SvgIcon(
                      icon: IconlyBroken.arrowDown,
                      size: 16,
                      color: children[index]
                              .contains(upperCase(tabsRouter.currentPath))
                          ? isDark
                              ? ColorConst.chartForgoundColor
                              : ColorConst.primary
                          : color,
                    ),
                    children: [_subMenuList(children[index], tabsRouter)],
                  )
                : ListTile(
                    leading: SvgIcon(
                      icon: items.values.elementAt(index),
                      size: isopen ? 16 : 18,
                      color: items.keys.elementAt(index) ==
                              upperCase(tabsRouter.currentPath)
                          ? isDark
                              ? ColorConst.chartForgoundColor
                              : ColorConst.primary
                          : color,
                    ),
                    title: isopen
                        ? Text(
                            items.keys.elementAt(index),
                            style: TextStyle(
                              color: items.keys.elementAt(index) ==
                                      upperCase(tabsRouter.currentPath)
                                  ? isDark
                                      ? ColorConst.chartForgoundColor
                                      : ColorConst.primary
                                  : color,
                              fontSize: 15.7,
                            ),
                          )
                        : null,
                    mouseCursor: SystemMouseCursors.click,
                    horizontalTitleGap: 0.0,
                    onTap: () {
                      isOpen.value = true;
                      _scaffoldDrawerKey.currentState?.closeDrawer();
                    },
                  );
          } else {
            return Row(
              children: [
                if (isopen)
                  Container(
                    width: 6.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: items.keys.elementAt(index) ==
                              upperCase(tabsRouter.currentPath)
                          ? isDark
                              ? ColorConst.chartForgoundColor
                              : ColorConst.primary
                          : ColorConst.transparent,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                    ),
                  ),
                if (isopen) FxBox.w16,
                Expanded(
                  child: ListTile(
                    leading: SvgIcon(
                      icon: items.values.elementAt(index),
                      size: isopen ? 16 : 18,
                      color: items.keys.elementAt(index) ==
                              upperCase(tabsRouter.currentPath)
                          ? isDark
                              ? ColorConst.chartForgoundColor
                              : ColorConst.primary
                          : color,
                    ),
                    title: isopen
                        ? Text(
                            items.keys.elementAt(index),
                            style: TextStyle(
                              color: items.keys.elementAt(index) ==
                                      upperCase(tabsRouter.currentPath)
                                  ? isDark
                                      ? ColorConst.chartForgoundColor
                                      : ColorConst.primary
                                  : color,
                              fontSize: 15.7,
                            ),
                          )
                        : null,
                    mouseCursor: SystemMouseCursors.click,
                    horizontalTitleGap: 0.0,
                    onTap: () {
                      isOpen.value = true;
                      tabsRouter.setActiveIndex(
                          getRouteIndex(items.keys.elementAt(index)));
                      HiveUtils.set(Strings.selectedmenuIndex,
                          getRouteIndex(items.keys.elementAt(index)));
                      _scaffoldDrawerKey.currentState?.closeDrawer();
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  /// sub menu list
  Widget _subMenuList(List<String> items, TabsRouter tabsRouter) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => FxHover(
        builder: (isHover) {
          Color color = isHover
              ? isDark
                  ? ColorConst.chartForgoundColor
                  : ColorConst.primary
              : _checkSubRoute(tabsRouter.currentPath) == items[index]
                  ? isDark
                      ? ColorConst.chartForgoundColor
                      : ColorConst.primary
                  : upperCase(tabsRouter.currentPath) == items[index]
                      ? isDark
                          ? ColorConst.chartForgoundColor
                          : ColorConst.primary
                      : isDark
                          ? ColorConst.white
                          : ColorConst.black;
          return Row(
            children: [
              if (_checkSubRoute(tabsRouter.currentPath) == items[index]) ...[
                Container(
                  width: 6.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color:
                        _checkSubRoute(tabsRouter.currentPath) == items[index]
                            ? isDark
                                ? ColorConst.chartForgoundColor
                                : ColorConst.primary
                            : ColorConst.transparent,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0),
                    ),
                  ),
                ),
              ],
              Container(
                width: 6.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: upperCase(tabsRouter.currentPath) == items[index]
                      ? isDark
                          ? ColorConst.chartForgoundColor
                          : ColorConst.primary
                      : ColorConst.transparent,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6.0),
                    bottomRight: Radius.circular(6.0),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  mouseCursor: SystemMouseCursors.click,
                  contentPadding: _switchlayout.value == false
                      ? const EdgeInsets.only(left: 52.0)
                      : const EdgeInsets.only(right: 52.0),
                  title: Text(
                    items[index],
                    style: TextStyle(color: color, fontSize: 15),
                  ),
                  onTap: () {
                    if (items[index] == 'Login 1') {
                      context.router.push(const LoginOne());
                    } else if (items[index] == 'Login 2') {
                      context.router.push(const LoginTwo());
                    } else if (items[index] == 'Register 1') {
                      context.router.push(const RegisterOne());
                    } else if (items[index] == 'Register 2') {
                      context.router.push(const RegisterTwo());
                    } else if (items[index] == 'Recover Password 1') {
                      context.router.push(const RecoverPasswordOne());
                    } else if (items[index] == 'Recover Password 2') {
                      context.router.push(const RecoverPasswordTwo());
                    } else if (items[index] == 'Lock Screen 1') {
                      context.router.push(const LockScreenOne());
                    } else if (items[index] == 'Lock Screen 2') {
                      context.router.push(const LockScreenTwo());
                    } else if (items[index] == 'Error 404') {
                      context.router.push(const Error404());
                    } else if (items[index] == 'Error 500') {
                      context.router.push(const Error500());
                    } else if (items[index] == 'Maintenence') {
                      context.router.push(const Maintenance());
                    } else if (items[index] == 'Coming Soon') {
                      context.router.push(const ComingSoon());
                    } else {
                      tabsRouter.setActiveIndex(getRouteIndex(items[index]));
                    }
                    _scaffoldDrawerKey.currentState?.closeDrawer();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  /// routes
  Widget _routesDeatils(TabsRouter tabsRouter) {
    int routeIndex = getRouteIndex(tabsRouter.currentPath
        .substring(1, tabsRouter.currentPath.length)
        .replaceAll('-', ' ')
        .capitalize());

    return Row(
      children: tabsRouter.currentPath == '/dashboard'
          ? []
          : [
              const InkWell(
                mouseCursor: SystemMouseCursors.click,
                child: Text(Strings.admin),
              ),
              if (routeIndex.isBetween(1, 6) ||
                  routeIndex == 10 ||
                  routeIndex == 24 ||
                  routeIndex == 25 ||
                  routeIndex == 33 ||
                  routeIndex == 36 ||
                  routeIndex == 37) ...[
                const Text(' / ${Strings.uiElements} '),
              ] else if (routeIndex.isBetween(27, 32)) ...[
                const Text(' / ${Strings.forms} '),
              ] else if (routeIndex.isBetween(11, 13)) ...[
                const Text(' / ${Strings.charts} '),
              ] else if (routeIndex.isBetween(14, 17)) ...[
                const Text(' / ${Strings.tables} '),
              ] else if (routeIndex.isBetween(7, 9)) ...[
                const Text(' / ${Strings.emailTemplates} '),
              ] else if (routeIndex == 38) ...[
                const Text(' / ${Strings.eCommerce} '),
              ] else if (routeIndex == 40) ...[
                const Text(' / ${Strings.eCommerce} '),
              ] else if (routeIndex == 47) ...[
                const Text(' / ${Strings.eCommerce} / ${Strings.returnOrder} '),
              ] else if (routeIndex == 51) ...[
                const Text(' / ${Strings.eCommerce} / ${Strings.order} '),
              ] else if (routeIndex == 41) ...[
                const Text(' / ${Strings.eCommerce} / ${Strings.category} '),
              ] else if (routeIndex == 43) ...[
                const Text(' / ${Strings.eCommerce} / ${Strings.vender} '),
              ] else if (routeIndex == 42 ||
                  routeIndex == 44 ||
                  routeIndex == 45 ||
                  routeIndex == 46 ||
                  routeIndex == 48 ||
                  routeIndex == 49 ||
                  routeIndex == 50 ||
                  routeIndex == 52 ||
                  routeIndex == 53 ||
                  routeIndex == 54) ...[
                const Text(' / ${Strings.eCommerce} '),
              ] else if (routeIndex == 39) ...[
                const Text(' / ${Strings.eCommerce} / ${Strings.products}'),
              ] else if (routeIndex == 55) ...[
                const Text(' / ${Strings.eCommerce} '),
              ] else if (tabsRouter.currentPath == '/calendar' ||
                  tabsRouter.currentPath == '/map') ...[
                const SizedBox.shrink()
              ] else ...[
                const Text(' / Extra Pages '),
              ],
              const Text(' / '),
              Text(upperCase(tabsRouter.currentPath)),
            ],
    );
  }

  Widget _footer() => Container(
        color: isDark ? ColorConst.footerDark : ColorConst.drawerBG,
        height: 60,
        width: Responsive.isWeb(context)
            ? MediaQuery.of(context).size.width - 240
            : MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Text(Strings.footerText),
      );

  String _checkSubRoute(String path) {
    if (upperCase(path) == 'Products Detail') {
      return 'Products';
    } else if (upperCase(path) == 'Sub Category') {
      return 'Category';
    } else if (upperCase(path) == 'Vender Detail') {
      return 'Vender';
    } else if (upperCase(path) == 'Return Order Invoice') {
      return 'Return Order';
    } else if (upperCase(path) == 'Order Invoice') {
      return 'Order';
    } else {
      return '';
    }
  }
}
