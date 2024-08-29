import 'package:flutter/material.dart';

class EventTicketCard extends StatelessWidget {
  final Map<String, dynamic> event;
  const EventTicketCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final eventTickets = event['eventTickets'] as Map<String, dynamic>;

    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.confirmation_number,
                  color: Colors.black,
                ),
                SizedBox(width: 8.0),
                Text(
                  "Tickets",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(),
            ...eventTickets.entries.map((ticket) {
              final ticketData = ticket.value as Map<String, dynamic>;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${ticketData["ticketName"]} - ₦${ticketData["ticketPrice"]}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${ticketData["soldTickets"]}/${ticketData["totalTickets"]} tickets sold',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
