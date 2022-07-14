import 'dart:async';

import 'package:dicoding_expert/di/injection.dart';
import 'package:dicoding_expert/domain/db/film_db_entity.dart';
import 'package:dicoding_expert/firebase_options.dart';
import 'package:dicoding_expert/presentation/blocs/film/film_bloc.dart';
import 'package:dicoding_expert/presentation/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    // Configure Dependencies to be injected
    await configureDependencies();

    // Configure Local DB using Hive
    await Hive.initFlutter();
    Hive.registerAdapter(FilmDbEntityAdapter());

    runApp(const NobarKuyApp());
  }, (error, stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(
      error,
      stackTrace,
      reason: 'Uncaught Error',
    );
  });
}

class NobarKuyApp extends StatefulWidget {
  const NobarKuyApp({Key? key}) : super(key: key);

  @override
  State<NobarKuyApp> createState() => _NobarKuyAppState();
}

class _NobarKuyAppState extends State<NobarKuyApp> {
  late Box _boxLocalDbMovies;

  _openLocalDbBox() async =>
      _boxLocalDbMovies = await Hive.openBox('watchlist');

  _closeLocalDbBox() async => await _boxLocalDbMovies.close();

  @override
  void initState() {
    _openLocalDbBox();
    super.initState();
  }

  @override
  void dispose() {
    _closeLocalDbBox();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<FilmBloc>()..add(const FetchMainPageEvent()),
      child: MaterialApp(
        home: const SplashScreen(),
        theme: ThemeData.dark(),
      ),
    );
  }
}
