import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/auth_provider/login_provider.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx/flutterx.dart';
import 'package:provider/provider.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _loginKey = GlobalKey<FormState>();

  // final CheckboxBloc _checkboxBloc = CheckboxBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SelectionArea(
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    Images.authBG,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            FxBox.h20,
                            Center(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 460,
                                ),
                                padding: Responsive.isMobile(context)
                                    ? const EdgeInsets.all(32)
                                    : const EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConst.black
                                      : ColorConst.white,
                                  border: Border.all(
                                    color: isDark
                                        ? ColorConst.black
                                        : ColorConst.white,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Column(
                                  children: [
                                    // _logoView(),
                                    Image.asset(
                                      Images.cmLogo,
                                      height: 150,
                                      fit: BoxFit.contain,
                                    ),
                                    FxBox.h16,
                                    ConstantAuth.headerView(
                                      Strings.signIn,
                                      '',
                                      context,
                                    ),
                                    _bottomView(),
                                  ],
                                ),
                              ),
                            ),
                            FxBox.h20,
                          ],
                        ),
                      ),
                      Responsive.isWeb(context)
                          ? Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    constraints:
                                        const BoxConstraints(maxHeight: 400),
                                    child: Image.asset(
                                      Images.cmLogo,
                                      height: 300,
                                      fit: BoxFit.contain,
                                    ),
                                    // SvgPicture.asset(
                                    //   IconlyBroken.adminKitText,
                                    // ),
                                  ),
                                  FxBox.h16,
                                  // Center(
                                  //   child: CustomText(
                                  //     title: Strings.loginHeaderText,
                                  //     fontSize: 15,
                                  //     fontWeight: FontWeight.w700,
                                  //     textColor: isDark
                                  //         ? ColorConst.darkFooterText
                                  //         : ColorConst.lightFontColor,
                                  //   ),
                                  // ),
                                  FxBox.h12,
                                  ConstantAuth.footerText(),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _logoView() {
  //   return SvgPicture.asset(IconlyBroken.adminKit);
  // }

  Widget _bottomView() {
    return Form(
      key: _loginKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: [
          FxBox.h28,
          ConstantAuth.labelView(Strings.emailstr),
          FxBox.h8,
          _usernameTextBoxWidget(),
          FxBox.h16,
          ConstantAuth.labelView(Strings.password),
          FxBox.h8,
          _passwordTextBoxWidget(),
          FxBox.h16,
          Consumer<LoginProvider>(builder: (_,loginData,__)=> loginData.checkLoginApi == false ? Container(
            height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(8.0),
            ),
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 8,
            ),
          )  :  _loginButton()),
          // FxBox.h20,
          // _forgotPasswordButton(),
          FxBox.h20,
          Center(child: _serviceText()),
        ],
      ),
    );
  }
  // Widget _mainView() {
  //   return Stack(
  //     children: [
  //       ConstantAuth.homeBackground(context),
  //       Container(
  //         height: MediaQuery.of(context).size.height,
  //         width: MediaQuery.of(context).size.width,
  //         alignment: Alignment.center,
  //         child: Container(
  //           margin: const EdgeInsets.only(top: 50),
  //           padding: const EdgeInsets.symmetric(horizontal: 36.0),
  //           decoration: BoxDecoration(
  //             color: isDark ? ColorConst.black : ColorConst.white,
  //             border: Border.all(
  //               color: isDark ? ColorConst.black : ColorConst.white,
  //             ),
  //             borderRadius: BorderRadius.circular(24),
  //           ),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               ConstantAuth.logoWithAppName(
  //                 isDark ? ColorConst.white : ColorConst.black,
  //               ),
  //               FxBox.h28,
  //               Center(
  //                 child: CustomText(
  //                   title: Strings.welcomeBack,
  //                   fontSize: 19,
  //                   fontWeight: FontWeight.w800,
  //                   textColor: isDark
  //                       ? ColorConst.darkFooterText
  //                       : ColorConst.lightFontColor,
  //                 ),
  //               ),
  //               FxBox.h6,
  //               Center(
  //                 child: CustomText(
  //                   title: Strings.loginHeaderText,
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.w700,
  //                   textColor: isDark
  //                       ? ColorConst.darkFooterText
  //                       : ColorConst.lightFontColor,
  //                 ),
  //               ),
  //               FxBox.h28,
  //               ConstantAuth.labelView(Strings.emailstr),
  //               FxBox.h8,
  //               _usernameTextBoxWidget(),
  //               FxBox.h16,
  //               ConstantAuth.labelView(Strings.password),
  //               FxBox.h8,
  //               _passwordTextBoxWidget(),
  //               // FxBox.h12,
  //               // _rememberMeCheckBox(),
  //               FxBox.h12,
  //               _loginButton(),
  //               FxBox.h20,
  //               _forgotPasswordButton(),

  //               FxBox.h52,

  //               _serviceText(),
  //               FxBox.h20,
  //               ConstantAuth.signUp(
  //                   context, true, Strings.dontHaveAccount, Strings.signUpNow),
  //               // FxBox.h16,
  //               // ConstantAuth.footerText(),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _serviceText() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Expanded(
        //   child: CustomText(
        //     title: Strings.privacy,
        //     fontSize: 14,
        //     fontWeight: FontWeight.w600,
        //     textColor: isDark ? ColorConst.white : ColorConst.black,
        //   ),
        // ),
        // Expanded(
        //   child: CustomText(
        //     title: Strings.terms,
        //     fontSize: 14,
        //     fontWeight: FontWeight.w600,
        //     textColor: isDark ? ColorConst.white : ColorConst.black,
        //   ),
        // ),
        // Expanded(
        //   child:
            CustomText(
            title: Strings.sarvadhi2022,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            textColor: isDark ? ColorConst.white : ColorConst.black,
          ),
        // ),
      ],
    );
  }

  Widget _usernameTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enterEmail,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      validator: (v) {
        if(v!.isEmpty){
          return 'Le champ e-mail est vide';
        }
        return null;
      },
      controller: _usernameController,
    );
  }

  Widget _passwordTextBoxWidget() {
    return CustomTextField(
      obsecureText: true,
      hintText: Strings.enterPassword,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      validator: (v) {
        if(v!.isEmpty){
          return 'Le champ du mot de passe est vide';
        }
        return null;
      },
      controller: _passwordController,
    );
  }

  // Widget _rememberMeCheckBox() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       BlocProvider(
  //         create: (context) => _checkboxBloc,
  //         child: BlocBuilder<CheckboxBloc, CheckboxState>(
  //           builder: (context, state) {
  //             return state.when(
  //               success: (isChecked) {
  //                 return Checkbox(
  //                   value: isChecked,
  //                   onChanged: (value) {
  //                     _rememberMeAction(value!);
  //                   },
  //                   activeColor: ColorConst.primary,
  //                   focusColor: ColorConst.primary,
  //                 );
  //               },
  //             );
  //           },
  //         ),
  //       ),
  //       CustomText(
  //         title: Strings.rememberMeLabel,
  //         textColor:
  //             isDark ? ColorConst.darkFooterText : ColorConst.lightFontColor,
  //         fontWeight: FontWeight.w700,
  //       ),
  //     ],
  //   );
  // }

  // Future<void> _rememberMeAction(bool isChecked) async {
  //   _checkboxBloc.add(CheckboxEvent.started(isChecked: isChecked));
  // }

  Widget _loginButton() {
    return FxButton(
      onPressed: () {
        final loginData = Provider.of<LoginProvider>(context,listen: false);
        loginData.loginApiCheck();
        var isValid = _loginKey.currentState!.validate();
        if(!isValid){
          return;
        }
        _loginKey.currentState!.save();
        // loginData.getLoginCheck();
        loginData.loginApi(context, _usernameController.text, _passwordController.text).then((value) {
          loginData.isLogin == true ? context.router.replaceNamed('/menu/') : null;
        });
      },
      text: Strings.signin,
      borderRadius: 8.0,
      height: 40,
      minWidth: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _forgotPasswordButton() {
    return GestureDetector(
      onTap: () {
        context.router.push(const RecoverPasswordTwo());
      },
      child: FxHover(
        builder: (isHover) {
          Color color = isHover
              ? ColorConst.primaryDark
              : Theme.of(context).colorScheme.primary;
          return Row(
            children: [
              Icon(
                Icons.lock,
                size: 14,
                color: color,
              ),
              FxBox.w4,
              CustomText(
                title: Strings.forgotPassword,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                textColor: color,
              ),
            ],
          );
        },
      ),
    );
  }
}
