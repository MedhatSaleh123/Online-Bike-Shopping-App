import 'package:flutter/material.dart';

import '../../data/models/category_model.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;

  final List<CategoryModel> categories = [
    const CategoryModel(title: 'All'),
    const CategoryModel(icon: 'assets/bicycle_icon.png'),
    const CategoryModel(icon: 'assets/two.png'),
    const CategoryModel(icon: 'assets/three.png'),
    const CategoryModel(icon: 'assets/four.png'),
  ];

  void onCategorySelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 55,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            final bool isSelected = selectedIndex == index;

            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Transform.translate(
                offset: Offset(0, -(index * 10).toDouble()),
                child: GestureDetector(
                  onTap: () => onCategorySelected(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: isSelected
                            ? const [Color(0xff34C8E8), Color(0xff4E4AF2)]
                            : const [Color(0xff353F53), Color(0xff212734)],
                      ),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: isSelected ? .6 : .2,
                        ),
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color: Color(0xff10141B),
                          blurRadius: 30,
                          offset: Offset(0, 20),
                        ),
                        const BoxShadow(
                          color: Color(0x7F2A3345),
                          blurRadius: 30,
                          offset: Offset(0, -20),
                        ),
                        if (isSelected)
                          const BoxShadow(
                            color: Color(0x5534C8E8),
                            blurRadius: 20,
                            spreadRadius: 2,
                          ),
                      ],
                    ),
                    child: Center(
                      child: category.title != null
                          ? Text(
                              category.title!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          : Image.asset(category.icon!, width: 30, height: 30),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
