import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

// ✅ Load initial data
class LoadHomeData extends HomeEvent {}

// ✅ Apply filter
class ApplyFilter extends HomeEvent {
  final String filter;
  const ApplyFilter(this.filter);

  @override
  List<Object?> get props => [filter];
}

// ✅ Report Lost pressed
class ReportLostPressed extends HomeEvent {}

// ✅ Report Found pressed
class ReportFoundPressed extends HomeEvent {}
