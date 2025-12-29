import 'package:customer/core/core/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtendedOnAdded extends StatelessWidget {
  const ExtendedOnAdded({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController adderssController = TextEditingController();
    return Container(
      width: 414,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Add New Customer',
                  style: GoogleFonts.nunito(color: Colors.black),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      'assets/images/x-close.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: nameController,
              hintText: 'Enter Customer Name',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: emailController,
              hintText: 'Enter email ',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: phoneController,
              hintText: 'Enter Customer Phone Number',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: adderssController,
              hintText: 'Enter Customer Street Address',
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
