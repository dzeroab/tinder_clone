part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<User> users,
    required bool isLoading,
    required int viewIndex,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        users: [],
        isLoading: true,
        viewIndex: 0,
      );
}

