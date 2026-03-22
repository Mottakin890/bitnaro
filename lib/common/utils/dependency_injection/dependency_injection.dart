import 'package:bitnaro/presentation/auth/bloc/auth_bloc.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_bloc.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

class DependencyInjection {
  static Future<void> init() async {
    //blocs
    sl.registerFactory(SplashBloc.new);
    sl.registerFactory(ChooseAccountTypeBloc.new);
    sl.registerFactory(AuthBloc.new);
  }
}
