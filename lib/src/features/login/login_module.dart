import 'package:flutter_modular/flutter_modular.dart';
import 'package:store_challenge/src/features/login/controllers/login_controller.dart';
import 'package:store_challenge/src/features/login/pages/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => LoginPage()),
      ];
}
