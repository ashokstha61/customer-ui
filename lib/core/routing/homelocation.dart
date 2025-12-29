import 'package:beamer/beamer.dart';
import 'package:customer/core/features/customer/presentation/card.dart';
import 'package:customer/core/features/customer/presentation/customer.dart';
import 'package:flutter/material.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
    '/customer',
    '/customer/add', // route for add customer
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = <BeamPage>[
      const BeamPage(
        key: ValueKey('customer'),
        title: 'Customer',
        child: Customer(),
      ),
    ];

    if (state.uri.pathSegments.contains('add')) {
      pages.add(
        const BeamPage(
          key: ValueKey('add_customer'),
          title: 'Add Customer',
          child: ExtendedOnAdded(),
        ),
      );
    }

    return pages;
  }
}
