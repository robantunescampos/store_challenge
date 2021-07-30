abstract class IAuth {
  Future<bool> authEmailAndPassword(
      {required String login, required String password});
  Future<bool> authLocalStorage();
}
