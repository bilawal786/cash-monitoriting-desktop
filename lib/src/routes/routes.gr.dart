// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i70;
import 'package:flutter/material.dart' as _i71;

import '../views/authentication/lock_screen/lock_screen_one.dart' as _i8;
import '../views/authentication/lock_screen/lock_screen_two.dart' as _i9;
import '../views/authentication/login/login_one.dart' as _i2;
import '../views/authentication/login/login_two.dart' as _i3;
import '../views/authentication/recover_password/recover_password_one.dart'
    as _i6;
import '../views/authentication/recover_password/recover_password_two.dart'
    as _i7;
import '../views/authentication/register/register_one.dart' as _i4;
import '../views/authentication/register/register_two.dart' as _i5;
import '../views/calender/calender.dart' as _i15;
import '../views/charts/chartist.dart' as _i29;
import '../views/charts/chartjs.dart' as _i30;
import '../views/charts/morris_chart.dart' as _i28;
import '../views/dashboard/dashboard.dart' as _i14;
import '../views/e_commerce/cart/cart_screen.dart' as _i68;
import '../views/e_commerce/category/category_screen.dart' as _i54;
import '../views/e_commerce/category/sub_category.dart' as _i55;
import '../views/e_commerce/coupon/coupons_screen.dart' as _i65;
import '../views/e_commerce/customer/customer_screen.dart' as _i58;
import '../views/e_commerce/e_commerce_dashboard/e_commerce_dashboard_screen.dart'
    as _i67;
import '../views/e_commerce/order/order_invoice.dart' as _i63;
import '../views/e_commerce/order/order_screen.dart' as _i61;
import '../views/e_commerce/payment/payment_screen.dart' as _i59;
import '../views/e_commerce/products/product_add.dart' as _i69;
import '../views/e_commerce/products/product_detail_screen.dart' as _i53;
import '../views/e_commerce/products/products_screen.dart' as _i52;
import '../views/e_commerce/return_condition/return_condition_screen.dart'
    as _i66;
import '../views/e_commerce/return_order/return_order_invoice.dart' as _i62;
import '../views/e_commerce/return_order/return_order_screen.dart' as _i60;
import '../views/e_commerce/subscription/subscription_screen.dart' as _i64;
import '../views/e_commerce/vender/vender_detail_screen.dart' as _i57;
import '../views/e_commerce/vender/vender_screen.dart' as _i56;
import '../views/email_templates/alert_email.dart' as _i26;
import '../views/email_templates/basic_email.dart' as _i25;
import '../views/email_templates/billing_email.dart' as _i27;
import '../views/extra_pages/coming_soon.dart' as _i12;
import '../views/extra_pages/directory.dart' as _i37;
import '../views/extra_pages/error_404.dart' as _i10;
import '../views/extra_pages/error_500.dart' as _i11;
import '../views/extra_pages/faqs.dart' as _i38;
import '../views/extra_pages/gallery.dart' as _i40;
import '../views/extra_pages/invoice.dart' as _i39;
import '../views/extra_pages/maintenance.dart' as _i13;
import '../views/extra_pages/pricing.dart' as _i36;
import '../views/extra_pages/timeline.dart' as _i35;
import '../views/forms/elements_form.dart' as _i42;
import '../views/forms/file_upload_form.dart' as _i44;
import '../views/forms/mask_form.dart' as _i46;
import '../views/forms/repeater_form.dart' as _i45;
import '../views/forms/validation_form.dart' as _i43;
import '../views/forms/wizard_form.dart' as _i47;
import '../views/map/map.dart' as _i16;
import '../views/menu_bar.dart' as _i1;
import '../views/tables/basic_table.dart' as _i31;
import '../views/tables/data_tables.dart' as _i32;
import '../views/tables/editable_table.dart' as _i34;
import '../views/tables/responsive_table.dart' as _i33;
import '../views/ui_elements/alert/alert_dialog.dart' as _i21;
import '../views/ui_elements/badge/custom_badge.dart' as _i20;
import '../views/ui_elements/buttons/button.dart' as _i18;
import '../views/ui_elements/carousel/carousel.dart' as _i41;
import '../views/ui_elements/date_picker/date_picker.dart' as _i51;
import '../views/ui_elements/draganddrop/drag_and_drop_element.dart' as _i50;
import '../views/ui_elements/loader/loader.dart' as _i23;
import '../views/ui_elements/modal/modal.dart' as _i22;
import '../views/ui_elements/rating/rating.dart' as _i19;
import '../views/ui_elements/tabbar/tabs_screen.dart' as _i24;
import '../views/ui_elements/toast/toast.dart' as _i17;
import '../views/ui_elements/videos/video_screen.dart' as _i48;
import '../views/user/user_profile.dart' as _i49;

