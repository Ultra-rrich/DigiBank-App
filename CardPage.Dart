import 'package:digibankui/statics/colors_static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../homepage/widgets/icon_and_text.dart';
import 'widgets/card_category.dart';
import 'widgets/card_setting_list.dart';
import 'widgets/cardlist_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
                color: AppColors.mainColor,
                height: 70,
                width: double.maxFinite),
          ),
          Positioned(
            top: 50,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              // height: 200,
              // width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                primary: true,
                shrinkWrap: true,
                children: [ Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                //page heading your card texts
                                "Your Cards",
                                style: TextStyle(
                                    color: AppColors.bigTextColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              // more icon horizontal more icon
                              Icon(
                                Icons.more_horiz,
                                size: 40,
                                color: Color.fromARGB(255, 64, 103, 148),
                              ),
                            ],
                          ),
                          const Text(
                            //page heading your card texts
                            "2 Physical Cards, 1 Virtual Card",
                            style: TextStyle(
                                color: AppColors.smallTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                      // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardCategory(),
                        ],
                      ),
                    ),
                    //this is where we build the cards
                    SizedBox(
                      height: 265,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        children: const [
                          CardList(
                            cardNumber: '****  ****  ****  8953',
                            cardHolderName: 'Gloria Ansaba',
                            cvv: 826,
                            expiryMonth: 02,
                            expiryYear: 28,
                            containerColor: Color.fromARGB(255, 10, 43, 105),
                          ),
                          CardList(
                            cardNumber: '****  ****  ****  5648',
                            cardHolderName: 'Robert Addo',
                            cvv: 754,
                            expiryMonth: 24,
                            expiryYear: 26,
                            containerColor: Color.fromARGB(255, 153, 0, 133),
                          ),
                          CardList(
                            cardNumber: '****  ****  ****  6985',
                            cardHolderName: 'Emma Ansah',
                            cvv: 365,
                            expiryMonth: 10,
                            expiryYear: 34,
                            containerColor: Color.fromARGB(255, 233, 0, 90),
                          ),
                          CardList(
                            cardNumber: '****  ****  ****  8953',
                            cardHolderName: 'Bailey Macwoods',
                            cvv: 465,
                            expiryMonth: 31,
                            expiryYear: 24,
                            containerColor: Color.fromARGB(255, 55, 0, 117),
                          ),
                          CardList(
                            cardNumber: '****  ****  ****  8953',
                            cardHolderName: 'Rich Forever',
                            cvv: 167,
                            expiryMonth: 08,
                            expiryYear: 28,
                            containerColor: Color.fromARGB(255, 202, 75, 1),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 10),
                    //page slider indicator
                    SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 5,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.mainColor,
                        dotHeight: 9,
                        dotWidth: 10,
                      ), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          //page heading your card texts
                          "Cards Settings",
                          style: TextStyle(
                              color: AppColors.bigTextColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 20),
                    SizedBox(
                      height: 300,
                      child: ListView(
                        children: const [
                          CardSettingList(
                            image: 'assets/images/wallet.png',
                            text: 'Contactless Payments',
                          ),
                          CardSettingList(
                            image: 'assets/images/net.png',
                            text: 'Online Payments',
                          ),
                          CardSettingList(
                            image: 'assets/images/send.png',
                            text: 'Mobile Payments',
                          ),
                          CardSettingList(
                            image: 'assets/images/tax.png',
                            text: 'Crypto Payments',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        ]),
            ),
          ),
        ],
      ),
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
                  children: const [
                    IconAndText(
                      icon: Icons.payments_outlined,
                      text: 'Cards',
                      textColor: Color.fromARGB(255, 72, 95, 138),
                      iconColor: Color.fromARGB(255, 112, 144, 204),
                      iconSize: 32,
                    ),
                    SizedBox(width: 30),
                    IconAndText(
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
