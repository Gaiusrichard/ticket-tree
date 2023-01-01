import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_tree/util/app_styles.dart';
import '../util/app_layout.dart';

class Ticket extends StatelessWidget {
  final bool? isColorChanged;
  final Map<String, dynamic> ticket;

  const Ticket({super.key, required this.ticket, this.isColorChanged});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.resScreenHeight(GetPlatform.isAndroid == true ? 165: 164),
      child: Container(
          margin: EdgeInsets.only(left: AppLayout.resScreenWidth(16)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: isColorChanged==null ?const Color(0xFF526799): Colors.white,
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
                          style: isColorChanged==null ? Styles.headlineText3
                              .copyWith(color: Colors.white) : Styles.headlineText3.copyWith(color: Color.fromARGB(255, 72, 72, 72)),
                        ),
                        const Spacer(),
                        CircleStyle(isColorChanged2: isColorChanged),
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
                                    (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColorChanged == null ? Colors.white : Color.fromARGB(255, 255, 255, 255)),
                                        ))),
                              );
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColorChanged == null ? Colors.white : Color(0xFF8ACCF7))),
                          ),
                        ])),
                        CircleStyle(isColorChanged2: isColorChanged),
                        const Spacer(),
                        Text(
                          ticket['to']['code'],
                          style: isColorChanged==null ? Styles.headlineText3
                              .copyWith(color: Colors.white) : Styles.headlineText3.copyWith(color: Color.fromARGB(255, 72, 72, 72)),
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
                            isColorChanged==null ? Styles.headlineText4.copyWith(color: Colors.white) : Styles.headlineText4,
                      ),
                      const Spacer(),
                      Text(
                        ticket['flying_time'],
                        style:
                            isColorChanged==null ? Styles.headlineText4.copyWith(color: Colors.white) : Styles.headlineText4.copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['name'],
                        style:
                            isColorChanged==null ? Styles.headlineText4.copyWith(color: Colors.white) : Styles.headlineText4,
                      ),
                    ])
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: isColorChanged == null ? Styles.orangeColor : Colors.white,
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
                      padding: const EdgeInsets.all(6.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) {
                              return SizedBox(
                                  width: 3,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: isColorChanged == null ? Colors.white : Colors.grey.shade300),
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
                    color: isColorChanged == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft:
                            isColorChanged == null ? Radius.circular(21) : Radius.circular(0),
                        bottomRight:
                            isColorChanged == null ? Radius.circular(21) : Radius.circular(0))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ticket['date'],
                                style: isColorChanged == null ? Styles.headlineText3
                                    .copyWith(color: Colors.white) : Styles.headlineText3.copyWith(color: Color.fromARGB(255, 72, 72, 72))),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Date',
                                style: isColorChanged == null ? Styles.headlineText4
                                    .copyWith(color: Colors.white) : Styles.headlineText4),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticket['departure_time'],
                                style: isColorChanged == null ? Styles.headlineText3
                                    .copyWith(color: Colors.white) : Styles.headlineText3.copyWith(color: Color.fromARGB(255, 72, 72, 72))),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Departure time',
                                style: isColorChanged == null ? Styles.headlineText4
                                    .copyWith(color: Colors.white) : Styles.headlineText4),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(ticket['number'].toString(),
                                style: isColorChanged == null ? Styles.headlineText3
                                    .copyWith(color: Colors.white) : Styles.headlineText3.copyWith(color: Color.fromARGB(255, 72, 72, 72))),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Number',
                                style: isColorChanged == null ? Styles.headlineText4
                                    .copyWith(color: Colors.white) : Styles.headlineText4),
                          ])
                    ]),
              )
            ],
          )),
    );
  }
}

class CircleStyle extends StatelessWidget {
  final bool? isColorChanged2;
  CircleStyle({this.isColorChanged2});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: isColorChanged2 == null ? Colors.white : Color(0xFF8ACCF7))),
    );
  }
}