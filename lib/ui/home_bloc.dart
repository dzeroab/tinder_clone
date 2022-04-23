import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinder/domain/domain.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SyncUsersCommand _syncUsersCommand;
  final GetUserListQuery _getUserListQuery;
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  HomeBloc(this._syncUsersCommand, this._getUserListQuery) : super(HomeState.initial()) {
    on<_LoadEvent>(_loadEvent);
    on<_UsersLoadedEvent>(_usersLoadedEvent);
  }

  void load() => add(const HomeEvent.load());

  @override
  Future<void> close() async {
    await _compositeSubscription.cancel();
    return super.close();
  }
}

///
extension _HomeBloc on HomeBloc {
  Future<void> _loadEvent(_LoadEvent event, Emitter<HomeState> emit) async {
    await _syncUsersCommand.call();

    _getUserListQuery() //
        .map((event) => HomeEvent.usersLoaded(event))
        .listen((event) => add(event))
        .addTo(_compositeSubscription);
  }

  Future<void> _usersLoadedEvent(_UsersLoadedEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      isLoading: false,
      users: event.users,
      // reset the state if needed
      viewIndex: state.viewIndex >= event.users.length ? 0 : state.viewIndex,
    ));
  }
}
