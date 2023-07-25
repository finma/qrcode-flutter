import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/bloc/auth/auth_bloc.dart';
import '/routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<AuthBloc>().add(AuthEventLogout());
        },
        child: const Icon(Icons.logout),
      ),
      body: Center(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthStateLogout) {
              context.goNamed(Routes.login);
            }
          },
          builder: (context, state) {
            if (state is AuthStateLoading) {
              return const CircularProgressIndicator();
            }

            return const Text(
              'Home Page',
              style: TextStyle(fontSize: 32),
            );
          },
        ),
      ),
    );
  }
}
