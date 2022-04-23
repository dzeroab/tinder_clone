import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:tinder/domain/domain.dart';

import 'home_bloc.dart';

part 'widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _bloc = GetIt.I();

  @override
  void initState() {
    super.initState();
    _bloc.load();
  }

  @override
  void dispose() {
    unawaited(_bloc.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: _bloc,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (state.users.isEmpty) {
              return const Center(child: Text("No User found"));
            }

            final user = state.users[state.viewIndex];
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const _SearchView(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          child: ProfileCard(
                            name: "${user.firstName} ${user.lastName}",
                            picture: user.picture,
                            age: user.age,
                          ),
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 50,
                        ),

                        ///
                        Positioned(
                          child: _ActionButtonGroup(
                            onLike: _bloc.next,
                            onNope: _bloc.next,
                          ),
                          left: 0,
                          right: 0,
                          bottom: 0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
