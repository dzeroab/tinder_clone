import 'dart:async';
import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:tinder/data/data.dart';
import 'package:tinder/domain/domain.dart';

import 'card_animation_controller.dart';
import 'home_bloc.dart';
import 'users/user_list_screen.dart';

part 'widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final HomeBloc _bloc = GetIt.I();

  late final CardAnimationController _cardAnimation = CardAnimationController();

  @override
  void initState() {
    super.initState();
    _bloc.load();

    _cardAnimation.initialize(this, () {
      switch (_cardAnimation.emotionAction) {
        case UserEmotionAction.like:
          _bloc.next(UserActionState.liked);
          break;
        case UserEmotionAction.pass:
          _bloc.next(UserActionState.passed);
          break;
      }
    });
  }

  @override
  void dispose() {
    unawaited(_bloc.close());
    _cardAnimation.dispose();
    super.dispose();
  }

  void _onPass() {
    _cardAnimation.emotionAction = UserEmotionAction.pass;
    _cardAnimation.controller.forward();
  }

  void _onLike() {
    _cardAnimation.emotionAction = UserEmotionAction.like;
    _cardAnimation.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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

            final endIndex = math.min(state.viewIndex + 3, state.users.length);
            final shownUsers = state.users.sublist(state.viewIndex, endIndex);
            final shownLenghth = shownUsers.length;

            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const _SearchView(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GestureDetector(
                      onHorizontalDragDown: (details) => _cardAnimation.onDragDown(details),
                      onHorizontalDragUpdate: (details) => _cardAnimation.onDragUpdate(width, details),
                      onHorizontalDragEnd: (details) => _cardAnimation.onDragEnd(details),
                      child: AnimatedBuilder(
                        animation: _cardAnimation.controller,
                        builder: (context, child) {
                          return Stack(
                            children: [
                              for (var i = shownLenghth - 1; i >= 0; i--)
                                _PositionProfileCard(
                                  user: shownUsers[i],
                                  index: i,
                                  cardAnimationController: _cardAnimation,
                                  // i=0, it means the top card
                                  right: i == 0 ? _cardAnimation.getRight(width) : null,
                                  left: i == 0 ? _cardAnimation.getLeft(width) : null,
                                  rotateAngle: i == 0 ? _cardAnimation.getRotateAngle() : 0,
                                ),

                              ///
                              Positioned(
                                child: _ActionButtonGroup(onLike: _onLike, onPass: _onPass),
                                left: 0,
                                right: 0,
                                bottom: 0,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),

                  ///
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const UserListScreen(actionState: UserActionState.passed)));
                          },
                          child: Container(
                            child: const Text("Passed List"),
                            height: 60,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const UserListScreen(actionState: UserActionState.liked)));
                        },
                        child: Container(
                          child: const Text("Linked List", style: TextStyle(color: Colors.red)),
                          height: 60,
                          alignment: Alignment.center,
                        ),
                      )),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PositionProfileCard extends StatelessWidget {
  const _PositionProfileCard({
    Key? key,
    required this.cardAnimationController,
    required this.user,
    required this.index,
    required this.rotateAngle,
    this.left,
    this.right,
  }) : super(key: key);
  final User user;
  final int index;
  final double rotateAngle;
  final double? left;
  final double? right;
  final CardAnimationController cardAnimationController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Transform.rotate(
        angle: rotateAngle,
        child: ProfileCard(
          name: "${user.firstName} ${user.lastName}",
          picture: user.picture,
          age: user.age,
        ),
      ),
      top: 0,
      left: left ?? 0,
      right: right ?? 0,
      bottom: 50 - (index * 10),
    );
  }
}
