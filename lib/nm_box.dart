import 'package:flutter/material.dart';

Color mC = Colors.grey.shade100;
Color mW = Colors.white;
Color mB = Colors.black.withOpacity(0.075);
Color mG = Colors.green.withOpacity(0.65);
Color mR = Colors.grey.shade600;

BoxDecoration nMbox = BoxDecoration(
  shape: BoxShape.circle,
  color: mC,
  boxShadow: [
    BoxShadow(
      color: mB,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: mW,
      offset: Offset(-10, -10),
      blurRadius: 10,
    )
  ]
);

BoxDecoration nMboxInvert = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: mB,
  boxShadow: [
    BoxShadow(
      color: mW,
      offset: Offset(3, 3),
      blurRadius: 3,
      spreadRadius: -3,
    )
  ]
);