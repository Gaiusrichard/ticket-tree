import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/hotel_list.dart';
import '../widgets/ticket.widget.dart';
import '../widgets/switch_button.dart';
import '../util/app_styles.dart';
import '../util/app_layout.dart';
import '../widgets/column_layout.dart';

class ViewTicketScreen extends StatelessWidget {
  final double _sideSpacing = 20;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [Center(
            child: ListView(
              padding: EdgeInsets.all(AppLayout.resScreenWidth(_sideSpacing)),
              children: [
                SizedBox(
                  height: AppLayout.resScreenHeight(65),
                ),
                Text('Ticket', style: Styles.headlineText1),
                SizedBox(
                  height: AppLayout.resScreenHeight(20),
                ),
                const SwitchButton(
                    buttonTextLeft: 'buttonTextLeft',
                    buttonTextRight: 'buttonTextRight'),
                Gap(AppLayout.resScreenHeight(15)),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Ticket(
                    ticket: ticketList[0],
                    isColorChanged: true,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.40,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    child: Column(children: [
                      const Gap(40),
                      ColumnLayout(
                          leftOne: 'Flutter',
                          leftTwo: 'Passenger',
                          rightOne: '5221 34678',
                          rightTwo: 'Passport'),
                      const Gap(40),
                      ColumnLayout(
                          leftOne: '0055 4444 4713',
                          leftTwo: 'E-ticket number',
                          rightOne: 'B2SG28',
                          rightTwo: 'Booking coode'),
                      const Gap(40),
                      ColumnLayout(
                          paymentTypeImageLink: 'assets/images/visa.png',
                          cardNumber: '2143',
                          leftTwo: 'Payment method',
                          rightOne: '\$249.99',
                          rightTwo: 'Price'),
                    ]),
                  ),
                ),
        
                // ticket bar
                Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(AppLayout.resScreenHeight(21)),
                          bottomRight:
                              Radius.circular(AppLayout.resScreenHeight(21)))),
                  child: Container(
                    height: AppLayout.resScreenWidth(65),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            (constraints.constrainWidth() / 3).floor(), (index) {
                          return SizedBox(
                            height: AppLayout.getSize(context).height,
                            width: 1,
                            child: const DecoratedBox(
                              decoration: BoxDecoration(color: Colors.black),
                            ),
                          );
                        }),
                      );
                    }),
                  ),
                ),
        
                const Gap(35),
        
                Container(
                  margin: const EdgeInsets.only(right: 16,),
                  child: Ticket(ticket: ticketList[0]))
              ],
            ),
          ),

          Positioned(
            top: AppLayout.resScreenHeight(295),
            left: AppLayout.resScreenHeight(26),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Color.fromARGB(255, 41, 40, 40)),
              ),
          
              child: const CircleAvatar(
                radius: 4,
                backgroundColor: Color.fromARGB(255, 41, 40, 40),
              ), 
            ),
          ),

          Positioned(
            top: AppLayout.resScreenHeight(295),
            right: AppLayout.resScreenHeight(26),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Color.fromARGB(255, 41, 40, 40)),
              ),
          
              child: const CircleAvatar(
                radius: 4,
                backgroundColor: Color.fromARGB(255, 41, 40, 40),
              ), 
            ),
          )
          ]
        ));
  }
}
