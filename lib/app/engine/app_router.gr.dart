// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../card_details/view/credit_card_details_page.dart' as _i2;
import '../../country/view/country_list.page.dart' as _i3;
import '../../home/view/cards_list_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CardsListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CardsListPage(),
      );
    },
    CardDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CardDetailsRouteArgs>(
          orElse: () => const CardDetailsRouteArgs());
      return _i4.CustomPage<bool>(
        routeData: routeData,
        child: _i2.CardDetailsPage(
          key: args.key,
          cardId: args.cardId,
        ),
        transitionsBuilder: _i4.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 600,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CountryListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CountryListPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          CardsListRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          CardDetailsRoute.name,
          path: '/card-details-page',
        ),
        _i4.RouteConfig(
          CountryListRoute.name,
          path: '/country-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.CardsListPage]
class CardsListRoute extends _i4.PageRouteInfo<void> {
  const CardsListRoute()
      : super(
          CardsListRoute.name,
          path: '/',
        );

  static const String name = 'CardsListRoute';
}

/// generated route for
/// [_i2.CardDetailsPage]
class CardDetailsRoute extends _i4.PageRouteInfo<CardDetailsRouteArgs> {
  CardDetailsRoute({
    _i5.Key? key,
    int? cardId,
  }) : super(
          CardDetailsRoute.name,
          path: '/card-details-page',
          args: CardDetailsRouteArgs(
            key: key,
            cardId: cardId,
          ),
        );

  static const String name = 'CardDetailsRoute';
}

class CardDetailsRouteArgs {
  const CardDetailsRouteArgs({
    this.key,
    this.cardId,
  });

  final _i5.Key? key;

  final int? cardId;

  @override
  String toString() {
    return 'CardDetailsRouteArgs{key: $key, cardId: $cardId}';
  }
}

/// generated route for
/// [_i3.CountryListPage]
class CountryListRoute extends _i4.PageRouteInfo<void> {
  const CountryListRoute()
      : super(
          CountryListRoute.name,
          path: '/country-list-page',
        );

  static const String name = 'CountryListRoute';
}
