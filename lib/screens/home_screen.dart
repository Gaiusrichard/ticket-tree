import 'package:flutter/material.dart';
// import ''
import 'package:ticket_tree/util/app_styles.dart';

class HomeScreen extends StatelessWidget {
  // default
  final double _sideSpacing = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: _sideSpacing),
            child: Column(children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Greeting section
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning', style: Styles.headlineText3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Ticket',
                          style: Styles.headlineText1,
                        )
                      ]),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"))),
                  )
                  // logo
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
