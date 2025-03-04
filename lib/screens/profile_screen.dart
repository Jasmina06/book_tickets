import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:real_project2/screens/ticket_screen.dart';
import 'package:real_project2/utils/app_layout.dart';
import 'package:real_project2/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(context, 96),
                width: AppLayout.getHeight(context, 86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 10)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(context, 2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(context, 8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(context, 12),
                      vertical: AppLayout.getHeight(context, 6),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 100)),
                      color: const Color(0xFFFEF3F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: AppLayout.getHeight(context, 24),
                          width: AppLayout.getHeight(context, 24),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 6)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(context, 8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(context, 90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(context, 30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.lightbulb, color: Styles.primaryColor, size: 27),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Text("Accumulated miles", style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(context, 20)),
          Container(
            padding :EdgeInsets.symmetric(horizontal: AppLayout.getWidth( context , 15)),
            decoration:BoxDecoration (
            borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 18)),
              color:Styles.bgColor ,
              boxShadow: [
                BoxShadow(
                  color:Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
    ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 25)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2024",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 4)),
                Divider(color: Colors.grey.shade200),
                Gap(AppLayout.getHeight(context, 8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      color: Colors.black,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      color: Colors.black,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      color: Colors.black,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      color: Colors.black,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      color: Colors.black,
                    ),
                    AppColumnLayout(
                      firstText: "Exuma",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      color: Colors.black,
                    ),
                  ],
                )

              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          InkWell(
            onTap: (){
              print("You are tapped");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color:Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final Color color;

  const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Gap(5),
        Text(
          secondText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }
}
