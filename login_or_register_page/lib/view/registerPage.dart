import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/authviewModel.dart';
import '../widgts/myTextField.dart';

class RegisterPage extends StatefulWidget {

  final VoidCallback ontap;
  RegisterPage({required this.ontap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Authviewmodel authviewmodel=Provider.of<Authviewmodel>(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const  Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
             const  Text(
                'Please fill in the details to create an account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
             const  SizedBox(height: 40),
              MyTextField(
                controller: authviewmodel.nameController,
                hintText: 'Name',
                icon: Icons.person,
                obscureText: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: authviewmodel.emailController,
                hintText: 'Email',
                icon: Icons.email,
                obscureText: false,
              ),
              SizedBox(height: 20),
              MyTextField(
                controller: authviewmodel.passwordController,
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 20),
              MyTextField(
                controller: authviewmodel.confirmPasswordController,
                hintText: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Kayıt işlemi burada gerçekleştirilecek
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child:const  Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      widget.ontap();
                    },
                    child:const  Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
