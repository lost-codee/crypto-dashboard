import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/data/mock/crypto-api.dart';
import 'package:crypto_dashboard/data/model/crypto.model.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class TopMarket extends StatelessWidget {
  const TopMarket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today Top Market",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 400.0,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: const [
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Price"),
                ),
                DataColumn(
                  label: Text("24h change"),
                ),
                DataColumn(
                  label: Text("7d change"),
                ),
                DataColumn(
                  label: Text("Market Cap"),
                ),
              ],
              rows: List.generate(
                cryptoList.length,
                (index) => recentFileDataRow(cryptoList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(Crypto crypto) {
  return DataRow(
    cells: [
      DataCell(
        FittedBox(
          child: Row(
            children: [
              Image.asset(
                crypto.symbolUrl,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(
                  crypto.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
      DataCell(Text("\$${crypto.priceUsd}")),
      DataCell(
        Row(
          children: [
            Icon(
              crypto.percentChange24H > 0
                  ? Icons.arrow_upward
                  : Icons.arrow_downward,
              color: crypto.percentChange24H > 0 ? Colors.green : Colors.red,
            ),
            Text(crypto.percentChange24H.toString()),
          ],
        ),
      ),
      DataCell(
        Row(
          children: [
            Icon(
              crypto.percentChange7D > 0
                  ? Icons.arrow_upward
                  : Icons.arrow_downward,
              color: crypto.percentChange7D > 0 ? Colors.green : Colors.red,
            ),
            Text(crypto.percentChange7D.toString()),
          ],
        ),
      ),
      DataCell(Text("\$${crypto.marketCapUsd}")),
    ],
  );
}
