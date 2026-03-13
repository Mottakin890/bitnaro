import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_state.dart';
import 'package:equatable/equatable.dart';

sealed class ChooseAccountTypeEvent extends Equatable {
  const ChooseAccountTypeEvent();
}

final class AccountTypeSelectedEvent extends ChooseAccountTypeEvent {
  final AccountType accountType;
  const AccountTypeSelectedEvent(this.accountType);
  @override
  List<Object?> get props => [accountType];
}
