import 'package:store_challenge/src/shared/auth/auth_interface.dart';

class LoginController {
  final IAuth auth;

  LoginController(this.auth);

  Future<bool> authEmailAndPassword(
      {required String login, required String password}) async {
    print(await auth.authEmailAndPassword(login: login, password: password));
    return auth.authEmailAndPassword(login: login, password: password);
  }

  Future<bool> isAuthenticatedLocalStorage() async {
    await Future.delayed(Duration(seconds: 3));
    var isAuthenticatedLocalStorage = await auth.authLocalStorage();

    if (isAuthenticatedLocalStorage) {
      return true;
    }
    print('Tela de login');
    return false;
  }
}
