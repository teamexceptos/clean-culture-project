import 'package:cleancul/presentation/screens/onboarding/permission_screen.dart';
import 'package:cleancul/presentation/screens/auth/signup_screen.dart';
import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/text_field.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidthDp,
          height: SizeConfig.screenHeightDp,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MkImageAssets.top_right,
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TitleText(text: 'Clean Culture', fontSize: 15, textColor: themeData.primaryColor,),
                      MkImageAssets.greenCleanCulIcon,
                      XMargin(10),
                    ],
                  ),
                  YMargin(20),
                  TitleText(text: 'Sign up to joing thousands of users worldwide!', fontSize: 12,),
                  NormalText(text: 'We are all about convenience'),
                  YMargin(30),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          XTextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              hintText: 'Email Address',
                              validator: (String value){
                                return null;
                              }
                          ),
                          YMargin(15),
                          XTextField(
                              obscureText: true,
                              controller: _passwordController,
                              hintText: 'Password',
                              validator: (String value){
                                return null;
                              }
                          ),
                          YMargin(25),
                          TitleText(text: 'Forgot Password?', fontSize: 12, textColor: themeData.primaryColor,),
                          YMargin(30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NormalText(text: 'Or Sign In with: ',),
                                Row(
                                  children: [
                                    MkImageAssets.googleIcon,
                                    XMargin(10),
                                    MkImageAssets.facebookIcon,
                                    XMargin(10)
                                  ],
                                )
                              ],
                            ),
                          ),
                          YMargin(30),
                          XButton(
                              onClick: (){
                                navigateReplace(context, PermissionScreen());

                              },
                              text: 'Log In'
                          ),
                          YMargin(40),
                          GestureDetector(
                            onTap: (){
                              navigateReplace(context, SignupScreen());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NormalText(text: "Don't have an account? ",),
                                TitleText(text: 'Sign Up', textColor: themeData.primaryColor, fontSize: 15,),
                              ],
                            ),
                          ),
                          YMargin(40),
                        ],
                      )
                  ),
                ],),
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  MkImageAssets.bottom_left,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
