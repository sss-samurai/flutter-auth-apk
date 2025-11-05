class HomeScreenData {
  final String searchValue;

  HomeScreenData({this.searchValue = ''});

  HomeScreenData copyWith({String? searchValue}) {
    return HomeScreenData(searchValue: searchValue ?? this.searchValue);
  }
}
