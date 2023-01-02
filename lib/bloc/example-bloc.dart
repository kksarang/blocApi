import 'package:bloc/bloc.dart';

import '../resources/api-repository.dart';
import 'example-event.dart';
import 'example-state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc(super.initialState);
  final ApiRepository _apiRepository = ApiRepository();

//   on < GetExampleList >((event, emit) async {
//
//     try{
//   emit(ExampleLoading());
//   final ExampleList = await _apiRepository.fetchExampleList();
//   emit(ExampleLoaded(ExampleList));
//
//   if(InvoiceList.error != null){
//
//     emit(ExampleError(ExampleList.error));
//   }
//   }
//
//   on NetworkError {
// emit(const ExampleError("Failed network issues"))
//   }
//
// });

}
