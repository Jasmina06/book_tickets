import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:real_project2/utils/app_layout.dart';
import 'package:real_project2/widgets/thick_container.dart';
import 'package:real_project2/utils/app_styles.dart';

void main() {
  runApp(const TicketAppView());
}

class TicketAppView extends StatelessWidget {
  const TicketAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ticket View')),
        body: Center(
          child: TicketView(
            ticket: {
              'from': {
                'code': "NYC",
                'name': "New York",
              },
              'to': {
                'code': "LDN",
                'name': "London"
              },
              'flying_time': '8H 30M',
              'date': "1 MAY",
              'departure_time': "08:00 AM",
              "number": 23
            },
          ),
        ),
      ),
    );
  }
}

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  final Color? bgColor;
  final Color? bgPrimary;
  final Color? textColor;

  const TicketView({Key? key, required this.ticket, this.isColor, this.bgColor,this.bgPrimary, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(context, 200),
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getHeight(context, 16)),
        child: Column(
          children: [
            // Showing blue part of the card
            Container(
              decoration: BoxDecoration(
                color: bgPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                  topRight: Radius.circular(AppLayout.getHeight(context, 21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(context, 16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: textColor)),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(context, 24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() ~/ 6).floor(),
                                          (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(color: textColor),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded, color: textColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: textColor)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: textColor)),
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle3.copyWith(color: textColor)),
                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: textColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Showing orange part of the card/ticket
            Container(
              color: bgColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                                  (index) =>  SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: textColor),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Showing bottom part of the card/ticket
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(context, 21)),
                ),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(context, 16),
                top: AppLayout.getHeight(context, 10),
                right: AppLayout.getHeight(context, 16),
                bottom: AppLayout.getHeight(context, 16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: textColor)),
                          Gap(AppLayout.getHeight(context, 5)),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: textColor)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: textColor)),
                          Gap(AppLayout.getHeight(context, 5)),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: textColor)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: Styles.headLineStyle3.copyWith(color: textColor)),
                          Gap(AppLayout.getHeight(context, 5)),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: textColor)),
                        ],
                      ),
                    ],
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
