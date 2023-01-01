import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// local
import '../util/app_styles.dart';
import '../util/app_layout.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Gap(AppLayout.resScreenHeight(65)),
            // profile img, book ticket and edit
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // profile image
                  Container(
                    width: AppLayout.resScreenWidth(80),
                    height: AppLayout.resScreenHeight(80),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.resScreenHeight(10)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/img_1.png'))),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Book Tickets', style: Styles.headlineText2),
                          Gap(AppLayout.resScreenHeight(4)),
                          Text(
                            'New-York',
                            style: Styles.headlineText4,
                          ),
                          Gap(AppLayout.resScreenHeight(10)),
                          Row(
                            children: const [
                              Icon(Icons.verified_rounded),
                              Gap(4),
                              Text('Premium status',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 118, 118, 118),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16))
                            ],
                          )
                        ]),
                  ),

                  const Spacer(),

                  Container(
                      // margin: EdgeInsets.only(bottom: 250),
                      child: GestureDetector(
                          onTap: () {},
                          child: Text('Edit',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 118, 118, 118),
                                  fontWeight: FontWeight.w600))))
                ]),

            Gap(AppLayout.resScreenWidth(35)),
            // Award and announcement banner
            Stack(
              children: [
                Container(
                  height: AppLayout.resScreenHeight(85),
                  width: AppLayout.getSize(context).width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 94, 138),
                      borderRadius:
                          BorderRadius.circular(AppLayout.resScreenHeight(15))),
                ),

                Positioned(
                  right: -20,
                  top: -32,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18,
                            color: Color.fromARGB(255, 46, 56, 191))),
                  ),
                ),

                // Text
                Padding(
                  padding: EdgeInsets.only(
                      top: AppLayout.resScreenHeight(18),
                      left: AppLayout.resScreenHeight(20)),
                  child: Row(children: [
                    // Icon
                    const Icon(
                      Icons.lightbulb_circle_sharp,
                      color: Colors.white,
                      size: 50,
                    ),

                    const Gap(10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('You\'ve got a new award',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text('You have 150 flights this year',
                            style: TextStyle(fontSize: 14, color: Colors.white))
                      ],
                    )
                  ]),
                )
              ],
            ),

            // Acuumulated miles seection
            const Gap(30),

            const Text(
              'Accumulated miles',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 50, 49, 49)),
            ),

            const Gap(30),

            const Center(
              child: Text(
                '192802',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: Color.fromARGB(255, 50, 49, 49)),
              ),
            ),

            // Miles and distance
            const Gap(25),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Miles recorded', style: Styles.headlineText3.copyWith(fontSize: 17)),
              Text('25 Dec 2021', style: Styles.headlineText3.copyWith(fontSize: 17)),
            ]),

            const Gap(10),

            MilesInRow(
              milesText: '23 042',
              receivedFrom: 'Airline CO',
            ),
            MilesInRow(
              milesText: '24',
              receivedFrom: 'McDonal\'s',
            ),
            MilesInRow(
              milesText: '52 340',
              receivedFrom: 'Exuma',
            ),

            // How to get more miles
            const Gap(25),

            Center(
              child: GestureDetector(
                onTap: () {},
                child: const Text('How to get more miles', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 88, 90, 130))),
              ),
            )
          ]),
    );
  }
}

class MilesInRow extends StatelessWidget {
  final String milesText;
  final String receivedFrom;

  MilesInRow({required this.milesText, required this.receivedFrom});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // data
            Text(milesText,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 79, 79, 79))),

            Gap(AppLayout.resScreenHeight(10)),
            // decription heading
            Text('Miles', style: Styles.headlineText3.copyWith(fontSize: 15))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // data
            Text(receivedFrom,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 79, 79, 79))),

            Gap(AppLayout.resScreenHeight(10)),
            // decription heading
            Text('Received from',
                style: Styles.headlineText3.copyWith(fontSize: 15))
          ],
        ),
      ]),
    );
  }
}
