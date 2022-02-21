import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_test/constants/style.dart';
import 'package:web_test/widget/custom_text.dart';
import 'package:web_test/widget/large_screen.dart';
import 'package:web_test/widget/responsive_widget.dart';
import 'package:web_test/widget/small_screen.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: const Image(
                    image: AssetImage('assets/apple.png'),
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.red,
              )),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
              child: CustomText(
            text: 'KINGCOW STORE',
            color: Colors.blue,
            size: null,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              Get.to(() => const SmallScreen());
            },
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Get.to(() => const LargeScreen());
                },
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
              ),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2),
                    ),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: 'Visuth Seng',
            size: null,
            color: lightGrey,
            weight: null,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                child: const Icon(Icons.person_outline),
                backgroundColor: light,
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
