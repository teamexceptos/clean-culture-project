import 'package:cleancul/presentation/screens/auth/signin_screen.dart';
import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/text_field.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, left: 15, right: 15),
          width: SizeConfig.screenWidthDp,
          height: SizeConfig.screenHeightDp,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  MkImageAssets.greenCleanCulIcon,
                  XMargin(10),
                  TitleText(text: 'Clean Culture', fontSize: 15, textColor: themeData.primaryColor,)
                ],
              ),
              YMargin(20),
              TitleText(text: 'Sign up to joing thousands of users worldwide!', fontSize: 12,),
              NormalText(text: 'We are all about convenience'),
              YMargin(40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    XTextField(
                      controller: _nameController,
                      hintText: 'Name',
                      validator: (String value){
                        return null;
                      }
                    ),
                    YMargin(15),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.radio_button_unchecked, size: 12,),
                        Row(
                          children: [
                            NormalText(text: 'By signing up, you agree to our ', fontSize: 12,),
                            TitleText(text: 'Terms Of Service & Privacy Policy', fontSize: 12, textColor: themeData.primaryColor,)
                          ],
                        )
                      ],
                    ),
                    YMargin(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(text: 'Or Sign up with: ',),
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
                    YMargin(30),
                    XButton(
                      onClick: (){

                      },
                      text: 'Join Us'
                    ),
                    YMargin(10),
                    GestureDetector(
                      onTap: (){
                        navigateReplace(context, SigninScreen());
                      },
                      child: Row(
                        children: [
                          NormalText(text: 'Have an account? ',),
                          TitleText(text: 'Log in', textColor: themeData.primaryColor, fontSize: 15,),
                        ],
                      ),
                    ),
                    YMargin(40),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
