import 'package:flutter/material.dart';
import 'package:getx_base/App/Models/Home/card_model.dart';
import 'package:getx_base/Constants/app_component.dart';
import 'package:getx_base/Extensions/screen_size.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<HomeCardModel> homecard = [
    HomeCardModel(
        title: "សេវាព័ត៌មានសុរិយោដីតាមប្រព័ន្ធអេឡិចត្រូនិច",
        icon: "assets/images/share.jpg"),
    HomeCardModel(title: "សេវាសំណង់", icon: "assets/images/service.jpg"),
    HomeCardModel(title: "សេវាសុរិយោដី", icon: "assets/images/location.jpg"),
    HomeCardModel(title: "ការផ្តល់អាជ្ញាបណ្ណ", icon: "assets/images/card.jpg"),
    HomeCardModel(title: "ចម្លងឯកសារប្លង់", icon: "assets/images/doc.jpg"),
    HomeCardModel(title: "សេវាប្រឹក្សាយោបល់", icon: "assets/images/people.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            _homeCardWidget()
          ],
        ),
      ),
    );
  }
  Widget _homeCardWidget(){
   return Container(
      height: getScreenHeight(context, 73),
      child: GridView.count(
          crossAxisCount: 2,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(AppComponent.padding16),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(
              homecard.length,
                  (index) => Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(AppComponent.padding16),
                decoration: BoxDecoration(
                    border:
                    Border.all(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(
                        AppComponent.cornerRadius)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      homecard[index].icon.toString(),
                      height: 56,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      homecard[index].title.toString(),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ))),
    );

  }
}

