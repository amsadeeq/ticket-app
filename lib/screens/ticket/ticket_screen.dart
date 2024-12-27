import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(height: 20),
          const AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          const SizedBox(height: 1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: "Flutter DB",
                        bottomText: "Passenger",
                        isColor: true),
                    AppColumnTextLayout(
                        topText: "B50312017",
                        bottomText: "Passport",
                        isColor: true,
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuilderWidget(
                    randomDivider: 15, width: 5, isColor: false),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: "34568394 84948",
                        bottomText: "Number of E-ticket",
                        isColor: true),
                    AppColumnTextLayout(
                        topText: "B2SG28",
                        bottomText: "Booking code",
                        isColor: true,
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuilderWidget(
                    randomDivider: 15, width: 5, isColor: false),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visaCard,
                              scale: 11,
                            ),
                            const Text(
                              " *** 2645",
                              style: AppStyles.headLineStyle3,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text("Payment method", style: AppStyles.headLineStyle4),
                      ],
                    ),
                    const AppColumnTextLayout(
                        topText: "\$249.99",
                        bottomText: "Price",
                        isColor: true,
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          //bottom of the ticket section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
