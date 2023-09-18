import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  final String labelText, label;
  final List<TextInputFormatter>? inputFormatters;
  final double width; // Width of the input field
  final double height; // Height of the input field

  const InputField({
    Key? key,
    required this.labelText,
    this.inputFormatters,
    this.width = 390, // Default width
    this.height = 72,
    required this.label, // Default height
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width, // Use the specified width
      height: widget.height, // Use the specified height
      child: Stack(
        children: [
          TextFormField(
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              labelText: null, // Set the label text to null
              floatingLabelBehavior: FloatingLabelBehavior.never,
              // Hide the default floating label
              hintText: widget.labelText, // Use the label text as hint text
              hintStyle: const TextStyle(
                color: Color(0XFF546F99),
                fontSize: 12,
              ),
              // Use OutlineInputBorder with rounded border
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.transparent, // Transparent border color
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.transparent, // Transparent border color
                ),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 21, 72, 150),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          Transform.translate(
            offset: const Offset(10, -15), // Adjust the vertical offset as needed
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 72, 150), // Background color of the label text
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    color: Color(0XFFE7E9ED),
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
