import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/core/responsive.dart';
import 'package:crypto_dashboard/pages/views/balance.dart';
import 'package:crypto_dashboard/pages/views/recent-transactions.dart';
import 'package:flutter/material.dart';

import 'views/banner.dart';
import 'views/top-market.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: const [
                  BannerHeading(),
                  SizedBox(height: defaultPadding),
                  TopMarket(),
                ],
              ),
            ),
            if (!Responsive.isMobile(context))
              const SizedBox(width: defaultPadding),
            if (!Responsive.isMobile(context))
              Expanded(
                flex: 2,
                child: Column(
                  children: const [
                    BalanceDetails(),
                    SizedBox(height: defaultPadding),
                    RecentTransactions(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
