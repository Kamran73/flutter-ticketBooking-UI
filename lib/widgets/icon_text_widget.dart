import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

Widget iconTextWidget(IconData icon, String text){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    child: Row(
      children: [
        Icon(icon),
        const Gap(10),
        Text(text, style: Styles.textStyle,),
      ],
    ),
  );
}