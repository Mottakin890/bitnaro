import 'package:equatable/equatable.dart';

enum AccountType { initial, user, service }

final class ChooseAccountTypeState extends Equatable {
  final AccountType selectedAccountType;

  const ChooseAccountTypeState({
    this.selectedAccountType = AccountType.initial,
  });

  ChooseAccountTypeState copyWith({AccountType? selectedAccountType}) {
    return ChooseAccountTypeState(
      selectedAccountType: selectedAccountType ?? this.selectedAccountType,
    );
  }

  @override
  List<Object?> get props => [selectedAccountType];
}
