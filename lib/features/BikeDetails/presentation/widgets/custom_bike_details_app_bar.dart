import 'package:flutter/material.dart';

class CustomBikeDetailsAppBar extends StatelessWidget {
  const CustomBikeDetailsAppBar({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Ink(
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 44,
                height: 44,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xff4E4AF2), Color(0xff34C8E8)],
                  ),
                ),
                child: Image.asset("assets/arrow_back.png"),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
