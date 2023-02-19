import 'package:digibankui/pages/cardpage/card_page.dart';
import 'package:digibankui/statics/colors_static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'payment_history.dart';
import 'widgets/grocery_txn.dart';
import 'widgets/icon_and_text.dart';
import 'widgets/tn_categories.dart';
import 'widgets/transport_txn.dart';
import 'widgets/txn_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //this code makes the status bar transparent with white texts colors
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // this is the main Column
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              color: AppColors.mainColor,
              height: 290,
              width: double.maxFinite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ghc2,589.50",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.notification_important_rounded,
                              color: Colors.white60,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/da.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 7.5),
                    //Available balance text
                    const Text(
                      "Available Balance",
                      style: TextStyle(
                        color: AppColors.smallTextColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //this is the code for the rounded rectangle containers
                    txnItems(),
                  ],
                ),
              ),
            ),
          ),
          // const SizedBox(height: 10),
          Positioned(
            top: 250,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              // height: 200,
              // width: double.maxFinite,
              decoration:  BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              //page heading
                              "Recent Transactions",
                              style: TextStyle(
                                  color: AppColors.bigTextColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            // the see all text button
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Color.fromARGB(255, 101, 138, 207),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        // here i built the transaction history categories
                        txnCategory(),
                        const SizedBox(height: 30),
                        //here we start the txn history by day
                        const Text(
                          "TODAY",
                          style: TextStyle(
                              color: AppColors.smallTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 18),
                        //here is the code for the actual transaction history.
                        // which is for the Grocery txn.
                        Container(
                          // alignment: Alignment.center,
                          width: 400,
                          height: 175,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: .3,
                                  offset: Offset(2, 0),
                                  color: Color.fromARGB(255, 220, 231, 255),
                                  blurStyle: BlurStyle.outer),
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: .3,
                                  offset: Offset(0, 2),
                                  color: Color.fromARGB(255, 220, 231, 255),
                                  blurStyle: BlurStyle.outer),
                            ],
                          ),
                          child: Column(
                            children: [
                              groceryTxn(),
                              //this is the line that separates the two txns
                              const Divider(
                                color: Color.fromARGB(255, 161, 172, 196),
                                height: .1,
                                thickness: .3,
                              ),
                              //here is the code for the 2nd actual transaction history.
                              // which is for the Transport txn.
                              transportTxn(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          "YESTERDAY",
                          style: TextStyle(
                              color: AppColors.smallTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 18),
                        Container(
                          // alignment: Alignment.center,
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: .5,
                                  offset: Offset(2, 0),
                                  color: Color.fromARGB(255, 239, 241, 245),
                                  blurStyle: BlurStyle.outer),
                            ],
                          ),
                          child: paymentHistory(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      //this is where we build the floating bottom nav items.
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.grey.shade100,
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 2.5,
                offset: Offset(.1, .5),
                color: Color.fromARGB(255, 192, 213, 255),
                blurStyle: BlurStyle.outer),
                 BoxShadow(
                blurRadius: 20,
                spreadRadius: 1,
                offset: Offset(0, .2),
                color: Color.fromARGB(255, 229, 235, 252),
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    IconAndText(
                      icon: Icons.dashboard_outlined,
                      text: 'Home',
                      textColor: Color.fromARGB(255, 72, 95, 138),
                      iconColor: AppColors.mainColor,
                      iconSize: 32,
                    ),
                    SizedBox(width: 30),
                    IconAndText(
                      icon: Icons.payment_outlined,
                      text: 'History',
                      textColor: Color.fromARGB(255, 72, 95, 138),
                      iconColor: Color.fromARGB(255, 112, 144, 204),
                      iconSize: 32,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //card icon
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return const CardPage();
                      },)),
                      child: const IconAndText(
                        icon: Icons.payments_outlined,
                        text: 'Cards',
                        textColor: Color.fromARGB(255, 72, 95, 138),
                        iconColor: Color.fromARGB(255, 112, 144, 204),
                        iconSize: 32,
                      ),
                    ),
                    const SizedBox(width: 30),
                    const IconAndText(
                      icon: Icons.person_3_outlined,
                      text: 'Profile',
                      textColor: Color.fromARGB(255, 72, 95, 138),
                      iconColor: Color.fromARGB(255, 112, 144, 204),
                      iconSize: 32,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: const Alignment(.1, .97),
        child: SizedBox(
          height: 50,
          width: 50,
          child: FittedBox(
            child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.mainColor,
                // mini: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.add)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
