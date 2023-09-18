import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/profile.png',
            width: 134, 
            height: 123, 
          ),
        ),
     // Adjust the spacing between the image and text
        const Text('John Alexander',
            style: TextStyle(fontSize: 16, color: Color(0XFFE7E9ED))),
        const Text(
          'alexander@example.com',
          style:
              TextStyle(fontSize: 12, color: Color(0XFF567F9C)),
        ),

      ],
    );
  }
}
