import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xffE6EFFD),
      // body: const ResponsiveWidget(
      //   largeScreen: LargeScreen(),
      //   smallScreen: SmallScreen(),
      // ),
      body: Row(
        children: [
          Expanded(
              child: Container(
                  constraints: const BoxConstraints.expand(),
                  // color: const Color(0xffE6EFFD),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: const [
                                SizedBox(
                                  height: 80,
                                  width: 100,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/suth.jpg'),
                                    child: Text(''),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Visuth Seng',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'ANATTA DEV',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))),
          Expanded(flex: 5, child: child),
        ],
      ),
    );
  }
}
