part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.load() = _LoadEvent;

  const factory HomeEvent.usersLoaded(List<User> users) = _UsersLoadedEvent;

  const factory HomeEvent.updateViewIndex(int index) = _UpdateViewIndex;
}
