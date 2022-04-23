import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'home_bloc.dart';

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
    return Scaffold();
  }
}
