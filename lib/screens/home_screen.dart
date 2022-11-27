import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        )
                      ],

                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                Gap(25),
               Container(
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,color: ,)
                  ],
                ),
               )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
