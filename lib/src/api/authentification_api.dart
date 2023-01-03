import 'package:firebase_auth/firebase_auth.dart';
import 'package:medchain/src/models/index.dart';

class AuthApi {
  Future<LoginUser?> getUser() async {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return null;
    } else {
      return LoginUser(uid: currentUser.uid, email: currentUser.email!, displayName: currentUser.displayName!);
    }
  }

  Future<LoginUser> createNewUser({
    required String email,
    required String password,
    required String displayName,
  }) async {
    final UserCredential credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final User user = credential.user!;
    await user.updateDisplayName(displayName);
    return LoginUser(uid: credential.user!.uid, email: email, displayName: displayName);
  }

  Future<LoginUser> login({required String email, required String password}) async {
    final UserCredential credential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    final User user = credential.user!;
    return LoginUser(email: email, uid: user.uid, displayName: user.displayName!);
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
