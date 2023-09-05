import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'auth_bloc.dart';
import 'auth_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepository(FirebaseAuth.instance));
  getIt
      .registerLazySingleton<AuthBloc>(() => AuthBloc(getIt<AuthRepository>()));
}
