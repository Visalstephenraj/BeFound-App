import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

// ✅ Initial state
class HomeInitial extends HomeState {}

// ✅ Loading state
class HomeLoading extends HomeState {}

// ✅ Loaded state
class HomeLoaded extends HomeState {
  final List<String> posts; // sample data
  const HomeLoaded(this.posts);

  @override
  List<Object?> get props => [posts];
}

// ✅ Error state
class HomeError extends HomeState {
  final String message;
  const HomeError(this.message);

  @override
  List<Object?> get props => [message];
}
