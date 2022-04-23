// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _LoadEvent load() {
    return const _LoadEvent();
  }

  _UsersLoadedEvent usersLoaded(List<User> users) {
    return _UsersLoadedEvent(
      users,
    );
  }

  _UpdateViewIndex updateViewIndex(int index) {
    return _UpdateViewIndex(
      index,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<User> users) usersLoaded,
    required TResult Function(int index) updateViewIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_UsersLoadedEvent value) usersLoaded,
    required TResult Function(_UpdateViewIndex value) updateViewIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$LoadEventCopyWith<$Res> {
  factory _$LoadEventCopyWith(
          _LoadEvent value, $Res Function(_LoadEvent) then) =
      __$LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$LoadEventCopyWith<$Res> {
  __$LoadEventCopyWithImpl(_LoadEvent _value, $Res Function(_LoadEvent) _then)
      : super(_value, (v) => _then(v as _LoadEvent));

  @override
  _LoadEvent get _value => super._value as _LoadEvent;
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent();

  @override
  String toString() {
    return 'HomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<User> users) usersLoaded,
    required TResult Function(int index) updateViewIndex,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_UsersLoadedEvent value) usersLoaded,
    required TResult Function(_UpdateViewIndex value) updateViewIndex,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements HomeEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$UsersLoadedEventCopyWith<$Res> {
  factory _$UsersLoadedEventCopyWith(
          _UsersLoadedEvent value, $Res Function(_UsersLoadedEvent) then) =
      __$UsersLoadedEventCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$UsersLoadedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$UsersLoadedEventCopyWith<$Res> {
  __$UsersLoadedEventCopyWithImpl(
      _UsersLoadedEvent _value, $Res Function(_UsersLoadedEvent) _then)
      : super(_value, (v) => _then(v as _UsersLoadedEvent));

  @override
  _UsersLoadedEvent get _value => super._value as _UsersLoadedEvent;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_UsersLoadedEvent(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UsersLoadedEvent implements _UsersLoadedEvent {
  const _$_UsersLoadedEvent(this.users);

  @override
  final List<User> users;

  @override
  String toString() {
    return 'HomeEvent.usersLoaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersLoadedEvent &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$UsersLoadedEventCopyWith<_UsersLoadedEvent> get copyWith =>
      __$UsersLoadedEventCopyWithImpl<_UsersLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<User> users) usersLoaded,
    required TResult Function(int index) updateViewIndex,
  }) {
    return usersLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
  }) {
    return usersLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_UsersLoadedEvent value) usersLoaded,
    required TResult Function(_UpdateViewIndex value) updateViewIndex,
  }) {
    return usersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
  }) {
    return usersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(this);
    }
    return orElse();
  }
}

abstract class _UsersLoadedEvent implements HomeEvent {
  const factory _UsersLoadedEvent(List<User> users) = _$_UsersLoadedEvent;

  List<User> get users;
  @JsonKey(ignore: true)
  _$UsersLoadedEventCopyWith<_UsersLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateViewIndexCopyWith<$Res> {
  factory _$UpdateViewIndexCopyWith(
          _UpdateViewIndex value, $Res Function(_UpdateViewIndex) then) =
      __$UpdateViewIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$UpdateViewIndexCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$UpdateViewIndexCopyWith<$Res> {
  __$UpdateViewIndexCopyWithImpl(
      _UpdateViewIndex _value, $Res Function(_UpdateViewIndex) _then)
      : super(_value, (v) => _then(v as _UpdateViewIndex));

  @override
  _UpdateViewIndex get _value => super._value as _UpdateViewIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_UpdateViewIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateViewIndex implements _UpdateViewIndex {
  const _$_UpdateViewIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateViewIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateViewIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$UpdateViewIndexCopyWith<_UpdateViewIndex> get copyWith =>
      __$UpdateViewIndexCopyWithImpl<_UpdateViewIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<User> users) usersLoaded,
    required TResult Function(int index) updateViewIndex,
  }) {
    return updateViewIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
  }) {
    return updateViewIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<User> users)? usersLoaded,
    TResult Function(int index)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (updateViewIndex != null) {
      return updateViewIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_UsersLoadedEvent value) usersLoaded,
    required TResult Function(_UpdateViewIndex value) updateViewIndex,
  }) {
    return updateViewIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
  }) {
    return updateViewIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_UsersLoadedEvent value)? usersLoaded,
    TResult Function(_UpdateViewIndex value)? updateViewIndex,
    required TResult orElse(),
  }) {
    if (updateViewIndex != null) {
      return updateViewIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateViewIndex implements HomeEvent {
  const factory _UpdateViewIndex(int index) = _$_UpdateViewIndex;

  int get index;
  @JsonKey(ignore: true)
  _$UpdateViewIndexCopyWith<_UpdateViewIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required List<User> users,
      required bool isLoading,
      required int viewIndex}) {
    return _HomeState(
      users: users,
      isLoading: isLoading,
      viewIndex: viewIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<User> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get viewIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<User> users, bool isLoading, int viewIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? isLoading = freezed,
    Object? viewIndex = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewIndex: viewIndex == freezed
          ? _value.viewIndex
          : viewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<User> users, bool isLoading, int viewIndex});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? users = freezed,
    Object? isLoading = freezed,
    Object? viewIndex = freezed,
  }) {
    return _then(_HomeState(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewIndex: viewIndex == freezed
          ? _value.viewIndex
          : viewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.users, required this.isLoading, required this.viewIndex});

  @override
  final List<User> users;
  @override
  final bool isLoading;
  @override
  final int viewIndex;

  @override
  String toString() {
    return 'HomeState(users: $users, isLoading: $isLoading, viewIndex: $viewIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.viewIndex, viewIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(viewIndex));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required List<User> users,
      required bool isLoading,
      required int viewIndex}) = _$_HomeState;

  @override
  List<User> get users;
  @override
  bool get isLoading;
  @override
  int get viewIndex;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
