import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:getx_base/App/Views/Auth/Login/login_view.dart';
import 'package:getx_base/App/Views/localization_app_page.dart';
import 'package:getx_base/Constants/app_color.dart';
import 'package:getx_base/Constants/app_component.dart';
import 'package:getx_base/l10n/l10n.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:getx_base/Providers/locale_provider.dart';
import 'package:provider/provider.dart';

import 'main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  static final String title = 'MLMUPC';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: title,
            theme: ThemeData(
              backgroundColor: Colors.white,
                primaryColor: AppColors.primaryColor,
                fontFamily: AppComponent.fontName),
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: LoginView(),
          );
        },
      );
}
