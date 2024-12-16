import 'package:flutter/material.dart';
import 'package:hotel_menu/components/custom_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0), // Add padding around the list
        itemBuilder: (context, index) => Container(
          padding:
              const EdgeInsets.all(8.0), // Add padding inside the container
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the card
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: const Offset(0, 2), // Slight shadow below
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    child: Image.asset(
                      "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12.0), // Space between image and text
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Item Title",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Row(
                          children: const [
                            Text(
                              "Subtitle 1",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              "Subtitle 2",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0), // Space between content and button
              CustomButton(
                height: 38,
                radius: 10,
                title: "Re-Order",
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 12, // Space between list items
        ),
        itemCount: 10, // Number of items in the list
      ),
    );
  }
}
