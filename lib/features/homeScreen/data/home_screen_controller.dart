import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../data/home_screen_data.dart';

class HomeScreenController extends StateNotifier<HomeScreenData> {
  HomeScreenController() : super(HomeScreenData()) {
    searchValue.text = state.searchValue;
    searchValue.addListener(() {
      state = state.copyWith(searchValue: searchValue.text);
    });
  }

  /// This is your TextEditingController
  final TextEditingController searchValue = TextEditingController();

  @override
  void dispose() {
    searchValue.dispose();
    super.dispose();
  }
}
