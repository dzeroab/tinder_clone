import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tinder/data/data.dart';
import 'package:tinder/data/database/entities/entities.dart';
import 'package:tinder/domain/domain.dart';

import 'user_list_bloc.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key, required this.actionState}) : super(key: key);
  final UserActionState actionState;

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late final UserListBloc _bloc = GetIt.I();

  @override
  void initState() {
    super.initState();
    _bloc.load(widget.actionState);
  }

  @override
  void dispose() {
    unawaited(_bloc.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your ${widget.actionState == UserActionState.liked ? "Linked" : "Passed"} List")),
      body: BlocBuilder<UserListBloc, UserListState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state.users.isEmpty) {
            return const Center(child: Text("No Users"));
          }
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            itemBuilder: (context, index) {
              final user = state.users[index];
              return Container(
                height: 80,
                alignment: Alignment.center,
                child: ListTile(
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: user.age != null ? Text("Age: ${user.age}") : null,
                  leading: CircleAvatar(
                    child: CachedNetworkImage(imageUrl: user.picture),
                  ),
                ),
              );
            },
            itemCount: state.users.length,
          );
        },
      ),
    );
  }
}
