import 'package:flutter/material.dart';

 final kInnerDecoration = BoxDecoration(
    color: const Color.fromARGB(255, 0, 0, 0),
    borderRadius: BorderRadius.circular(10),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: const LinearGradient(colors: [
      Colors.yellow,
      Colors.redAccent,
      Color.fromARGB(255, 65, 249, 243)
    ]),
    borderRadius: BorderRadius.circular(10),
  );