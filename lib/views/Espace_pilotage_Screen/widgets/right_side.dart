import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RightSide extends StatefulWidget {
  const RightSide({super.key});

  @override
  State<RightSide> createState() => RrightSideState();
}

class RrightSideState extends State<RightSide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFE1E2E2),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Column(
          children: [
            appBar(),
            Expanded(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch,
                }, scrollbars: false),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      // story(),
                      // feed(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container appBar() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(
      top: 5,
      left: 20,
      right: 20,
      bottom: 10,
    ),
    decoration: const BoxDecoration(
        // color: Colors.red,
        ),
    child: Row(
      children: [
        Container(
          width: 300,
          height: 30,
          padding: const EdgeInsets.only(top: 2, bottom: 2, left: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(children: const [
            Icon(
              Icons.search_outlined,
              color: Colors.grey,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Search",
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_active_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message_rounded),
        ),
        const SizedBox(
          width: 5,
        ),
        Material(
          elevation: 12,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: Container(
              height: 30,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                    0.9,
                  ],
                  colors: [
                    Colors.orange,
                    Color.fromARGB(255, 233, 111, 30),
                    Color.fromARGB(255, 224, 67, 39),
                    Colors.pink,
                    Colors.pink,
                  ],
                ),
              ),
              child: const Text(
                "+  Create a post",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    ),
  );
}
