import 'package:auto_route/auto_route.dart';
import 'package:credit_capture/card_details/view/credit_card_details_page.dart';
import 'package:credit_capture/country/view/country_list.page.dart';
import 'package:credit_capture/home/view/cards_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CardsListPage, initial: true),
    CustomRoute<bool>(
      page: CardDetailsPage,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 600,
    ),
    AutoRoute(
      page: CountryListPage,
    ),
    // CustomRoute<bool>(
    //   page: CountryListPage,
    //   transitionsBuilder: TransitionsBuilders.slideBottom,
    //   durationInMilliseconds: 600,
    // ),
  ],
)
class $AppRouter {}
