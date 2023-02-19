import 'package:digibankui/statics/colors_static.dart';
import 'package:flutter/material.dart';

Row cardCategory() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //apart form this container, the rest of the txn categories are blurred out by color
      Container(
        alignment: Alignment.center,
        width: 50,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: .5,
                offset: Offset(2, 0),
                color: Color.fromARGB(255, 228, 232, 240),
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: const Text(
          "All",
          style: TextStyle(
            color: Color.fromARGB(255, 194, 210, 241),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 15),
      Container(
        alignment: Alignment.center,
        width: 125,
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          // color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: .5,
                offset: Offset(2, 0),
                color: Color.fromARGB(255, 228, 232, 240),
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: const Text(
          "Physical Card",
          style: TextStyle(
            // color: AppColors.mainColor,
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 15),
      Container(
        alignment: Alignment.center,
        width: 105,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: .5,
                offset: Offset(2, 0),
                color: Color.fromARGB(255, 218, 227, 247),
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: const Text(
          "Virtual Card",
          style: TextStyle(
            color: Color.fromARGB(255, 194, 210, 241),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // Container(
      //   alignment: Alignment.center,
      //   width: 60,
      //   height: 35,
      //   decoration: BoxDecoration(
      //     color: Colors.white54,
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: const [
      //       BoxShadow(
      //           blurRadius: 10,
      //           spreadRadius: .5,
      //           offset: Offset(2, 0),
      //           color: Color.fromARGB(255, 228, 232, 240),
      //           blurStyle: BlurStyle.outer),
      //     ],
      //   ),
      //   child: const Text(
      //     "Any",
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 222, 229, 243),
      //       fontSize: 16,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    ],
  );
}
