import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState(currentPage: 0)) {
    on<NextPage>((event, emit) {
      if (state.currentPage < 2) {
        emit(state.copyWith(currentPage: state.currentPage + 1));
      } else {
        emit(state.copyWith(isCompleted: true));
      }
    });

    on<PreviousPage>((event, emit) {
      if (state.currentPage > 0) {
        emit(state.copyWith(currentPage: state.currentPage - 1));
      }
    });

    on<CompleteOnboarding>((event, emit) {
      emit(state.copyWith(isCompleted: true));
    });
  }
}
