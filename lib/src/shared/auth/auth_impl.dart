import 'package:store_challenge/src/shared/auth/auth_interface.dart';
import 'package:store_challenge/src/shared/interfaces/local_storage_interface.dart';

class AuthLocalImpl implements IAuth {
  final ILocalStorage storage;

  AuthLocalImpl(this.storage);

  @override
  Future<bool> authEmailAndPassword(
      {required String login, required String password}) async {
    Future.delayed(Duration(seconds: 1));
    if (login == 'robson@gmail.com' && password == '123') {
      storage.put('login', login);
      storage.put('password', password);
      return true;
    }
    return false;
  }

  @override
  Future<bool> authLocalStorage() async {
    var _login = await storage.get('login');
    var _password = await storage.get('password');

    if (_login != null && _password != null) {
      return authEmailAndPassword(login: _login, password: _password);
    }

    return false;
  }
}
