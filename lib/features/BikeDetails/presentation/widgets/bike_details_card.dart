import 'package:flutter/material.dart';

import 'bottom_section.dart';
import 'description_widget.dart';
import 'specification_widget.dart';
import 'top_taps.dart';

class BikeDetailsCard extends StatefulWidget {
  const BikeDetailsCard({super.key});

  @override
  State<BikeDetailsCard> createState() => _BikeDetailsCardState();
}

class _BikeDetailsCardState extends State<BikeDetailsCard> {
  bool isDescription = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xff222834), Color(0xff353F54)],
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),

            /// Tabs
            TopTabs(
              isDescription: isDescription,
              onChanged: (value) {
                setState(() {
                  isDescription = value;
                });
              },
            ),

            const SizedBox(height: 24),

            if (isDescription)
              const DescriptionWidget()
            else
              const SpecificationWidget(),

            const SizedBox(height: 28),

            const BottomSection(),
          ],
        ),
      ),
    );
  }
}
