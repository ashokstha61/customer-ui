import 'package:customer/core/core/constant/data.dart';
import 'package:customer/core/core/widgets/custom_appbar.dart';
import 'package:customer/core/core/widgets/custom_button.dart';
import 'package:customer/core/core/widgets/customer_card.dart';
import 'package:customer/core/core/widgets/customtextfield.dart';
import 'package:customer/core/core/widgets/singlebutton.dart';
import 'package:customer/core/features/customer/presentation/card.dart';
import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  final TextEditingController textcontroller = TextEditingController();
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        backIcon: Image.asset('assets/images/backarrow.png'),
        title: 'Customer',
        notification: Image.asset('assets/images/bell.png'),
      ),
      backgroundColor: const Color(0xffF9F9F9),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  width: 320,
                  icons: Image.asset(
                    'assets/images/magnifying.png',
                    width: 24,
                    height: 24,
                  ),
                  hintText: 'Search..',
                  labelText: 'Search',
                  controller: textcontroller,
                ),

                Singlebutton(
                  icon: Image.asset(
                    'assets/images/funnel.png',
                    width: 24,
                    height: 24,
                  ),
                  onTap: () {},
                ),
              ],
            ),

            const SizedBox(height: 12),

            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: customers.length,
                  itemBuilder: (context, index) {
                    return CustomerCard(
                      data: customers[index],
                      isExpanded: expandedIndex == index,
                      onTap: () {
                        setState(() {
                          expandedIndex = expandedIndex == index ? null : index;
                        });
                      },
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 12),
            Center(
              child: CustomButton(
                text: 'Add new Customer',
                iconPath: 'assets/images/addcustomer.png',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          child: const ExtendedOnAdded(),
                        ),
                      );
                    },
                  );
                },
              ),
              // child: ElevatedButton.icon(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.orange,
              //     padding: const EdgeInsets.symmetric(vertical: 14),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   onPressed: () {
              //     //
              //   },
              //   icon: const Icon(Icons.person_add),
              //   label: const Text('Add New Customer'),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
