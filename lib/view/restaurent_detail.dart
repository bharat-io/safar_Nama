import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Map<String, dynamic> restaurant;

  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                restaurant['name'],
                style: const TextStyle(color: Colors.white, shadows: [
                  Shadow(
                      blurRadius: 4,
                      color: Colors.black45,
                      offset: Offset(1, 1))
                ]),
              ),
              background: (restaurant['imageUrl'] ?? '').isNotEmpty
                  ? Image.asset(
                      restaurant['imageUrl'],
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.restaurant,
                            size: 100, color: Colors.white54),
                      ),
                    ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant['address'],
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: Colors.black87),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Cuisine: ${restaurant['cuisine']}",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (restaurant['features'] != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Features:", style: theme.textTheme.titleMedium),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: (restaurant['features'] as List<dynamic>)
                              .map((feature) => Chip(label: Text(feature)))
                              .toList(),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  Row(
                    children: [
                      const Icon(Icons.phone, size: 20, color: Colors.blueGrey),
                      const SizedBox(width: 8),
                      Text(
                        restaurant['contact'],
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
