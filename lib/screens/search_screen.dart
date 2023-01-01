import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_tree/widgets/switch_button.dart';
import 'package:ticket_tree/widgets/upcoming_flights_widgets.dart';
// local
import '../util/app_styles.dart';
import '../util/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  final double _sideSpacing = 20;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.all(AppLayout.resScreenWidth(_sideSpacing)),
          children: [
            Gap(AppLayout.resScreenHeight(65)),
            Text(
              'What are \n you looking for?',
              style: Styles.headlineText1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.resScreenHeight(20)),
            const SwitchButton(buttonTextLeft: 'Airline tickets', buttonTextRight: 'Hotels'),
            // Departure and arrival
            const Gap(25),

            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6fd),
                    borderRadius:
                        BorderRadius.circular(AppLayout.resScreenHeight(10)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Departure',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.all(AppLayout.resScreenHeight(6)),
                        prefixIcon: const Icon(Icons.flight_takeoff_rounded),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),

                const Gap(10),

                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6fd),
                    borderRadius:
                        BorderRadius.circular(AppLayout.resScreenHeight(10)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Arrival',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.all(AppLayout.resScreenHeight(6)),
                        prefixIcon: const Icon(Icons.flight_land_rounded),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),

                // submit
                const Gap(40),

                Container(
                  width: size.width,
                  height: AppLayout.resScreenHeight(50),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.resScreenHeight(10))),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 27, 52, 215),
                        elevation: 0,
                      ),
                      child: const Text('Find tickets',
                          style: TextStyle(fontSize: 16))),
                ),

                const Gap(50),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headlineText2,
                      ),
                      InkWell(
                          onTap: () {
                            print('line 116, home screen');
                          },
                          child: Text(
                            'View all',
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor),
                          ))
                    ],
                  ),
                ),

                const Gap(20),
                const UpcomingFlights(),
              ],
            )
          ],
        ));
  }
}
