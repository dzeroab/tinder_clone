import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinder/domain/domain.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SyncUsersCommand _syncUsersCommand;

  HomeBloc(this._syncUsersCommand) : super(HomeState.initial()) {
    on<_LoadEvent>(_loadEvent);
  }

  void load() => add(const HomeEvent.load());
}

///
extension _HomeBloc on HomeBloc {
  Future<void> _loadEvent(_LoadEvent event, Emitter<HomeState> emit) async {
    await _syncUsersCommand.call();
  }
}
