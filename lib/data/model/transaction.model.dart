import 'package:crypto_dashboard/data/mock/transaction-api.dart';

class Transaction {
  final String id;
  final String cryptoId;
  final double amount;
  final DateTime date;
  final TransactionType type;
  final bool status;

  Transaction({
    required this.id,
    required this.cryptoId,
    required this.amount,
    required this.date,
    required this.type,
    required this.status,
  });
}
