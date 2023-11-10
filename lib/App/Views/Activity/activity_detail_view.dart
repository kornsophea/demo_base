import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_base/Constants/app_color.dart';
import 'package:getx_base/Extensions/screen_size.dart';

class ActivityDetailView extends StatefulWidget {
  const ActivityDetailView({Key? key}) : super(key: key);

  @override
  State<ActivityDetailView> createState() => _ActivityDetailViewState();
}

class _ActivityDetailViewState extends State<ActivityDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                IconButton(onPressed: () {Get.back();}, icon: Icon(Icons.arrow_back))
                ,Text(
                  "សម្មភាពថ្នាក់ដឹកនាំ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500),
                )],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getScreenHeight(context, 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/building.JPG"))),
                  ),

                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "ការចុះបញ្ជីដីធ្លីបង្ហើយ គឺជាកិច្ចការដែលក្រសួងរៀបចំដែនដី នគរូបនីយកម្ម និងសំណង់ បាននិងកំពុងជំរុញដើម្បីឆ្លើយតបទៅនឹងគោលនយោបាយយុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ នេះ"),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "By An Bunthan | ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500),
                      ),Text(
                        "November 1, 2023 ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("ការចុះបញ្ជីដីធ្លីបង្ហើយ គឺជាកិច្ចការដែលក្រសួងរៀបចំដែនដី នគរូបនីយកម្ម និងសំណង់ បាននិងកំពុងជំរុញដើម្បីឆ្លើយតបទៅនឹងគោលនយោបាយយុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ នេះ។ថ្លែងនៅក្នុងកិច្ចប្រជុំពិភាក្សាលើការជំរុញការរៀបចំចុះបញ្ជីដីធ្លីបង្ហើយនៅក្នុងភូមិសាស្រ្តខេត្តកំពង់ស្ពឺ ឯកឧត្តមឧបនាយករដ្ឋមន្ត្រី សាយ សំអាល់ បានបញ្ជាក់ថា ខេត្តកំពង់ស្ពឺ គឺជាខេត្តទី២ បន្ទាប់ពីខេត្តកំពង់ចាម ក្នុងការរៀបចំការងារចុះបញ្ជីដីធ្លីបង្ហើយ ដូច្នេះភាគីពាក់ព័ន្ធទាំងអស់ត្រូវរៀបចំកម្លាំងសរុបដើម្បីសម្រេចការងារនេះឱ្យបានជោគជ័យតាមការគ្រោងទុកក្នុងអាណត្តិថ្មីនេះ។ ឯកឧត្តមឧបនាយករដ្ឋមន្ត្រី ក៏បានប្រគល់ជូននូវឧបករណ៍បច្ចេកទេស និងសម្ភារៈការិយាល័យមួយចំនួន  សម្រាប់ការងារចុះបញ្ជីដីធ្លីមានលក្ខណៈជាប្រព័ន្ធក្នុងខេត្តកំពង់ស្ពឺ រួមមាន ឧបករណ៍វាស់វែង Sino Gnss និង Controler ចំនួន ២១ គ្រឿង កុំព្យូទ័រលើតុចំនួន ៣៦ កំផ្លេ ម៉ាស៊ីនព្រីនខ្នាតតូចចំនួន ១៧ គ្រឿង ម៉ាស៊ីនស្កេនចំនួន ២១ គ្រឿង ម៉ាស៊ីនថតចម្លងចំនួន ៦ គ្រឿង តុការិយាល័យចំនួន ៣១ គ្រឿង កៅអីការិយាល័យចំនួន ៣១ គ្រឿង និងម៉ូតូចំនួន ១២ គ្រឿង។កំពង់ស្ពឺ ១ វិច្ឆិកា ២០២៣")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
