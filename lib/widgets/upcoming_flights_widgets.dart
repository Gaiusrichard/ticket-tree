import 'package:flutter/material.dart';
import 'package:ticket_tree/util/app_layout.dart';
import 'package:ticket_tree/util/app_styles.dart';

class UpcomingFlights extends StatelessWidget {
  const UpcomingFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // left side
        Container(
          width: AppLayout.getSize(context).width * 0.43,
          height: AppLayout.resScreenHeight(370),
          padding: EdgeInsets.all(AppLayout.resScreenWidth(10)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(AppLayout.resScreenHeight(10.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getSize(context).width,
                height: (AppLayout.getSize(context).height / 4) - 10,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.resScreenHeight(10.0)),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/sit.jpg'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '20% discount on early booking of this flight. Don\'t miss.',
                style: Styles.headlineText2,
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),

        // right side
        Column(
          children: [
            Stack(children: [
              Container(
                  width: AppLayout.getSize(context).width * 0.43,
                  height: AppLayout.resScreenHeight(182),
                  padding: EdgeInsets.all(AppLayout.resScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 177, 177),
                      borderRadius: BorderRadius.circular(
                          AppLayout.resScreenHeight(10.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Discount\nfor survey',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Take the survey about our services and get discount',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ],
                  )),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                    padding: EdgeInsets.all(AppLayout.resScreenWidth(20)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF189999)))),
              )
            ]),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: AppLayout.getSize(context).width * 0.43,
              height: AppLayout.resScreenHeight(173),
              padding: EdgeInsets.all(AppLayout.resScreenWidth(10)),
              decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius:
                      BorderRadius.circular(AppLayout.resScreenHeight(10.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  const Text('Take survey',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20)),
                  //  emoji
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '😍',
                        style: TextStyle(fontSize: 22)
                      ),
                      TextSpan(
                        text: '🥰',
                        style: TextStyle(fontSize: 35)
                      ),
                      TextSpan(
                        text: '😘',
                        style: TextStyle(fontSize: 22)
                      )
                    ]
                  ))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
