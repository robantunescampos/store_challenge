import 'package:store_challenge/src/shared/auth/auth_interface.dart';

class AuthGoogleImpl implements IAuth {
  @override
  Future<bool> authEmailAndPassword(
      {required String login, required String password}) {
    // TODO: implement authEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<bool> authLocalStorage() {
    // TODO: implement authLocalStorage
    throw UnimplementedError();
  }
}
