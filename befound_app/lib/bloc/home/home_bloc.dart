import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    // ✅ Load data
    on<LoadHomeData>((event, emit) async {
      emit(HomeLoading());
      try {
        // simulate fetch
        await Future.delayed(const Duration(seconds: 1));
        emit(HomeLoaded(["Lost: Black Watch", "Found: Brown Wallet"]));
      } catch (e) {
        emit(HomeError("Failed to load posts"));
      }
    });

    // ✅ Apply filter
    on<ApplyFilter>((event, emit) {
      // filter logic here
      emit(HomeLoaded(["Filtered: ${event.filter}"]));
    });

    // ✅ Report Lost
    on<ReportLostPressed>((event, emit) {
      // handle lost report
    });

    // ✅ Report Found
    on<ReportFoundPressed>((event, emit) {
      // handle found report
    });
  }
}
