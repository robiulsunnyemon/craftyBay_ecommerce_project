import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onChange;
  const ColorPicker({super.key, required this.colors, required this.onChange});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.colors.length,
        scrollDirection: Axis.horizontal,
        primary: false,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _selectedIndex = index;
              widget.onChange(widget.colors[index]);
              setState(() {});
            },
            child: CircleAvatar(
              backgroundColor: widget.colors[index],
              child: _selectedIndex == index
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
