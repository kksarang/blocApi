import 'package:equatable/equatable.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  List<Object> get props => [];
}

class GetExampleList extends ExampleEvent {}
