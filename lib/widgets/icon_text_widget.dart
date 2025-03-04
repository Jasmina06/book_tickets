import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(context, 12),  // Corrected to getHeight for vertical padding
        horizontal: AppLayout.getWidth(context, 12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 10)),
      ),
      child: Row(
        children: [
           Icon(icon, color:const  Color(0xFFBFC2DF)),
          Gap(AppLayout.getWidth(context, 10)),  // Corrected to getWidth for horizontal spacing
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}
