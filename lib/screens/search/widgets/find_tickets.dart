import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: AppStyles.findTicketColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyles.textStyle.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
