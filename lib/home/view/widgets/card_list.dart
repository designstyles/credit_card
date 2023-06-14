import 'package:auto_route/auto_route.dart';
import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/engine/app_router.gr.dart';
import 'package:credit_capture/app/engine/cubit_hooks.dart';
import 'package:credit_capture/home/cubit/cards_list_cubit.dart';
import 'package:credit_capture/home/view/widgets/card_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardList extends HookWidget {
  const CardList({super.key, required this.cards});
  final List<CreditCard> cards;
  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<CardsListCubit>();
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final card = cards[index];
              return Padding(
                padding: const EdgeInsets.all(8),
                child: CardListItem(
                  card: card,
                  onItemTap: () async {
                    final result = await context.router
                        .push<bool>(CardDetailsRoute(cardId: card.id));
                    if (result ?? true) {
                      await cubit.getAllCards();
                    }
                  },
                ),
              );
            },
            childCount: cards.length,
          ),
        )
      ],
    );
  }
}
