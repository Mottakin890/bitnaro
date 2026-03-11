import 'package:bitnaro/presentation/splash/bloc/splash_event.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<AppStarted>(_counterTimer);
  }
  Future<void> _counterTimer(
    AppStarted event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(status: SplashStatus.loading));
    await Future<void>.delayed(const Duration(seconds: 2)).then((
      _,
    ) {
      emit(state.copyWith(status: SplashStatus.loaded));
    });
  }
}
