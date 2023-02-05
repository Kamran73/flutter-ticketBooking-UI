import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  final Map<String, dynamic> hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
          color: Styles.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ]
      ),
      height: 350,
      width: AppLayout().getSize(context).width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: AssetImage('assets/images/${hotel['image']}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(20),
          Text('${hotel['place']}', style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(10),
          Text('${hotel['destination']}', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const Gap(10),
          Text('\$${hotel['price']}/night', style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
        ],
      ),
    );
  }
}
