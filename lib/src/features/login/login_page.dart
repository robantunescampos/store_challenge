import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:store_challenge/src/features/login/login_model.dart';
import 'package:store_challenge/src/shared/widgets/custom_button.dart';
import 'package:store_challenge/src/shared/widgets/custom_field.dart';
import 'package:store_challenge/src/shared/services/shared_local_storage_service.dart';

import 'controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoad = true;

  void loading(bool value) {
    setState(() {
      isLoad = value;
    });
  }

  void isAuthenticated() async {
    controller.isAuthenticatedLocalStorage().then((bool value) {
      if (value) {
        try {
          Modular.to
              .pushNamed('/login/teste')
              .then((_) => loading(false))
              .catchError((error) {
            log('[erro] modular');
          });
        } catch (e) {
          log('[erro] $e');
        }
      } else {
        loading(false);
      }
    }).catchError((error) {
      log('[erro] $error');
      loading(false);
    });
  }

  @override
  void initState() {
    isAuthenticated();
    loginController.clear();
    passwordController.clear();
    super.initState();
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoad
            ? CircularProgressIndicator()
            : SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomField(
                        hintText: 'Login',
                        labelText: 'Login',
                        controller: loginController,
                        obscureText: false,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.02),
                      CustomField(
                        hintText: 'Senha',
                        labelText: 'Senha',
                        controller: passwordController,
                        obscureText: true,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.02),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CustomButton(
                          function: () async {
                            if (_formKey.currentState!.validate()) {
                              var isAuthenticated =
                                  await controller.authEmailAndPassword(
                                      login: loginController.text,
                                      password: passwordController.text);

                              if (isAuthenticated) {
                                print('Próxima tela');
                              } else {
                                print('credenciais inválidas');
                              }
                            }
                          },
                          text: 'Entrar',
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
