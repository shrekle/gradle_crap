import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradle_crap/features/auth/repository/auth_repository.dart';
import 'package:gradle_crap/core/utils.dart';
import 'package:gradle_crap/models/user_model.dart';

//this one is used in the signInWithGoogle() func of the controller class
//to keep track of the current user
final userProvider = StateProvider<UserModel?>((ref) => null);

// StateNotifier & StateNotifierProvider work together
final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    ref: ref,
  ),
);

final authStateChangeProvider = StreamProvider((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.authStateChange;
});

final getUserDataProvider = StreamProvider.family((ref, String uid) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.getUserData(uid);
});
//
//
//
//
//

//its called stateNotifier cuz it notifies when there is a change in state to
// providers or widgets listening to it
class AuthController extends StateNotifier<bool> {
  AuthController({required AuthRepository authRepository, required Ref ref})
      : _authRepository = authRepository,
        _ref = ref, //this is the ref coming from the authControllerProvider
        super(
            false); //loading starting value is set to be false, cuz it starts later

  final AuthRepository _authRepository;
  final Ref _ref;

  Stream<User?> get authStateChange => _authRepository.authStateChange;

  signInWithGoogle(BuildContext context) async {
    state = true; //signifies that it is loading while it signs in
    final user = await _authRepository.signInWithGoogle();
    state = false;
    user.fold(
        (l) => showSnackBar(context, l.message),
        (userModel) =>
            _ref.read(userProvider.notifier).update((state) => userModel));
  }

  Stream<UserModel> getUserData(String uid) {
    return _authRepository.getUserData(uid);
  }
}
