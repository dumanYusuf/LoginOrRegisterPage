import 'package:flutter/cupertino.dart';

class Authviewmodel with ChangeNotifier{

  final TextEditingController _emailControllerlogin = TextEditingController();
  TextEditingController get emailControllerlogin => _emailControllerlogin;
  final TextEditingController _passwordControllerlogin = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController get passwordControllerlogin => _passwordControllerlogin;
  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
}