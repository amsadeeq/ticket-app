import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text("What are\nyou looking for?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 35)),
          const SizedBox(height: 20),
          const AppTicketsTabs(),
          const SizedBox(height: 20),
          const AppTextIcon(),
          const SizedBox(height: 30),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: size.width * 0.42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.planeSit),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                        "20% Discount on the early booking of this flights. Don't miss the chance",
                        style: AppStyles.headLineStyle2),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
