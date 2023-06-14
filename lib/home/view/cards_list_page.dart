import 'package:auto_route/auto_route.dart';
import 'package:credit_capture/app/engine/app_router.gr.dart';
import 'package:credit_capture/app/engine/cubit_hooks.dart';
import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:credit_capture/home/cubit/cards_list_cubit.dart';
import 'package:credit_capture/home/view/widgets/card_empty_list.dart';
import 'package:credit_capture/home/view/widgets/card_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardsListPage extends HookWidget {
  const CardsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<CardsListCubit>();
    final state = useCubitBuilder<CardsListCubit, CardsListPageState>(cubit);

    useEffect(
      () {
        cubit.init();
        return null;
      },
      [cubit],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.cards_list_title.tr()),
        actions: [
          if (state is CardsListPageSuccess) ...[
            IconButton(
              icon: const Icon(Icons.delete_forever_rounded),
              tooltip: LocaleKeys.cards_list_delete_all.tr(),
              onPressed: () {
                _showDeleteConfirmationDialog(context, cubit.deleteAll);
              },
            ),
          ]
        ],
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        empty: () => EmptyCardList(
          onAddNew: () async {
            final result = await context.router.push<bool>(CardDetailsRoute());
            if (result ?? true) {
              await cubit.getAllCards();
            }
          },
        ),
        success: (cards) {
          return CardList(cards: cards);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: () async {
                final result =
                    await context.router.push<bool>(CardDetailsRoute());
                if (result ?? true) {
                  await cubit.getAllCards();
                }
              },
              tooltip: LocaleKeys.cards_list_add.tr(),
              child: const Icon(Icons.add),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              heroTag: 'Country Config',
              onPressed: () async {
                await context.router.push(const CountryListRoute());
              },
              tooltip: LocaleKeys.cards_list_add.tr(),
              child: const Icon(Icons.add_alarm),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmationDialog(
    BuildContext context,
    VoidCallback action,
  ) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(LocaleKeys.cards_list_delete_all_dialog_message.tr()),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                action();
                Navigator.pop(context);
              },
              child: Text(LocaleKeys.cards_list_delete_all_dialog_yes.tr()),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(LocaleKeys.cards_list_delete_all_dialog_no.tr()),
            ),
          ],
        );
      },
    );
  }
}
