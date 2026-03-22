import 'package:bitnaro/presentation/auth/bloc/auth_event.dart';
import 'package:bitnaro/presentation/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<ToggleAgreementEvent>(_onToggleAgreement);
    on<SignInRequestedEvent>(_onSignInRequested);
    on<SignUpRequestedEvent>(_onSignUpRequested);
  }

  void _onToggleAgreement(ToggleAgreementEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(isAgreed: event.isAgreed));
  }

  Future<void> _onSignInRequested(
    SignInRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading, accountType: event.accountType));
    // Mocking API call
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: AuthStatus.success));
  }

  Future<void> _onSignUpRequested(
    SignUpRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading, accountType: event.accountType));
    // Mocking API call
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: AuthStatus.success));
  }
}
