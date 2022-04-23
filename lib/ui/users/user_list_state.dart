part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    required List<User> users,
  }) = _UserListState;

  factory UserListState.initial() => const UserListState(users: []);
}
