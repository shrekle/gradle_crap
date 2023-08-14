import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradle_crap/features/auth/controller/auth_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
//
//this one can be unwrapped from the begining cuz in order to come this home page
//having a user is required
    final user = ref.watch(userProvider)!;

    return Scaffold(
      body: Center(
        child: Text(user.name),
      ),
    );
  }
}
