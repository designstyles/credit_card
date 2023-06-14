# credit_capture

A Test case for evaluation

## Getting Started

This project showcases the following:
 - Cubit State Management
 - Dependency Injection
 - Repository/Use-case seperation of logic
 - Code generation (Freezed, Locale)
 - Hive db integration
 - Application Initialization
 - Route delegation using Autoroute
 - Linting

## Terminal 

-- Regenerate locale file after edits:
flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/app/engine/translations -o locale_keys.g.dart

-- Regenerate Hive, Freezed .g classes
flutter pub run build_runner build --delete-conflicting-outputs

General Rules of the application:
1) A card can be captured, as long as it is not a duplicate of an existing card
2) A card has required fields, and cannot be captured unless all are completed
3) A captured card passes validation rules
4) A set of new banned countries can be generated. 

## Missing
I was not able to do the card auto-scanning. 