class AppRouter extends _i70.RootStackRouter {
  AppRouter([_i71.GlobalKey<_i71.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i70.PageFactory> pagesMap = {
    FMenuBar.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.FMenuBar(),
      );
    },
    LoginOne.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginOne(),
      );
    },
    LoginTwo.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginTwo(),
      );
    },
    RegisterOne.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterOne(),
      );
    },
    RegisterTwo.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterTwo(),
      );
    },
    RecoverPasswordOne.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.RecoverPasswordOne(),
      );
    },
    RecoverPasswordTwo.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.RecoverPasswordTwo(),
      );
    },
    LockScreenOne.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.LockScreenOne(),
      );
    },
    LockScreenTwo.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.LockScreenTwo(),
      );
    },
    Error404.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.Error404(),
      );
    },
    Error500.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.Error500(),
      );
    },
    ComingSoon.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ComingSoon(),
      );
    },
    Maintenance.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.Maintenance(),
      );
    },
    Dashboard.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.Dashboard(),
      );
    },
    Calendar.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.Calendar(),
      );
    },
    GoogleMaps.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.GoogleMaps(),
      );
    },
    Toast.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.Toast(),
      );
    },
    Button.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.Button(),
      );
    },
    Rating.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.Rating(),
      );
    },
    CustomBadge.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.CustomBadge(),
      );
    },
    AlertDialogBox.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.AlertDialogBox(),
      );
    },
    Modal.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.Modal(),
      );
    },
    Loaders.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.Loaders(),
      );
    },
    TabScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.TabScreen(),
      );
    },
    BasicEmail.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.BasicEmail(),
      );
    },
    AlertEmail.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.AlertEmail(),
      );
    },
    BillingEmail.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.BillingEmail(),
      );
    },
    MorrisChart.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.MorrisChart(),
      );
    },
    ChartListChart.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.ChartListChart(),
      );
    },
    ChartJsChart.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.ChartJsChart(),
      );
    },
    BasicTable.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.BasicTable(),
      );
    },
    Datatable.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i32.Datatable(),
      );
    },
    ResponsiveTable.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i33.ResponsiveTable(),
      );
    },
    EditableTable.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i34.EditableTable(),
      );
    },
    TimelineScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.TimelineScreen(),
      );
    },
    Pricing.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i36.Pricing(),
      );
    },
    DirectoryRoute.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i37.DirectoryPage(),
      );
    },
    FAQs.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i38.FAQs(),
      );
    },
    Invoice.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i39.Invoice(),
      );
    },
    Gallery.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i40.Gallery(),
      );
    },
    Carousel.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i41.Carousel(),
      );
    },
    ElementsForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i42.ElementsForm(),
      );
    },
    ValidationForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i43.ValidationForm(),
      );
    },
    FileUploadForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i44.FileUploadForm(),
      );
    },
    RepeaterForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i45.RepeaterForm(),
      );
    },
    MaskForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i46.MaskForm(),
      );
    },
    WizardForm.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i47.WizardForm(),
      );
    },
    VideoScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i48.VideoScreen(),
      );
    },
    UserProfile.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i49.UserProfile(),
      );
    },
    DragAndDrop.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i50.DragAndDrop(),
      );
    },
    DatePicker.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i51.DatePicker(),
      );
    },
    ProductsScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i52.ProductsScreen(),
      );
    },
    ProductDetailScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i53.ProductDetailScreen(),
      );
    },
    CategoryScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i54.CategoryScreen(),
      );
    },
    SubCategoryScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i55.SubCategoryScreen(),
      );
    },
    VenderScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i56.VenderScreen(),
      );
    },
    VenderDetailScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i57.VenderDetailScreen(),
      );
    },
    CustomerScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i58.CustomerScreen(),
      );
    },
    PaymentScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i59.PaymentScreen(),
      );
    },
    ReturnOrderScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i60.ReturnOrderScreen(),
      );
    },
    OrderScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i61.OrderScreen(),
      );
    },
    ReturnOrderInvoice.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i62.ReturnOrderInvoice(),
      );
    },
    OrderInvoice.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i63.OrderInvoice(),
      );
    },
    SubScriptionScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i64.SubScriptionScreen(),
      );
    },
    CouponsScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i65.CouponsScreen(),
      );
    },
    ReturnConditionScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i66.ReturnConditionScreen(),
      );
    },
    EcommerceDashboard.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i67.EcommerceDashboard(),
      );
    },
    CartScreen.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i68.CartScreen(),
      );
    },
    ProductAdd.name: (routeData) {
      return _i70.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i69.ProductAdd(),
      );
    },
  };

  @override
  List<_i70.RouteConfig> get routes => [
        _i70.RouteConfig(
          FMenuBar.name,
          path: '/',
          children: [
            _i70.RouteConfig(
              '#redirect',
              path: '',
              parent: FMenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i70.RouteConfig(
              Dashboard.name,
              path: 'dashboard',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Calendar.name,
              path: 'calendar',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              GoogleMaps.name,
              path: 'map',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Toast.name,
              path: 'toast',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Button.name,
              path: 'button-element',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Rating.name,
              path: 'rating-bar',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              CustomBadge.name,
              path: 'badge',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              AlertDialogBox.name,
              path: 'alert-dialog',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Modal.name,
              path: 'modal',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Loaders.name,
              path: 'loaders',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              TabScreen.name,
              path: 'tabs',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              BasicEmail.name,
              path: 'basic-action-email',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              AlertEmail.name,
              path: 'alert-email',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              BillingEmail.name,
              path: 'billing-email',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              MorrisChart.name,
              path: 'morris-chart',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ChartListChart.name,
              path: 'chartist-chart',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ChartJsChart.name,
              path: 'chartjs-chart',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              BasicTable.name,
              path: 'basic-table',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Datatable.name,
              path: 'data-table',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ResponsiveTable.name,
              path: 'responsive-table',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              EditableTable.name,
              path: 'editable-table',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              TimelineScreen.name,
              path: 'timeline',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Pricing.name,
              path: 'pricing',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              DirectoryRoute.name,
              path: 'card',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              FAQs.name,
              path: 'FAQs',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Invoice.name,
              path: 'invoice',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Gallery.name,
              path: 'gallery',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              Carousel.name,
              path: 'carousel-slider',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ElementsForm.name,
              path: 'elements',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ValidationForm.name,
              path: 'validation',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              FileUploadForm.name,
              path: 'dropzone',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              RepeaterForm.name,
              path: 'repeater',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              MaskForm.name,
              path: 'mask',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              WizardForm.name,
              path: 'wizard',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              VideoScreen.name,
              path: 'video-player',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              UserProfile.name,
              path: 'user-profile',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              DragAndDrop.name,
              path: 'drag-drop',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              DatePicker.name,
              path: 'date-picker',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ProductsScreen.name,
              path: 'products',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ProductDetailScreen.name,
              path: 'products/products-detail',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              CategoryScreen.name,
              path: 'category',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              SubCategoryScreen.name,
              path: 'category/sub-category',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              VenderScreen.name,
              path: 'vender',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              VenderDetailScreen.name,
              path: 'vender/vender-detail',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              CustomerScreen.name,
              path: 'customer',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              PaymentScreen.name,
              path: 'payment',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ReturnOrderScreen.name,
              path: 'return-order',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              OrderScreen.name,
              path: 'order',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ReturnOrderInvoice.name,
              path: 'return-order/return-order-invoice',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              OrderInvoice.name,
              path: 'order/order-invoice',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              SubScriptionScreen.name,
              path: 'subscribers',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              CouponsScreen.name,
              path: 'coupons',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ReturnConditionScreen.name,
              path: 'return-condition',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              EcommerceDashboard.name,
              path: 'e-commerce-dashboard',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              CartScreen.name,
              path: 'cart',
              parent: FMenuBar.name,
            ),
            _i70.RouteConfig(
              ProductAdd.name,
              path: 'product-add',
              parent: FMenuBar.name,
            ),
          ],
        ),
        _i70.RouteConfig(
          LoginOne.name,
          path: '/login-one',
        ),
        _i70.RouteConfig(
          LoginTwo.name,
          path: '/login-two',
        ),
        _i70.RouteConfig(
          RegisterOne.name,
          path: '/register-one',
        ),
        _i70.RouteConfig(
          RegisterTwo.name,
          path: '/register-two',
        ),
        _i70.RouteConfig(
          RecoverPasswordOne.name,
          path: '/recover-password-one',
        ),
        _i70.RouteConfig(
          RecoverPasswordTwo.name,
          path: '/recover-password-two',
        ),
        _i70.RouteConfig(
          LockScreenOne.name,
          path: '/lock-screen-one',
        ),
        _i70.RouteConfig(
          LockScreenTwo.name,
          path: '/lock-screen-two',
        ),
        _i70.RouteConfig(
          Error404.name,
          path: '/error-404',
        ),
        _i70.RouteConfig(
          Error500.name,
          path: '/error-500',
        ),
        _i70.RouteConfig(
          ComingSoon.name,
          path: '/coming-soon',
        ),
        _i70.RouteConfig(
          Maintenance.name,
          path: '/maintenance',
        ),
      ];
}

