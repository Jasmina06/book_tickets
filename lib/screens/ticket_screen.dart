import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:real_project2/screens/ticket_view.dart';
import 'package:real_project2/utils/app_info_list.dart';
import 'package:real_project2/utils/app_layout.dart';
import 'package:real_project2/utils/app_styles.dart';
import 'package:real_project2/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(context, 20),
              vertical: AppLayout.getHeight(context, 20),
            ),
            children: [
              Gap(AppLayout.getHeight(context, 40)),
              Text("Tickets", style: Styles.headLineStyle1),
              Gap(AppLayout.getHeight(context, 20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(context, 15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NYC",
                          style: Styles.headLineStyle3,
                        ),
                        Icon(Icons.airplanemode_active, size: 24),
                        Text(
                          "LDN",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Gap(5),
                    Text(
                      "New-York         8H 30M          London",
                      style: Styles.headLineStyle4.copyWith(color: Colors.grey),
                    ),
                    Gap(10),
                    Divider(thickness: 1, color: Colors.grey.shade200),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "1 May",
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "08:00 AM",
                          secondText: "Departure time",
                          alignment: CrossAxisAlignment.center,
                        ),
                        AppColumnLayout(
                          firstText: "23",
                          secondText: "Number",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(10),
                    Divider(thickness: 1, color: Colors.grey.shade200),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 478566",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(10),
                    Divider(thickness: 1, color: Colors.grey.shade200),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(10),
                    Divider(thickness: 1, color: Colors.grey.shade200),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "VISA *** 2462",
                          secondText: "Payment method",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(20),
                    BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: '005544477147',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                    Gap(20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ticketList.map((singleTicket) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TicketView(
                              ticket: singleTicket,
                              bgColor: Styles.orangeColor,
                              bgPrimary: Styles.primaryColor,
                              textColor: Colors.white,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle4,
        ),
        Gap(5),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
