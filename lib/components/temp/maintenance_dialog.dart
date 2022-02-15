import 'package:deposito_nelinho/constants.dart';
import 'package:flutter/material.dart';

void showMaintenanceDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: const Text('Função temporariamente indisponível'),
        content: const Text(
            "Pedidos pela loja virtual estão previamente suspensos. No momento você pode realizer seu pedido por telefone"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Fechar',
              style: TextStyle(color: kPrimaryRed),
            ),
          ),
        ],
      );
    },
  );
}
