import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({
    super.key,
    required this.card,
    required this.onItemTap,
  });
  final CreditCard card;
  final VoidCallback onItemTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onItemTap,
        child: SizedBox(
          height: 150,
          width: 150,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor.withOpacity(0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Card # ${card.id}',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    'Expr. ${card.expiry}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
