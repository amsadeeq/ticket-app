import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/widgets/hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map((singleTicket) => TicketView(
                              ticket: singleTicket,
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((singleHotel) => Hotels(
                              hotel: singleHotel,
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
