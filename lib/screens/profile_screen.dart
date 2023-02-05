import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),

        child: ListView(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img_1.png',), fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Book Tickets', style: Styles.headLineStyle1,),
                          const Gap(3),
                          Text('New-York', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                          const Gap(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const  EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799),
                                ),
                                child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                              ),
                              const Gap(5),
                              const Text('Premium Status', style: TextStyle(
                                color: Color(0xFF526799), fontWeight: FontWeight.w600,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),),
                ],
              ),
            ),
            const Gap(30),
            Stack(
              children: [
                Container(
                  height: 85,
                  padding: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFF6073A3),
                  ),
                ),
                Positioned(
                  top: -25,
                  right: -30,
                  child: Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF223Dc8),
                        width: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: const Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Color(0xFF6073A3),),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You\'v got a new award', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                          const Gap(5),
                          Text('You have 150 flights in a year', style: Styles.headLineStyle2.copyWith(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500, fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text('Accumulated miles', style: Styles.headLineStyle1.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
            const Gap(30),
            Center(child: Text('192802', style: Styles.headLineStyle1.copyWith(color: Colors.black, fontSize: 50, fontWeight: FontWeight.w500),),),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Miles acquired', style: TextStyle(fontSize:16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                Text('23 May 2021', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
              ],
            ),
            const Gap(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('23 042', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
                Text('Airline CO', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
              ],
            ),
            const Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Miles', style: TextStyle(fontSize:16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                Text('Received from', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
              ],
            ),

            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('24', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
                Text('McDonal\'s', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
              ],
            ),
            const Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Miles', style: TextStyle(fontSize:16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                Text('Received from', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('50 340', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
                Text('Exuma', style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.65),),),
              ],
            ),
            const Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Miles', style: TextStyle(fontSize:16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                Text('Received from', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
              ],
            ),

            const Gap(30),
            Center(child:
            Text('How to get more miles', style: TextStyle(fontSize:16, fontWeight: FontWeight.w800, color: Colors.grey.shade500),),),
          ],
        ),
      ),
    );
  }
}
