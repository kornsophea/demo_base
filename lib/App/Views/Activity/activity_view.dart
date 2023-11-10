import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_base/App/Views/Activity/activity_detail_view.dart';
import 'package:getx_base/Constants/app_component.dart';
import 'package:getx_base/Extensions/screen_size.dart';

class ActivityView extends StatefulWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  State<ActivityView> createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(5, (index) => _itemActivity()),
        ),
      ),
    );
  }

  Widget _itemActivity() {
    return InkWell(
      onTap: (){
        Get.to(()=>ActivityDetailView());
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   width: getScreenWidth(context, 40),
                //   margin: EdgeInsets.all(AppComponent.padding8),
                //   decoration: BoxDecoration(
                //       borderRadius:
                //           BorderRadius.circular(AppComponent.cornerRadius),
                //       image: DecorationImage(
                //           fit: BoxFit.fill,
                //           image: AssetImage("assets/images/building.JPG"))),
                // ),
                Image.asset(
                  "assets/images/building.JPG",
                  width: getScreenWidth(context, 40),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ការចុះបញ្ជីដីធ្លីបង្ហើយ គឺជាកិច្ចការដែលក្រសួងរៀបចំដែនដី នគរូបនីយកម្ម និងសំណង់ បាននិងកំពុងជំរុញដើម្បីឆ្លើយតបទៅនឹងគោលនយោបាយយុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ នេះ",
                          style: TextStyle(fontSize: 16),maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),SizedBox(height: 12,),
                        Row(
                          children: [
                            Text("November 1, 2023"),
                            Spacer(),
                            Text("See more >")
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppComponent.padding8),
            child: Divider(
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
