import 'package:expenses/components/no_items_advice.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(
      {super.key, required this.transactions, required this.onRemove});

  final List<Transaction> transactions;
  final void Function(String) onRemove;

  @override
  Widget build(BuildContext context) {
    return transactions.isNotEmpty
        ? /* ListView(
            children: transactions.map((tr) {
              return TransactionItem(
                tr: tr,
                onRemove: onRemove,
                key: ValueKey(tr.id),
              );
            }).toList(),
          ) */
        ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final tr = transactions[index];
              return TransactionItem(
                key: GlobalObjectKey(tr),
                tr: tr,
                onRemove: onRemove,
              );
            },
          )
        : const NoItemsAdvice(
            item: 'transactions',
            image: 'assets/images/waiting.png',
          );
  }
}
