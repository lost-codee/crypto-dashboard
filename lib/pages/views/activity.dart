import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/pages/views/balance.dart';
import 'package:crypto_dashboard/pages/views/recent-transactions.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BalanceDetails(),
        SizedBox(height: defaultPadding),
        RecentTransactions(),
      ],
    );
  }
}
