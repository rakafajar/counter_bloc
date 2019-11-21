import 'package:bloc/bloc.dart';

enum CounterEvent { incerement, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  // inialState awal kondisi kektikan aplikasi di running
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.incerement:
        yield state + 1;
        break;
      default:
    }
  }
}
