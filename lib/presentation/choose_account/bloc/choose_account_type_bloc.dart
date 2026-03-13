import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_event.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseAccountTypeBloc
    extends Bloc<ChooseAccountTypeEvent, ChooseAccountTypeState> {
  ChooseAccountTypeBloc()
    : super(
        const ChooseAccountTypeState(selectedAccountType: AccountType.initial),
      ) {
    on<AccountTypeSelectedEvent>(_accountTypeSelection);
  }
  void _accountTypeSelection(
    AccountTypeSelectedEvent event,
    Emitter<ChooseAccountTypeState> emit,
  ) {
    if (state.selectedAccountType == event.accountType) {
      emit(state.copyWith(selectedAccountType: AccountType.initial));
    } else {
      emit(state.copyWith(selectedAccountType: event.accountType));
    }
  }
}
