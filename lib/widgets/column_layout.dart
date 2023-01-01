import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/hotel_list.dart';
import '../widgets/ticket.widget.dart';
import '../widgets/switch_button.dart';
import '../util/app_styles.dart';
import '../util/app_layout.dart';

class ColumnLayout extends StatelessWidget {
  final String? leftOne;
  final String leftTwo;
  final String rightOne;
  final String rightTwo;
  final String? paymentTypeImageLink;
  final String? cardNumber;

  ColumnLayout(
      {this.leftOne,
      required this.leftTwo,
      required this.rightOne,
      required this.rightTwo,
      this.paymentTypeImageLink,
      this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          paymentTypeImageLink != null && cardNumber != null
              ? FittedBox(
                  child: Row(children: [
                    Container(
                      width: 50,
                      height: 18,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(paymentTypeImageLink!))),
                    ),
                    const Gap(8),
                    Row(
                      children: [Text('****'), Text(cardNumber!)],
                    )
                  ]),
                )
              : Text(leftOne!,
                  style: Styles.headlineText3
                      .copyWith(color: Color.fromARGB(255, 72, 72, 72))),
          const Gap(5),
          Text(leftTwo, style: Styles.headlineText4)
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(rightOne,
              style: Styles.headlineText3
                  .copyWith(color: Color.fromARGB(255, 72, 72, 72))),
          const Gap(5),
          Text(rightTwo, style: Styles.headlineText4)
        ],
      )
    ]);
  }
}
