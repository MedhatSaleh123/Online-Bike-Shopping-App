import 'package:flutter/material.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SummaryItem(title: 'Subtotal:', value: '\$6119.99'),
        SizedBox(height: 10),

        SummaryItem(title: 'Delivery Fee:', value: '\$0'),
        SizedBox(height: 10),

        SummaryItem(title: 'Discount:', value: '30%'),
        SizedBox(height: 10),
        TotalSummaryItem(total: '\$4,283.99'),
        SizedBox(height: 10),
      ],
    );
  }
}

class SummaryItem extends StatelessWidget {
  final String title;
  final String value;

  const SummaryItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xffF5F5F5),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xffB8C0CC),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class TotalSummaryItem extends StatelessWidget {
  final String total;

  const TotalSummaryItem({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Total:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          total,
          style: TextStyle(
            color: Color(0xff38B8EA),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
