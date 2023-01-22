import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vgmart/app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightScheme, darkScheme) {
      return GetMaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightScheme,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkScheme,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        themeMode: ThemeMode.system,
        initialRoute: Routes.BOTTOMBAR,
        getPages: AppPages.routes,
      );
    });
  }
}
