import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_tree/util/app_styles.dart';
import '../util/app_layout.dart';

class Ticket extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const Ticket({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.resScreenHeight(200),
      child: Container(
          margin: EdgeInsets.only(left: AppLayout.resScreenWidth(16)),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: Styles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        CircleStyle(),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: AppLayout.resScreenWidth(25),
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ))),
                              );
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white)),
                          ),
                        ])),
                        CircleStyle(),
                        const Spacer(),
                        Text(
                          ticket['to']['code'],
                          style: Styles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.resScreenHeight(3),
                    ),
                    Row(children: [
                      Text(
                        ticket['from']['name'],
                        style:
                            Styles.headlineText4.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        ticket['flying_time'],
                        style:
                            Styles.headlineText4.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['name'],
                        style:
                            Styles.headlineText4.copyWith(color: Colors.white),
                      ),
                    ])
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Styles.orangeColor,
                ),
                child: Column(children: [
                  Row(children: [
                    Container(
                        height: AppLayout.resScreenHeight(20),
                        width: AppLayout.resScreenWidth(10),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100)))),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) {
                              return const SizedBox(
                                  width: 3,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                  ));
                            }));
                      }),
                    )),
                    Container(
                        height: 20,
                        width: 10,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(100)))),
                  ]),
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.resScreenHeight(21.0)),
                        bottomRight: Radius.circular(AppLayout.resScreenHeight(21.0)))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ticket['date'],
                                style: Styles.headlineText3
                                    .copyWith(color: Colors.white)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Date',
                                style: Styles.headlineText4
                                    .copyWith(color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticket['departure_time'],
                                style: Styles.headlineText3
                                    .copyWith(color: Colors.white)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Departure time',
                                style: Styles.headlineText4
                                    .copyWith(color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(ticket['number'].toString(),
                                style: Styles.headlineText3
                                    .copyWith(color: Colors.white)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Number',
                                style: Styles.headlineText4
                                    .copyWith(color: Colors.white)),
                          ])
                    ]),
              )
            ],
          )),
    );
  }
}

class CircleStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: Colors.white)),
    );
  }
}
