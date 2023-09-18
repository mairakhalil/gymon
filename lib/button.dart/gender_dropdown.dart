import 'package:flutter/material.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390, // Use the specified width
      height: 60, // Use the specified height
      child: Stack(
        children: [
          DropdownButtonFormField<String>(
            value: selectedValue,
            items: ['Male', 'Female', 'Other']
                .map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            style: const TextStyle(color: Color.fromARGB(255, 108, 127, 156)), // Text color
            dropdownColor: const Color.fromARGB(255, 21, 72, 150), // Dropdown background color
            decoration: InputDecoration(
           border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 21, 72, 150),
            ),
          ),
          Transform.translate(
            offset: const Offset(10, -15), // Adjust the vertical offset as needed
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 72, 150), // Background color of the label text
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.transparent, // Transparent background for the text
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

