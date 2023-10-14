import 'package:flutter/material.dart';
import '/models/news_item_model.dart';

class EventDetailScreen extends StatelessWidget {
  final NewsItemModel newsItem;

  EventDetailScreen({required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: const Color(
            0xFF4169E1), // Use the primary color for app bar background
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(newsItem.imageUrl),
            const SizedBox(height: 16.0),
            Text('Date: ${newsItem.date}'),
            Text('Club Name: ${newsItem.clubName}'),
            Text('Description: ${newsItem.description}'),
            // Add more event details as needed
          ],
        ),
      ),
    );
  }
}