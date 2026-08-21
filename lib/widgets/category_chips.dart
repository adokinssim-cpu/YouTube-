import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  final List<String> categories;
  const CategoryChips({super.key, required this.categories});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();

}
class _CategoryChipsState extends State<CategoryChips> {
  int _selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        itemCount:widget.categories.length,
        itemBuilder:(context, index) {
          final isSelected = _selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(
                widget.categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.black: Colors.white,
                  fontWeight: isSelected ? FontWeight.bold:
                  FontWeight.normal,

                ),
              ),
            selected: isSelected,
            selectedColor: Colors.white,
            backgroundColor: const Color(0xFF272727), 
            onSelected: (_) => setState(() => _selectedIndex = index),
         
            ),
        );
        },

      ),
    );
}
}