import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/data/mock/crypto-api.dart';
import 'package:crypto_dashboard/data/mock/transaction-api.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent transactions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          ListView.builder(
            itemCount: transactionList.take(3).length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              // find the crypto from the crypto list
              // using the transaction crypto id
              final crypto = cryptoList.firstWhere(
                  (element) => element.id == transactionList[index].cryptoId);
              return ListTile(
                key: Key(transactionList[index].id),
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  crypto.symbolUrl,
                  height: 30,
                ),
                title: Text(crypto.name),
                subtitle: Text(
                  '${transactionList[index].amount} ${crypto.symbol}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: transactionList[index].type == TransactionType.buy
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
                trailing: Text(
                  formateDate(transactionList[index].date),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white70,
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

String formateDate(DateTime date) {
  return '${date.day}/${date.month}/${date.year}';
}
