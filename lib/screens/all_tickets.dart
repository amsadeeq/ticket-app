import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('All Tickets'),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singelTicket) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: TicketView(
                    ticket: singelTicket,
                    wholeScreen: true,
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
