import 'package:flutter/material.dart';
import 'button.dart';
import 'gender_dropdown.dart';
import 'image.dart';
import 'input.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent, // Set the background color to transparent
      appBar: AppBar(
        backgroundColor: Color(0XFF001B49),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: SizedBox(
            width: 84.08,
            height: 20,
            child: Image.asset(
              'assets/images/logo.png',
              width: 84.08,
              height: 20,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 124.65,
                        height: 9, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(
                              0XFF10C0F7), // Change the color to your desired color
                          borderRadius: BorderRadius.circular(
                              4), // Adjust the border radius as needed
                        ),
                      ),
                      const SizedBox(width: 8), // Adjust the gap width as needed
                      Container(
                        width: 124.65,
                        height: 9, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 21, 72, 150),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8), // Adjust the gap width as needed
                      Container(
                        width: 124.65,
                        height: 9, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 21, 72, 150),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                  const ProfileImage(),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: const InputField(
                          labelText: 'wasi',
                          width: 188,
                          height: 60,
                          label: 'First Name',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const InputField(
                        labelText: 'Last Name',
                        width: 188,
                        height: 60,
                        label: 'Last Name',
                      ),
                    ],
                  ),
                    const SizedBox(
                        height:10,
                      ),
                  const InputField(
                    labelText: "+876543433",
                    label: 'phone Num',
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const InputField(
                      labelText: "Email@gmail.com",
                      label: 'Email',
                    ),
                  ),
                  const Row(
                    children: [
                      InputField(
                        labelText: 'Day',
                        width: 120,
                        height: 60,
                        label: 'Day',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InputField(
                        labelText: 'Month',
                        width: 120,
                        height: 60,
                        label: 'Month',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InputField(
                        labelText: 'Year',
                        width: 120,
                        height: 60,
                        label: 'Year',
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: GenderDropdown(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: Buttons(onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
