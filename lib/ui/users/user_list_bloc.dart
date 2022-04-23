import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinder/data/data.dart';
import 'package:tinder/domain/domain.dart';

part 'user_list_event.dart';

part 'user_list_state.dart';

part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetUserListByActionQuery _getUserListByActionQuery;

  UserListBloc(this._getUserListByActionQuery) : super(UserListState.initial()) {
    on<_LoadEvent>(_loadEvent);
  }

  void load(UserActionState actionState) => add(UserListEvent.load(actionState));
}

extension _UserListBlocEx on UserListBloc {
  Future<void> _loadEvent(_LoadEvent event, Emitter<UserListState> emit) async {
    final users = await _getUserListByActionQuery.call(event.actionState);

    emit(state.copyWith(users: users));
  }
}
