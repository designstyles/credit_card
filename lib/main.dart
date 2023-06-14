import 'package:any_loading/any_loading.dart';
import 'package:credit_capture/app/di_packages/database/app_db.dart';
import 'package:credit_capture/app/di_packages/get_config.dart';
import 'package:credit_capture/app/engine/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter());
  await AppDatabase().initialize();

  Loggy.initLoggy();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en')],
      child: MyApp(appRouter: getIt<AppRouter>()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({required this.appRouter, super.key});

  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: widget.appRouter.delegate(),
      routeInformationParser: widget.appRouter.defaultRouteParser(),
      title: 'Cards',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.yellow),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: AnyLoading.init(),
    );
  }
}
