import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:real_project2/screens/hotel_screen.dart';
import 'package:real_project2/screens/ticket_view.dart';
import 'package:real_project2/utils/app_info_list.dart';
import 'package:real_project2/utils/app_styles.dart';
import 'package:real_project2/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle1),
                      ],
                    ),
                    Image.asset(
                      "assets/images/img1.png",
                      height: 50,
                      width: 50,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.red);
                      },
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFFBFC205)),
                      const Gap(5),
                      Text("Search", style: Styles.headLineStyle4),
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, bgColor: Styles.orangeColor,bgPrimary:Styles.primaryColor,textColor: Colors.white)).toList(),
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelsList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
