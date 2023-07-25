import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateLogout()) {
    FirebaseAuth auth = FirebaseAuth.instance;

    on<AuthEventLogin>((event, emit) async {
      try {
        emit(AuthStateLoading());

        await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        emit(AuthStateLogin());
      } on FirebaseAuthException catch (e) {
        String message = '';

        if (e.code == 'user-not-found') {
          message = 'No User Found For That Email';
        } else if (e.code == 'wrong-password') {
          message = 'Wrong Password Provided For That User';
        } else {
          message = 'Sign In Failed';
        }

        emit(AuthStateError(message));
      } catch (e) {
        emit(AuthStateError(e.toString()));
      }
    });

    on<AuthEventLogout>((event, emit) async {
      try {
        emit(AuthStateLoading());

        await auth.signOut();

        emit(AuthStateLogout());
      } on FirebaseAuthException catch (e) {
        emit(AuthStateError(e.message.toString()));
      } catch (e) {
        emit(AuthStateError(e.toString()));
      }
    });
  }
}
