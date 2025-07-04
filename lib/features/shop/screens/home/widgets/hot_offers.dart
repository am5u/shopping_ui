import 'package:flutter/material.dart';

class HotOffers extends StatelessWidget {
  HotOffers({super.key});

  final List<Map<String, String>> offers = const [
    {
      'title': '50% Off Electronics',
      'subtitle': 'Limited time offer on all tech gadgets',
      'badge': '50% OFF',
    },
    {
      'title': 'Free Shipping Weekend',
      'subtitle': 'No delivery charges on orders above \$50',
      'badge': 'FREE SHIP',
    },
    {
      'title': 'Buy 2 Get 1 Free',
      'subtitle': 'On selected accessories and peripherals',
      'badge': 'B2G1',
    },
    {
      'title': 'Student Discount',
      'subtitle': 'Extra 20% off with valid student ID',
      'badge': '20% OFF',
    },
    {
      'title': 'Bundle Deals',
      'subtitle': 'Save more when you buy complete setups',
      'badge': 'BUNDLE',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hot Offers ',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('🔥', style: TextStyle(fontSize: 32)),
            ],
          ),
        ),
        ...offers.map(
          (offer) => _HotOfferCard(
            title: offer['title']!,
            subtitle: offer['subtitle']!,
            badge: offer['badge']!,
          ),
        ),
      ],
    );
  }
}

class _HotOfferCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String badge;
  const _HotOfferCard({
    required this.title,
    required this.subtitle,
    required this.badge,
  });

  @override
  State<_HotOfferCard> createState() => _HotOfferCardState();
}

class _HotOfferCardState extends State<_HotOfferCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            if (isHovered)
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [Color(0xFFB721FF), Color(0xFF21D4FD)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(
                widget.badge,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
