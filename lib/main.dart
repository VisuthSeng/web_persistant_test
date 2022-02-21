import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_test/site_layout.dart';
import 'package:web_test/widget/large_screen.dart';
import 'package:web_test/widget/small_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DashBoard',
      builder: (context, page) => SiteLayout(
        child: page!,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const LargeScreen(),
        ),
        GetPage(
          name: '/small',
          page: () => const SmallScreen(),
        ),
      ],
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
          primaryColor: Colors.blue),
    );
  }
}
