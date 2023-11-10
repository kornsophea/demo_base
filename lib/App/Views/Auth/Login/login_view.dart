import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:getx_base/Constants/app_color.dart';
import 'package:getx_base/Constants/app_icon.dart';
import 'package:getx_base/main_page.dart';

import '../../../../Extensions/screen_size.dart';
import '../Register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: getScreenHeight(context, 50),
              child: Image.asset(
                'assets/images/building.JPG',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getScreenHeight(context, 37)),
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: 100,
                  color: Colors.white38,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getScreenHeight(context, 38.5)),
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: 100,
                  color: Colors.blue.withOpacity(.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getScreenHeight(context, 40)),
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: getScreenHeight(context, 65),
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: getScreenHeight(context, 30)),
              height: getScreenWidth(context, 40),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            Padding(
              padding: EdgeInsets.only(top: getScreenHeight(context, 55)),
              child: Column(
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password field is required";
                            }

                            if (value.length < 8) {
                              return "Password at least have 8 digits";
                            }
                            return null;
                          },
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon: Icon(Icons.person),
                            iconColor: AppColors.primaryColor,
                            contentPadding: EdgeInsets.only(left: 0),
                            focusColor: AppColors.primaryColor,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.textFeildColor, width: .5),
                                borderRadius: BorderRadius.circular(
                                  16,
                                )),
                            hintText: "Username",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.textFeildColor, width: .5),
                                borderRadius: BorderRadius.circular(
                                  16,
                                )),
                          ))),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password field is required";
                            }

                            if (value.length < 8) {
                              return "Password at least have 8 digits";
                            }
                            return null;
                          },
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon: Icon(Icons.lock),
                            iconColor: AppColors.primaryColor,
                            contentPadding: EdgeInsets.only(left: 0),
                            focusColor: AppColors.primaryColor,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.textFeildColor, width: .5),
                                borderRadius: BorderRadius.circular(
                                  16,
                                )),
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.textFeildColor, width: .5),
                                borderRadius: BorderRadius.circular(
                                  16,
                                )),
                          ))),
                  InkWell(onTap: (){
                    Get.offAll(MainPage());
                  },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      width: getScreenWidth(context, 100),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Don't have account?"),InkWell(onTap: (){Get.to(RegisterView());},child: Text("Register",style: TextStyle(color: AppColors.primaryColor),))],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
