import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await 1.seconds.delay();
      await _loginService.login();
      loading(false);
      message(MessageModel.info(title: 'Sucesso', message: 'Login sucesso'));
    } on Exception catch (e, s) {
      loading(false);
      print(e);
      print(s);
      message(MessageModel.error(
          title: 'Login Error', message: 'Erro ao realizar o login'));
    }
  }
}
