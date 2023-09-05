import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_repository.dart';

enum AuthStatus { initial, loading, authenticated, error }

class AuthBloc extends Cubit<AuthStatus> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthStatus.initial);

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      emit(AuthStatus.loading);
      await _authRepository.registerWithEmailAndPassword(email, password);
      emit(AuthStatus.authenticated);
    } catch (e) {
      emit(AuthStatus.error);
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      emit(AuthStatus.loading);
      await _authRepository.signInWithEmailAndPassword(email, password);
      emit(AuthStatus.authenticated);
    } catch (e) {
      emit(AuthStatus.error);
    }
  }
}
