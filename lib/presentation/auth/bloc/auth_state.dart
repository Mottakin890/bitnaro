import 'package:equatable/equatable.dart';

enum AuthStatus { initial, loading, success, failure }

enum AuthFlow { login, signup }

enum AccountType { user, service }

final class AuthState extends Equatable {
  final AuthStatus status;
  final AuthFlow flow;
  final AccountType accountType;
  final String? errorMessage;

  final bool isAgreed;

  const AuthState({
    this.status = AuthStatus.initial,
    this.flow = AuthFlow.login,
    this.accountType = AccountType.user,
    this.isAgreed = false,
    this.errorMessage,
  });

  AuthState copyWith({
    AuthStatus? status,
    AuthFlow? flow,
    AccountType? accountType,
    String? errorMessage,
    bool? isAgreed,
  }) {
    return AuthState(
      status: status ?? this.status,
      flow: flow ?? this.flow,
      accountType: accountType ?? this.accountType,
      errorMessage: errorMessage ?? this.errorMessage,
      isAgreed: isAgreed ?? this.isAgreed,
    );
  }

  @override
  List<Object?> get props => [
    status,
    flow,
    accountType,
    errorMessage,
    isAgreed,
  ];
}
