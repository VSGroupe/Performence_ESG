// CADRE DU MENU (AUDIT, PILOTE, PERFORMANCE)::::::::::::::::::::::::::::::::::::::::::::

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:performence_esg/views/constent/AppColor.dart';

class BlockMenuAcc extends StatelessWidget {
  final String imgAcess;
  final String text1;
  final String text2;
  final double? size1;
  final double? size2;
  final Color? color1;
  final Color? color2;
  final Color? shadow;
  final FontWeight? weight1;
  final FontWeight? weight2;
  final double? elevation;

  const BlockMenuAcc(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.imgAcess,
      this.color1,
      this.color2,
      this.shadow,
      this.size1,
      this.size2,
      this.weight1,
      this.weight2,
      this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 30,
      shadowColor: shadow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: size1 ?? 30,
                fontWeight: weight1 ?? FontWeight.bold,
                color: color1 ?? errorlightColor,
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: size2 ?? 15,
                fontWeight: weight2 ?? FontWeight.bold,
                color: color2 ?? textColor,
              ),
            ),
            // const SizedBox(height: 20),
            Center(
                child: Image.asset(
              imgAcess,
              height: 180,
            ))
          ],
        ),
      ),
    );
  }
}
