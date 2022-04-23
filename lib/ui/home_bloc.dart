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
  final LoadUserDetailCommand _loadUserDetailCommand;
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  HomeBloc(
    this._syncUsersCommand,
    this._getUserListQuery,
    this._loadUserDetailCommand,
  ) : super(HomeState.initial()) {
    on<_LoadEvent>(_loadEvent);
    on<_UsersLoadedEvent>(_usersLoadedEvent);
    on<_UpdateViewIndex>(_updateViewIndex);
  }

  void load() => add(const HomeEvent.load());

  void next() => add(HomeEvent.updateViewIndex(state.viewIndex + 1));

  @override
  Future<void> close() async {
    await _compositeSubscription.cancel();
    return super.close();
  }
}

///
extension _HomeBloc on HomeBloc {
  Future<void> _loadEvent(_LoadEvent event, Emitter<HomeState> emit) async {
    try {
      await _syncUsersCommand.call();
    } catch (e) {
      // handle error
    }

    _getUserListQuery() //
        .map((event) => HomeEvent.usersLoaded(event))
        .listen((event) => add(event))
        .addTo(_compositeSubscription);
  }

  Future<void> _usersLoadedEvent(_UsersLoadedEvent event, Emitter<HomeState> emit) async {
    final prepareDataFor1stUser = state.isLoading;

    emit(state.copyWith(
      isLoading: false,
      users: event.users,
      // reset the state if needed
      viewIndex: state.viewIndex >= event.users.length ? 0 : state.viewIndex,
    ));

    if (prepareDataFor1stUser) {
      await _updateViewIndex(const _UpdateViewIndex(0), emit);
    }
  }

  Future<void> _updateViewIndex(_UpdateViewIndex event, Emitter<HomeState> emit) async {
    final index = event.index >= state.users.length ? 0 : event.index;

    emit(state.copyWith(viewIndex: index));

    final futures = [_loadUserDetailCommand.call(state.users[index].id)];
    if (index + 1 < state.users.length) {
      // prepare for the next user
      futures.add(_loadUserDetailCommand.call(state.users[index + 1].id));
    }

    await Future.wait(futures);
  }
}
