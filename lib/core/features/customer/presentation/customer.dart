import 'package:beamer/beamer.dart';
import 'package:customer/core/core/constant/app_color.dart';
import 'package:customer/core/provider/add_customer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customer/core/core/constant/data.dart';
import 'package:customer/core/core/widgets/custom_appbar.dart';
import 'package:customer/core/core/widgets/custom_button.dart';
import 'package:customer/core/core/widgets/customer_card.dart';
import 'package:customer/core/core/widgets/customtextfield.dart';
import 'package:customer/core/core/widgets/singlebutton.dart';
import 'package:customer/core/features/customer/presentation/card.dart';

class Customer extends ConsumerStatefulWidget {
  const Customer({super.key});

  @override
  ConsumerState<Customer> createState() => _CustomerState();
}

class _CustomerState extends ConsumerState<Customer> {
  final TextEditingController textController = TextEditingController();
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    final showAddForm = ref.watch(addCustomerVisibleProvider);

    return Scaffold(
      appBar: CustomAppbar(
        backIcon: Image.asset('assets/images/backarrow.png'),
        title: 'Customer',
        notification: Image.asset('assets/images/bell.png'),
      ),
      backgroundColor: AppColor.backgroundColor,
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
                  controller: textController,
                  keyboardType: TextInputType.text,
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

            if (showAddForm) const ExtendedOnAdded(),

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
                  Beamer.of(context).beamToNamed('/customer/add');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
