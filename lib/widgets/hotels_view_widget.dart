import 'package:flutter/material.dart';
//
import '../util/app_layout.dart';
import '../util/app_styles.dart';

class HotelsViewWidget extends StatelessWidget {
  String? hotelImageLink;
  HotelsViewWidget({super.key, required this.hotelImageLink});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 340,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(hotelImageLink!)))),

          const SizedBox(
            height: 10,
          ),

          Text(
            'Open space',
            style: Styles.headlineText2.copyWith(color: Styles.kakiColor)
          ),

          const SizedBox(
            height: 5,
          ),

          Text(
            'London',
            style: Styles.headlineText3.copyWith(color: Colors.white)
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            '\$40/night',
            style: Styles.headlineText1.copyWith(color: Styles.kakiColor)
          )

        ],
      ),
    );
  }
}
