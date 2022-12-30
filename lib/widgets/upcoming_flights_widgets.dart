import 'package:flutter/material.dart';
import 'package:ticket_tree/util/app_layout.dart';

class UpcomingFlights extends StatelessWidget {
  const UpcomingFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Expanded(child: Container(
          padding: EdgeInsets.all(AppLayout.resScreenWidth(10)),
          
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppLayout.resScreenHeight(10.0)), color: Colors.white,),
          child: Column(
            children: [
              // Images
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppLayout.resScreenHeight(10.0))),
              )
            ],
          ),
        )),
        Column(
          children: [
            Container(
              child: Column(
                children: const [
                  Text('Discount for survey'),
                  Text('Take the survey about our service and get a discount')
                ]
              )
            ),

            Container(
              child: Column(
                children: const [
                  Text('Take love'),
                  Text('😍☺️')
                ]
              )
            ),
          ],
        )
      ],)
    );
  }
}
