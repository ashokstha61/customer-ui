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
    final TextEditingController alterPhoneController = TextEditingController();
    final TextEditingController wardController = TextEditingController();
    final TextEditingController municipalityController =
        TextEditingController();
    final TextEditingController districtController = TextEditingController();
    final TextEditingController provinceController = TextEditingController();
    final TextEditingController citizenNoController = TextEditingController();
    final TextEditingController panController = TextEditingController();

    return Container(
      width: 414,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add New Customer',
                  style: GoogleFonts.nunito(color: Colors.black, fontSize: 24),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
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
              labelText: 'Customer Name',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: emailController,
              hintText: 'Enter email ',
              labelText: 'Customer Name',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: phoneController,
              hintText: 'Enter Customer Phone Number',
              labelText: 'Customer Phone Number',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: adderssController,
              hintText: 'Enter Customer Street Address',
              labelText: 'Customer Street Address',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: alterPhoneController,
              hintText: 'Enter Customer Alternative Phoone',
              labelText: 'Alternative Phoone',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: wardController,
              hintText: 'Enter Customer Ward ',
              labelText: 'Customer Ward No',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: municipalityController,
              hintText: 'Enter Customer Municapility',
              labelText: 'Customer Municapility',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: districtController,
              hintText: 'Enter Customer Disrtict',
              labelText: 'Customer District',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: provinceController,
              hintText: 'Enter Customer Province',
              labelText: 'Province',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: citizenNoController,
              hintText: 'Enter Citizenship No ',
              labelText: 'Customer Citizenship No',
            ),
            SizedBox(height: 8),
            CustomTextField(
              controller: panController,
              hintText: 'Enter Customer Pan No',
              labelText: 'Customer Pan No',
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
