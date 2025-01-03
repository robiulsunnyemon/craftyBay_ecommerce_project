import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class SizePicker extends StatefulWidget {
  final List<String> sizes;
  final Function(String) onSelected;
  const SizePicker({
    super.key, required this.sizes, required this.onSelected,
  });

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.sizes.length,
        scrollDirection: Axis.horizontal,
        primary: false,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _selectedIndex = index;
              widget.onSelected(widget.sizes[index]);
              setState(() {});
            },
            child: Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? AppColors.primaryColor
                      : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: _selectedIndex == index
                        ? AppColors.primaryColor
                        : Colors.grey,
                  )),
              child: Center(
                child: Text(
                  widget.sizes[index],
                  style: TextStyle(
                    color: _selectedIndex == index ? Colors.white : Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
