part of 'cards_list_cubit.dart';

@freezed
class CardsListPageState with _$CardsListPageState {
  const factory CardsListPageState.loading() = CardsListPageLoading;

  const factory CardsListPageState.empty() = CardsListPageEmpty;

  const factory CardsListPageState.success(List<CreditCard> cards) =
      CardsListPageSuccess;
}
