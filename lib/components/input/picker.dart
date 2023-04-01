import 'package:flutter/material.dart';

class CategoryPicker extends StatefulWidget {
  final List<String> category;
  final Function(String) onCategoryChanged;

  const CategoryPicker({
    Key? key,
    required this.category,
    required this.onCategoryChanged,
  }) : super(key: key);

  @override
  State<CategoryPicker> createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedCategory,
      decoration: const InputDecoration(
        labelText: '账单分类',
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBE2E7),
            width: 1,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF8B97A2),
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      ),
      items: widget.category.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedCategory = value!;
          widget.onCategoryChanged(value);
        });
      },
    );
  }
}