/// generated route for
/// [_i1.FMenuBar]
class FMenuBar extends _i70.PageRouteInfo<void> {
  const FMenuBar({List<_i70.PageRouteInfo>? children})
      : super(
          FMenuBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'FMenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i70.PageRouteInfo<void> {
  const LoginOne()
      : super(
          LoginOne.name,
          path: '/login-one',
        );

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i70.PageRouteInfo<void> {
  const LoginTwo()
      : super(
          LoginTwo.name,
          path: '/login-two',
        );

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i70.PageRouteInfo<void> {
  const RegisterOne()
      : super(
          RegisterOne.name,
          path: '/register-one',
        );

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i70.PageRouteInfo<void> {
  const RegisterTwo()
      : super(
          RegisterTwo.name,
          path: '/register-two',
        );

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i70.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(
          RecoverPasswordOne.name,
          path: '/recover-password-one',
        );

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.RecoverPasswordTwo]
class RecoverPasswordTwo extends _i70.PageRouteInfo<void> {
  const RecoverPasswordTwo()
      : super(
          RecoverPasswordTwo.name,
          path: '/recover-password-two',
        );

  static const String name = 'RecoverPasswordTwo';
}

/// generated route for
/// [_i8.LockScreenOne]
class LockScreenOne extends _i70.PageRouteInfo<void> {
  const LockScreenOne()
      : super(
          LockScreenOne.name,
          path: '/lock-screen-one',
        );

  static const String name = 'LockScreenOne';
}

/// generated route for
/// [_i9.LockScreenTwo]
class LockScreenTwo extends _i70.PageRouteInfo<void> {
  const LockScreenTwo()
      : super(
          LockScreenTwo.name,
          path: '/lock-screen-two',
        );

  static const String name = 'LockScreenTwo';
}

/// generated route for
/// [_i10.Error404]
class Error404 extends _i70.PageRouteInfo<void> {
  const Error404()
      : super(
          Error404.name,
          path: '/error-404',
        );

  static const String name = 'Error404';
}

/// generated route for
/// [_i11.Error500]
class Error500 extends _i70.PageRouteInfo<void> {
  const Error500()
      : super(
          Error500.name,
          path: '/error-500',
        );

  static const String name = 'Error500';
}

/// generated route for
/// [_i12.ComingSoon]
class ComingSoon extends _i70.PageRouteInfo<void> {
  const ComingSoon()
      : super(
          ComingSoon.name,
          path: '/coming-soon',
        );

  static const String name = 'ComingSoon';
}

/// generated route for
/// [_i13.Maintenance]
class Maintenance extends _i70.PageRouteInfo<void> {
  const Maintenance()
      : super(
          Maintenance.name,
          path: '/maintenance',
        );

  static const String name = 'Maintenance';
}

/// generated route for
/// [_i14.Dashboard]
class Dashboard extends _i70.PageRouteInfo<void> {
  const Dashboard()
      : super(
          Dashboard.name,
          path: 'dashboard',
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i15.Calendar]
class Calendar extends _i70.PageRouteInfo<void> {
  const Calendar()
      : super(
          Calendar.name,
          path: 'calendar',
        );

  static const String name = 'Calendar';
}

/// generated route for
/// [_i16.GoogleMaps]
class GoogleMaps extends _i70.PageRouteInfo<void> {
  const GoogleMaps()
      : super(
          GoogleMaps.name,
          path: 'map',
        );

  static const String name = 'GoogleMaps';
}

/// generated route for
/// [_i17.Toast]
class Toast extends _i70.PageRouteInfo<void> {
  const Toast()
      : super(
          Toast.name,
          path: 'toast',
        );

  static const String name = 'Toast';
}

/// generated route for
/// [_i18.Button]
class Button extends _i70.PageRouteInfo<void> {
  const Button()
      : super(
          Button.name,
          path: 'button-element',
        );

  static const String name = 'Button';
}

/// generated route for
/// [_i19.Rating]
class Rating extends _i70.PageRouteInfo<void> {
  const Rating()
      : super(
          Rating.name,
          path: 'rating-bar',
        );

  static const String name = 'Rating';
}

/// generated route for
/// [_i20.CustomBadge]
class CustomBadge extends _i70.PageRouteInfo<void> {
  const CustomBadge()
      : super(
          CustomBadge.name,
          path: 'badge',
        );

  static const String name = 'CustomBadge';
}

/// generated route for
/// [_i21.AlertDialogBox]
class AlertDialogBox extends _i70.PageRouteInfo<void> {
  const AlertDialogBox()
      : super(
          AlertDialogBox.name,
          path: 'alert-dialog',
        );

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i22.Modal]
class Modal extends _i70.PageRouteInfo<void> {
  const Modal()
      : super(
          Modal.name,
          path: 'modal',
        );

  static const String name = 'Modal';
}

/// generated route for
/// [_i23.Loaders]
class Loaders extends _i70.PageRouteInfo<void> {
  const Loaders()
      : super(
          Loaders.name,
          path: 'loaders',
        );

  static const String name = 'Loaders';
}

/// generated route for
/// [_i24.TabScreen]
class TabScreen extends _i70.PageRouteInfo<void> {
  const TabScreen()
      : super(
          TabScreen.name,
          path: 'tabs',
        );

  static const String name = 'TabScreen';
}

/// generated route for
/// [_i25.BasicEmail]
class BasicEmail extends _i70.PageRouteInfo<void> {
  const BasicEmail()
      : super(
          BasicEmail.name,
          path: 'basic-action-email',
        );

  static const String name = 'BasicEmail';
}

/// generated route for
/// [_i26.AlertEmail]
class AlertEmail extends _i70.PageRouteInfo<void> {
  const AlertEmail()
      : super(
          AlertEmail.name,
          path: 'alert-email',
        );

  static const String name = 'AlertEmail';
}

/// generated route for
/// [_i27.BillingEmail]
class BillingEmail extends _i70.PageRouteInfo<void> {
  const BillingEmail()
      : super(
          BillingEmail.name,
          path: 'billing-email',
        );

  static const String name = 'BillingEmail';
}

/// generated route for
/// [_i28.MorrisChart]
class MorrisChart extends _i70.PageRouteInfo<void> {
  const MorrisChart()
      : super(
          MorrisChart.name,
          path: 'morris-chart',
        );

  static const String name = 'MorrisChart';
}

/// generated route for
/// [_i29.ChartListChart]
class ChartListChart extends _i70.PageRouteInfo<void> {
  const ChartListChart()
      : super(
          ChartListChart.name,
          path: 'chartist-chart',
        );

  static const String name = 'ChartListChart';
}

/// generated route for
/// [_i30.ChartJsChart]
class ChartJsChart extends _i70.PageRouteInfo<void> {
  const ChartJsChart()
      : super(
          ChartJsChart.name,
          path: 'chartjs-chart',
        );

  static const String name = 'ChartJsChart';
}

/// generated route for
/// [_i31.BasicTable]
class BasicTable extends _i70.PageRouteInfo<void> {
  const BasicTable()
      : super(
          BasicTable.name,
          path: 'basic-table',
        );

  static const String name = 'BasicTable';
}

/// generated route for
/// [_i32.Datatable]
class Datatable extends _i70.PageRouteInfo<void> {
  const Datatable()
      : super(
          Datatable.name,
          path: 'data-table',
        );

  static const String name = 'Datatable';
}

/// generated route for
/// [_i33.ResponsiveTable]
class ResponsiveTable extends _i70.PageRouteInfo<void> {
  const ResponsiveTable()
      : super(
          ResponsiveTable.name,
          path: 'responsive-table',
        );

  static const String name = 'ResponsiveTable';
}

/// generated route for
/// [_i34.EditableTable]
class EditableTable extends _i70.PageRouteInfo<void> {
  const EditableTable()
      : super(
          EditableTable.name,
          path: 'editable-table',
        );

  static const String name = 'EditableTable';
}

/// generated route for
/// [_i35.TimelineScreen]
class TimelineScreen extends _i70.PageRouteInfo<void> {
  const TimelineScreen()
      : super(
          TimelineScreen.name,
          path: 'timeline',
        );

  static const String name = 'TimelineScreen';
}

/// generated route for
/// [_i36.Pricing]
class Pricing extends _i70.PageRouteInfo<void> {
  const Pricing()
      : super(
          Pricing.name,
          path: 'pricing',
        );

  static const String name = 'Pricing';
}

/// generated route for
/// [_i37.DirectoryPage]
class DirectoryRoute extends _i70.PageRouteInfo<void> {
  const DirectoryRoute()
      : super(
          DirectoryRoute.name,
          path: 'card',
        );

  static const String name = 'DirectoryRoute';
}

/// generated route for
/// [_i38.FAQs]
class FAQs extends _i70.PageRouteInfo<void> {
  const FAQs()
      : super(
          FAQs.name,
          path: 'FAQs',
        );

  static const String name = 'FAQs';
}

/// generated route for
/// [_i39.Invoice]
class Invoice extends _i70.PageRouteInfo<void> {
  const Invoice()
      : super(
          Invoice.name,
          path: 'invoice',
        );

  static const String name = 'Invoice';
}

/// generated route for
/// [_i40.Gallery]
class Gallery extends _i70.PageRouteInfo<void> {
  const Gallery()
      : super(
          Gallery.name,
          path: 'gallery',
        );

  static const String name = 'Gallery';
}

/// generated route for
/// [_i41.Carousel]
class Carousel extends _i70.PageRouteInfo<void> {
  const Carousel()
      : super(
          Carousel.name,
          path: 'carousel-slider',
        );

  static const String name = 'Carousel';
}

/// generated route for
/// [_i42.ElementsForm]
class ElementsForm extends _i70.PageRouteInfo<void> {
  const ElementsForm()
      : super(
          ElementsForm.name,
          path: 'elements',
        );

  static const String name = 'ElementsForm';
}

/// generated route for
/// [_i43.ValidationForm]
class ValidationForm extends _i70.PageRouteInfo<void> {
  const ValidationForm()
      : super(
          ValidationForm.name,
          path: 'validation',
        );

  static const String name = 'ValidationForm';
}

/// generated route for
/// [_i44.FileUploadForm]
class FileUploadForm extends _i70.PageRouteInfo<void> {
  const FileUploadForm()
      : super(
          FileUploadForm.name,
          path: 'dropzone',
        );

  static const String name = 'FileUploadForm';
}

/// generated route for
/// [_i45.RepeaterForm]
class RepeaterForm extends _i70.PageRouteInfo<void> {
  const RepeaterForm()
      : super(
          RepeaterForm.name,
          path: 'repeater',
        );

  static const String name = 'RepeaterForm';
}

/// generated route for
/// [_i46.MaskForm]
class MaskForm extends _i70.PageRouteInfo<void> {
  const MaskForm()
      : super(
          MaskForm.name,
          path: 'mask',
        );

  static const String name = 'MaskForm';
}

/// generated route for
/// [_i47.WizardForm]
class WizardForm extends _i70.PageRouteInfo<void> {
  const WizardForm()
      : super(
          WizardForm.name,
          path: 'wizard',
        );

  static const String name = 'WizardForm';
}

/// generated route for
/// [_i48.VideoScreen]
class VideoScreen extends _i70.PageRouteInfo<void> {
  const VideoScreen()
      : super(
          VideoScreen.name,
          path: 'video-player',
        );

  static const String name = 'VideoScreen';
}

/// generated route for
/// [_i49.UserProfile]
class UserProfile extends _i70.PageRouteInfo<void> {
  const UserProfile()
      : super(
          UserProfile.name,
          path: 'user-profile',
        );

  static const String name = 'UserProfile';
}

/// generated route for
/// [_i50.DragAndDrop]
class DragAndDrop extends _i70.PageRouteInfo<void> {
  const DragAndDrop()
      : super(
          DragAndDrop.name,
          path: 'drag-drop',
        );

  static const String name = 'DragAndDrop';
}

/// generated route for
/// [_i51.DatePicker]
class DatePicker extends _i70.PageRouteInfo<void> {
  const DatePicker()
      : super(
          DatePicker.name,
          path: 'date-picker',
        );

  static const String name = 'DatePicker';
}

/// generated route for
/// [_i52.ProductsScreen]
class ProductsScreen extends _i70.PageRouteInfo<void> {
  const ProductsScreen()
      : super(
          ProductsScreen.name,
          path: 'products',
        );

  static const String name = 'ProductsScreen';
}

/// generated route for
/// [_i53.ProductDetailScreen]
class ProductDetailScreen extends _i70.PageRouteInfo<void> {
  const ProductDetailScreen()
      : super(
          ProductDetailScreen.name,
          path: 'products/products-detail',
        );

  static const String name = 'ProductDetailScreen';
}

/// generated route for
/// [_i54.CategoryScreen]
class CategoryScreen extends _i70.PageRouteInfo<void> {
  const CategoryScreen()
      : super(
          CategoryScreen.name,
          path: 'category',
        );

  static const String name = 'CategoryScreen';
}

/// generated route for
/// [_i55.SubCategoryScreen]
class SubCategoryScreen extends _i70.PageRouteInfo<void> {
  const SubCategoryScreen()
      : super(
          SubCategoryScreen.name,
          path: 'category/sub-category',
        );

  static const String name = 'SubCategoryScreen';
}

/// generated route for
/// [_i56.VenderScreen]
class VenderScreen extends _i70.PageRouteInfo<void> {
  const VenderScreen()
      : super(
          VenderScreen.name,
          path: 'vender',
        );

  static const String name = 'VenderScreen';
}

/// generated route for
/// [_i57.VenderDetailScreen]
class VenderDetailScreen extends _i70.PageRouteInfo<void> {
  const VenderDetailScreen()
      : super(
          VenderDetailScreen.name,
          path: 'vender/vender-detail',
        );

  static const String name = 'VenderDetailScreen';
}

/// generated route for
/// [_i58.CustomerScreen]
class CustomerScreen extends _i70.PageRouteInfo<void> {
  const CustomerScreen()
      : super(
          CustomerScreen.name,
          path: 'customer',
        );

  static const String name = 'CustomerScreen';
}

/// generated route for
/// [_i59.PaymentScreen]
class PaymentScreen extends _i70.PageRouteInfo<void> {
  const PaymentScreen()
      : super(
          PaymentScreen.name,
          path: 'payment',
        );

  static const String name = 'PaymentScreen';
}

/// generated route for
/// [_i60.ReturnOrderScreen]
class ReturnOrderScreen extends _i70.PageRouteInfo<void> {
  const ReturnOrderScreen()
      : super(
          ReturnOrderScreen.name,
          path: 'return-order',
        );

  static const String name = 'ReturnOrderScreen';
}

/// generated route for
/// [_i61.OrderScreen]
class OrderScreen extends _i70.PageRouteInfo<void> {
  const OrderScreen()
      : super(
          OrderScreen.name,
          path: 'order',
        );

  static const String name = 'OrderScreen';
}

/// generated route for
/// [_i62.ReturnOrderInvoice]
class ReturnOrderInvoice extends _i70.PageRouteInfo<void> {
  const ReturnOrderInvoice()
      : super(
          ReturnOrderInvoice.name,
          path: 'return-order/return-order-invoice',
        );

  static const String name = 'ReturnOrderInvoice';
}

/// generated route for
/// [_i63.OrderInvoice]
class OrderInvoice extends _i70.PageRouteInfo<void> {
  const OrderInvoice()
      : super(
          OrderInvoice.name,
          path: 'order/order-invoice',
        );

  static const String name = 'OrderInvoice';
}

/// generated route for
/// [_i64.SubScriptionScreen]
class SubScriptionScreen extends _i70.PageRouteInfo<void> {
  const SubScriptionScreen()
      : super(
          SubScriptionScreen.name,
          path: 'subscribers',
        );

  static const String name = 'SubScriptionScreen';
}

/// generated route for
/// [_i65.CouponsScreen]
class CouponsScreen extends _i70.PageRouteInfo<void> {
  const CouponsScreen()
      : super(
          CouponsScreen.name,
          path: 'coupons',
        );

  static const String name = 'CouponsScreen';
}

/// generated route for
/// [_i66.ReturnConditionScreen]
class ReturnConditionScreen extends _i70.PageRouteInfo<void> {
  const ReturnConditionScreen()
      : super(
          ReturnConditionScreen.name,
          path: 'return-condition',
        );

  static const String name = 'ReturnConditionScreen';
}

/// generated route for
/// [_i67.EcommerceDashboard]
class EcommerceDashboard extends _i70.PageRouteInfo<void> {
  const EcommerceDashboard()
      : super(
          EcommerceDashboard.name,
          path: 'e-commerce-dashboard',
        );

  static const String name = 'EcommerceDashboard';
}

/// generated route for
/// [_i68.CartScreen]
class CartScreen extends _i70.PageRouteInfo<void> {
  const CartScreen()
      : super(
          CartScreen.name,
          path: 'cart',
        );

  static const String name = 'CartScreen';
}

/// generated route for
/// [_i69.ProductAdd]
class ProductAdd extends _i70.PageRouteInfo<void> {
  const ProductAdd()
      : super(
          ProductAdd.name,
          path: 'product-add',
        );

  static const String name = 'ProductAdd';
}
