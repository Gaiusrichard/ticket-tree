import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_tree/util/app_styles.dart';
import '../widgets/ticket.dart';

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
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon:
                        const Icon(FluentSystemIcons.ic_fluent_search_regular),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10)),
              ),
              const SizedBox(
                height: 49,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming flights',
                    style: Styles.headlineText2,
                  ),
                  InkWell(
                      onTap: () {
                        print('line 80, home screen');
                      },
                      child: Text(
                        'View all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ))
                ],
              )
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          const Ticket(),
        ],
      ),
    );
  }
}
