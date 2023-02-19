import 'package:digibankui/pages/cardpage/widgets/toggle.dart';
import 'package:flutter/material.dart';

class CardSettingList extends StatelessWidget {
  final String image;
  final String text;
  const CardSettingList({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 0, left: 25, right: 25),
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image,
                    height: 35, color: const Color.fromARGB(255, 25, 104, 194)),
                const SizedBox(width: 15),
                Text(
                  text,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 79, 116, 185),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const ToggleSwitch()
          ],
        ),
      ),
    );
  }
}
