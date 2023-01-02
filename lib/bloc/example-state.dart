import 'package:equatable/equatable.dart';

import '../model/example-model.dart';

// part of 'invoice-bloc.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();

  List<Object> get props => [];
}

class CovidInital extends ExampleState {}

class CovidLoading extends ExampleState {}

class CovidLoaded extends ExampleState {
  final ApiResponse invoidPost;
  const CovidLoaded(this.invoidPost);
}

class CovidError extends ExampleState {
  final String? message;
  const CovidError(this.message);
}
