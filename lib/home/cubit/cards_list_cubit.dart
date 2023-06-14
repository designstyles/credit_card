import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/delete_all_cards.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/get_all_cards.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cards_list_cubit.freezed.dart';
part 'cards_list_page_state.dart';

@injectable
class CardsListCubit extends Cubit<CardsListPageState> {
  CardsListCubit(
    this._getAllCreditCardsUseCase,
    this._deleteAllCreditCardUseCase,
  ) : super(const CardsListPageState.loading());
  final GetAllCreditCardUseCase _getAllCreditCardsUseCase;
  final DeleteAllCreditCardsUseCase _deleteAllCreditCardUseCase;
  List<CreditCard> _cards = [];

  Future<void> init() async {
    await getAllCards();
  }

  Future<void> getAllCards() async {
    emit(const CardsListPageState.loading());
    _cards = _getAllCreditCardsUseCase();
    if (_cards.isNotEmpty) {
      emit(CardsListPageState.success(List.of(_cards)));
    } else {
      emit(const CardsListPageState.empty());
    }
  }

  Future<void> deleteAll() async {
    emit(const CardsListPageState.loading());
    await _deleteAllCreditCardUseCase();
    emit(const CardsListPageState.empty());
  }
}
