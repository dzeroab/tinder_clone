import 'package:get_it/get_it.dart';
import 'package:tinder/data/data.dart';
import 'package:tinder/ui/users/user_list_bloc.dart';

import '../domain/domain.dart';
import '../ui/home_bloc.dart';

part 'bloc_module.dart';

Future<void> setupDi(ApiConfig config) async {
  final getIt = GetIt.I;

  dataModule(getIt, config);
  blocModule(getIt);
  domainModule(getIt);
}
