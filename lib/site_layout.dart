import 'package:flutter/material.dart';
import 'package:web_test/widget/persistent.widget.dart';
import 'package:web_test/widget/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final Widget child;
  SiteLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),

      // body: const ResponsiveWidget(
      //   largeScreen: LargeScreen(),
      //   smallScreen: SmallScreen(),
      // ),
      body: Column(
        children: [
          Expanded(child: child),
          const SizedBox(
            width: 500,
            height: 200,
            child: PersistentWidget(),
          ),
        ],
      ),
    );
  }
}
