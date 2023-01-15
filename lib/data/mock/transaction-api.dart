import 'package:crypto_dashboard/data/model/transaction.model.dart';

final List<Transaction> transactionList = [
  Transaction(
    id: "1",
    cryptoId: "bitcoin",
    amount: 100,
    date: DateTime(2020, 1, 1),
    type: TransactionType.buy,
    status: true,
  ),
  Transaction(
    id: "2",
    cryptoId: "ethereum",
    amount: 200,
    date: DateTime(2020, 1, 1),
    type: TransactionType.sell,
    status: false,
  ),
  Transaction(
    id: "3",
    cryptoId: "litecoin",
    amount: 234,
    date: DateTime(2020, 1, 1),
    type: TransactionType.buy,
    status: true,
  ),
  Transaction(
    id: "4",
    cryptoId: "bitcoin-cash",
    amount: 1,
    date: DateTime(2020, 1, 1),
    type: TransactionType.sell,
    status: true,
  ),
  Transaction(
    id: "5",
    cryptoId: "eos",
    amount: 1,
    date: DateTime(2020, 1, 1),
    type: TransactionType.buy,
    status: true,
  ),
];

enum TransactionType { buy, sell }
