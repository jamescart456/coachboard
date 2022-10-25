import 'package:flutter/material.dart';

import 'view.dart';

class RegisterPage extends StatelessWidget {
  static const route = '/register';

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: RegisterForm(),
      ),
    );
  }
}
