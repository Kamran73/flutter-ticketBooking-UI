import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'What are\nyou looking for?',
              style: Styles.headLineStyle1.copyWith(fontSize: 35),
            ),
            const Gap(40),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Center(
                        child: Text(
                          'Airline Tickets',
                          style: Styles.textStyle,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Center(
                        child: Text(
                          'Hotels',
                          style: Styles.textStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            iconTextWidget(Icons.flight_takeoff_rounded, 'Departure'),
            const Gap(15),
            iconTextWidget(Icons.flight_land_rounded, 'Arrival'),
            const Gap(20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  'find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Upcoming Flights',
                  style: Styles.headLineStyle1,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
            const Gap(20),
            SizedBox(
              height: 350,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/sit.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Gap(20),
                          Text(
                            '20% discount on the early booking of this flight. Don\'t miss',
                            style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF3AB8B8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Discount\nfor survey', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                                    const Gap(10),
                                    Text('Take the survey about our services and get a discount', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -45,
                                  right: -45,
                                  child: Container(
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 18, color: const Color(0xFF189999),),
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Expanded(
                          child: Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFEC6545),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Text('Take love', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,)),
                                const Gap(20),
                                Center(
                                  child: RichText(text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '😍',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      TextSpan(
                                        text: '🥰',
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      TextSpan(
                                        text: '😘',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ]
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
