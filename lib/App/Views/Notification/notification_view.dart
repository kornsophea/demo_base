import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          // SizedBox(
          //   height: 32,
          // ),
          // Row(
          //   children: [
          //     IconButton(
          //         onPressed: () {
          //           Get.back();
          //         },
          //         icon: Icon(Icons.arrow_back)),
          //     Text(
          //       "សេចក្តីជូនដំណឹង",
          //       style: TextStyle(fontWeight: FontWeight.w500),
          //     )
          //   ],
          // ),
          //
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: List.generate(
                  10,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                              children: [
                                Text("08 Mar 2023"),
                                SizedBox(width: 16,),
                                Expanded(
                                  child: Text(
                                      "ប្រកាសអន្តរក្រសួងស្ដីពីផ្ដល់នីតិសម្បទាជានគរបាលយុត្តិធម៌"),
                                ),
                              ],
                            ),
                      ),
                      Divider(height: 1,color: Colors.grey,)
                    ],
                  )),
            ),
          )
      ],
    ),
        ));
  }
}
