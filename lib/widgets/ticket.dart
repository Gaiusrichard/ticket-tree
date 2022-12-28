import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_tree/util/app_styles.dart';
import '../util/app_layout.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
          margin: const EdgeInsets.only(left: 16),
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
                          'NYC',
                          style: Styles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        CircleStyle(),
                        const Spacer(),
                        CircleStyle(),
                        const Spacer(),
                        Text(
                          'London',
                          style: Styles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
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
      padding:  const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.white)
      ),
    );
  }
}