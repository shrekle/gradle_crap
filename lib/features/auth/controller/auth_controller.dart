import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradle_crap/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider(
  (ref) => AuthController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class AuthController {
  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final AuthRepository _authRepository;

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
