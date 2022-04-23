part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeBottomTab tab,
    required List<User> users,
    required bool isLoading,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        tab: HomeBottomTab.user,
        users: [],
        isLoading: true,
      );
}

enum HomeBottomTab {
  user,
  reviewList,
}
