import 'package:flutter/material.dart';
import '../util/app_layout.dart';

class SwitchButton extends StatelessWidget {
  final String buttonTextLeft;
  final String buttonTextRight;
  const SwitchButton({required this.buttonTextLeft, required this.buttonTextRight});
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.resScreenHeight(10)),
          color: const Color(0xFFF4F6fd)),
      child: Row(children: [
        Container(
          width: size.width * 0.44,
          padding: EdgeInsets.symmetric(vertical: AppLayout.resScreenHeight(9)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.resScreenHeight(10)))),
          child: const Text(
            'Airline tickets',
            style: TextStyle(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        FittedBox(
          child: Container(
            width: size.width * 0.44,
            padding:
                EdgeInsets.symmetric(vertical: AppLayout.resScreenHeight(9)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.resScreenHeight(10)))),
            child: Text(
              'Hotels',
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey.shade500),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }
}
