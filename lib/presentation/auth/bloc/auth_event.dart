import 'package:bitnaro/presentation/auth/bloc/auth_state.dart';
import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

final class ToggleAgreementEvent extends AuthEvent {
  final bool isAgreed;

  const ToggleAgreementEvent(this.isAgreed);

  @override
  List<Object?> get props => [isAgreed];
}

final class SignInRequestedEvent extends AuthEvent {
  final String email;
  final String password;
  final AccountType accountType;

  const SignInRequestedEvent({
    required this.email,
    required this.password,
    required this.accountType,
  });

  @override
  List<Object?> get props => [email, password, accountType];
}

final class SignUpRequestedEvent extends AuthEvent {
  final String name;
  final String email;
  final String password;
  final AccountType accountType;

  const SignUpRequestedEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.accountType,
  });

  @override
  List<Object?> get props => [name, email, password, accountType];
}
