import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              width: getSize.width,
              height: 150,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.blue),
              child: Row(
                children: [
                  Container(
                    width: getSize.width / 6,
                    decoration: const BoxDecoration(color: Colors.yellow),
                  ),

                  Expanded(
                    // flex: 4,
                    child: Container(
                      // width: getSize.width / 6,
                      decoration: const BoxDecoration(color: Colors.pink),
                    ),
                  ),
                  
                  Expanded(
                    child: Container(
                      width: getSize.width / 6,
                      decoration: const BoxDecoration(color: Colors.green),
                    ),
                  ),
                  
                  Container(
                    width: getSize.width / 6,
                    decoration: const BoxDecoration(color: Colors.amber),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
