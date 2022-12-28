import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: getSize.width,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.blue),
          child: Row(
            children: [
              Container(
                width: getSize.width / 4,
                decoration: const BoxDecoration(color: Colors.yellow),
              )
            ],
          ),
        )
      ],
    );
  }
}
