import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_base/App/Views/Auth/Login/login_view.dart';

import '../../../../Constants/app_color.dart';
import '../../../../Extensions/screen_size.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: getScreenHeight(context, 15)),
              height: getScreenWidth(context, 40),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
                      prefixIcon: Icon(Icons.email),
                      iconColor: AppColors.primaryColor,
                      contentPadding: EdgeInsets.only(left: 0),
                      focusColor: AppColors.primaryColor,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFeildColor, width: .5),
                          borderRadius: BorderRadius.circular(
                            16,
                          )),
                      hintText: "Email",
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
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
            SizedBox(
              height: 8,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
                      hintText: "Confirm Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFeildColor, width: .5),
                          borderRadius: BorderRadius.circular(
                            16,
                          )),
                    ))),
            InkWell(
              onTap: () {
                Get.to(LoginView());
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
                  "Register",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account?"),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: AppColors.primaryColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
