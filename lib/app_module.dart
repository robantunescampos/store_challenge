import 'package:flutter_modular/flutter_modular.dart';
import 'package:store_challenge/src/features/login/login_module.dart';
import 'package:store_challenge/src/shared/auth/auth_impl.dart';
import 'package:store_challenge/src/shared/auth/auth_interface.dart';

import 'src/shared/services/shared_local_storage_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAuth>((i) => AuthLocalImpl(i())),
        Bind((i) => SharedLocalStorageService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/login', module: LoginModule()),
      ];
}
