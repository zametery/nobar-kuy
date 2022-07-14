import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dicoding_expert/di/injection.config.dart';

final inject = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(inject);
