import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/hotel_screen.dart';
import 'package:flutter_app/screens/ticket_view.dart';
import 'package:flutter_app/utils/app_info_list.dart';
import 'package:flutter_app/widgets/double_text_widget.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          // Container with padding
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Row with two columns
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First column with text and weather icon
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Good morning, Leila", style: Styles.headLineStyle3),
                            const SizedBox(width: 10),
                             Icon(FluentSystemIcons.ic_fluent_weather_cloudy_regular, color: Colors.white),
                            const SizedBox(width: 5),
                            Text("17°C", style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text("You are in New-York", style: Styles.headLineStyle1),
                      ],
                    ),
                    // Second column with image
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/air-01.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                // Container with search input
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6Fd),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                       Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.kakiColor),
                      const SizedBox(width: 10),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Horizontal scrollable list of tickets
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          const SizedBox(height: 15),
          // Container with header text
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Recommendations", smallText: "View all"),
          ),
          const SizedBox(height: 15),
          // Horizontal scrollable list of hotels
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
