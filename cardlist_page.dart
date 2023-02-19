import 'package:digibankui/statics/colors_static.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String cardNumber;
  final String cardHolderName;
  final int expiryMonth;
  final int expiryYear;
  final int cvv;
  final Color containerColor;

  const CardList({
    Key? key,
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryMonth,
    required this.cvv,
    required this.expiryYear,
    required this.containerColor,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      width: 380,
      // height: 210,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: .5,
            offset: Offset(1, 0),
            color: Color.fromARGB(255, 219, 228, 245),
          ),
          BoxShadow(
            blurRadius: 10,
            spreadRadius: .5,
            offset: Offset(0, 2),
            color: Color.fromARGB(255, 187, 197, 216),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //check image
                Image.asset(
                  'assets/images/cheq.png',
                  height: 30,
                ),
                //visa image
                Image.asset(
                  'assets/images/visa.png',
                  height: 50,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              //your card number texts
              cardNumber.toString(),
              style: const TextStyle(
                  color: AppColors.smallTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      //your card number texts
                      "CARD HOLDER",
                      style: TextStyle(
                          color: Color.fromARGB(255, 154, 165, 187),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      //card holder name
                      cardHolderName,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 205, 218),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      //your card number texts
                      " EXPIRES",
                      style: TextStyle(
                          color: Color.fromARGB(255, 154, 165, 187),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      //your card number texts
                      '$expiryMonth/$expiryYear',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 205, 218),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      //cvv heading
                      "CVV",
                      style: TextStyle(
                          color: Color.fromARGB(255, 154, 165, 187),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      cvv.toString(),
                      //cvv here
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 205, 218),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
