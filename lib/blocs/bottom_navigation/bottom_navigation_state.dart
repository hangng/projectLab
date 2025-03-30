part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  final int indexPage;


  const BottomNavigationState({this.indexPage=0});

  @override
  List<Object?> get props => [indexPage];

  BottomNavigationState copyWith({
    int? indexPage,

  }) {
    return BottomNavigationState(
        indexPage: indexPage ?? this.indexPage);
  }
}
