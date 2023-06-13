import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.tr,
    required this.onRemove,
  });

  final Transaction tr;
  final void Function(String p1) onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.purple,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Text(
                'R\$${tr.value}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          tr.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          DateFormat('d MMM y').format(tr.date),
        ),
        trailing: MediaQuery.of(context).size.width > 400
            ? TextButton.icon(
                onPressed: () => onRemove(tr.id),
                icon: const Icon(Icons.delete),
                label: const Text('Excluir'),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.red),
                ),
              )
            : IconButton(
                icon: const Icon(
                  Icons.delete,
                ),
                color: Colors.red,
                onPressed: () => onRemove(tr.id),
              ),
      ),
    );
  }
}
