
part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class BottomNavPageIndex extends BottomNavigationEvent {
  final int indexPage;

  const BottomNavPageIndex(this.indexPage);

  @override
  List<Object> get props => [indexPage];
}