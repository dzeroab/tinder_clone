import 'package:get_it/get_it.dart';
import 'package:tinder/data/data.dart';

part 'bloc_module.dart';

Future<void> setupDi(ApiConfig config) async {
  final getIt = GetIt.I;

  dataModule(getIt, config);
  blocModule(getIt);
}
