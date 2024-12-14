import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketBlue
                    : AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(21),
                  topLeft: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Departure and destination with Icons first linw
                  Row(
                    children: [
                      TextStyleThird(
                          text: ticket['from']['code'], isColor: isColor),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 23,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            child: Icon(
                              Icons.local_airport_sharp,
                              color: isColor == null
                                  ? Colors.white
                                  : AppStyles.planeSecondColor,
                            ),
                          )),
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(
                          text: ticket['to']['code'], isColor: isColor),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: ticket['from']['name'], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket['flying_time'], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: "London",
                            align: TextAlign.end,
                            isColor: isColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(isRight: false, isColor: isColor),
                  const Expanded(
                    child: AppLayoutbuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    ),
                  ),
                  BigCircle(isRight: true, isColor: isColor),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketOrange
                    : AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Departure and destination with Icons first linw
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket['date'],
                          bottomText: "DATE",
                          isColor: isColor),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                          topText: ticket['number'].toString(),
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor),
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
