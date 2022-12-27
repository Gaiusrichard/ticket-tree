import 'package:flutter/material.dart';
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
        child: Column(children: [

        ],)
      ),
    );
  }
}
