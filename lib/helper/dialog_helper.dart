import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_base/Constants/app_component.dart';
import 'package:url_launcher/url_launcher.dart';

class DiologHelper {
  static void showError({
    String title = 'alert_default_title',
    String desciption = 'alert_default_message',
    String? moreDesciption,
  }) {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        child: Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                   title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 20),
              Text( desciption,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(AppComponent.cornerRadius),
                        ),
                        minimumSize:
                            const Size(100, AppComponent.continueButtonHeight),
                      ),
                      onPressed: () {
                        // final context = Get.context;
                        // if (desciption.toString().isUnauthenticated() &&
                        //     context != null) {
                        //   UserStorage.share.clearUserSession();
                        //   Navigator.of(context).pushAndRemoveUntil(
                        //       MaterialPageRoute(
                        //         builder: (BuildContext context) =>
                        //             const AuthenticationPage(),
                        //       ),
                        //       (route) => false);
                        // } else {
                        //   if (Get.isDialogOpen!) Get.back();
                        // }
                      },
                      child:Text("",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // static void showPDF({
  //   String title = 'alert_pdf_default_title',
  //   required String pdfUrl,
  // }) {
  //   Get.dialog(
  //     Dialog(
  //       child: Container(
  //         padding: const EdgeInsets.all(20),
  //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
            
  //                Text(
  //                 title,
  //                 style: const TextStyle(
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold,
                  
  //                 )
  //             ),
  //             const SizedBox(height: 20),
  //             // LoadWebview(url: pdfUrl, height: 200, width: 200),
  //             const SizedBox(height: 20),
  //             ElevatedButton(
  //               style: ElevatedButton.styleFrom(
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(
  //                     AppComponent.cornerRadius,
  //                   ),
  //                 ),
  //                 minimumSize: const Size(
  //                   100,
  //                   AppComponent.continueButtonHeight,
  //                 ),
  //               ),
  //               onPressed: () {
  //                 if (Get.isDialogOpen!) Get.back();
  //               },
  //               child: FutureBuilder(
  //                 future: Localize.get("alert_close_button"),
  //                 builder: (context, snapshot) => Text(
  //                   snapshot.data ?? "",
  //                   style: const TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  static Future<void> launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      DiologHelper.showError(
        title: "alert_error_title",
        desciption: 'alert_pdf_error_message',
      );
    }
  }
}
