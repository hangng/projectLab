import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part  'bottom_navigation_event.dart';
part  'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {

  BottomNavigationBloc() : super(const BottomNavigationState()) {
    on<BottomNavPageIndex>(_onBottomNavPageIndex);
  }

   _onBottomNavPageIndex(BottomNavPageIndex event, Emitter<BottomNavigationState> emit) async {
     emit(state.copyWith(indexPage: event.indexPage));
  }

}
