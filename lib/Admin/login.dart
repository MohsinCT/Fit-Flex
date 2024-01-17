// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, avoid_print, sort_child_properties_last
import 'package:fitflex_workout/Admin/Admin_home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdminLogin extends StatefulWidget {
  @override
  AdminLoginState createState() => AdminLoginState();
}

class AdminLoginState extends State<AdminLogin> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormFieldState> _nameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> _passform = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Admin',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Stack(children: [
          Image.asset(
            'assets/images/backgroundimg.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.7),
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    key: _nameKey,
                    onChanged: (value) {
                      _nameKey.currentState?.validate();
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Enter your E-mail',
                      labelStyle: TextStyle(color: Colors.white),

                      icon: Icon(Icons.email, color: Colors.white),
                      errorText: _nameKey.currentState?.hasError ?? false
                          ? 'invalid'
                          : null, // Add email icon
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    maxLength: 8,
                    key: _passform,
                    onChanged: (value) {
                      _passform.currentState?.validate();
                    },
                    controller: _passwordController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                    ],
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Icon(Icons.lock, color: Colors.white),
                      errorText: _passform.currentState?.hasError ?? false
                          ? 'invalid'
                          : null,
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // _login();
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => HomePage()));
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white, // Adjust color to fit the workout theme
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
  // bool isValidEmail(String email) {
  //   return RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(email);
  // }
  // bool isValidPassword(String password) {
  //   return password.length >= 8;
  // }

  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      String email = _emailController.text;
      String password = _passwordController.text;
      if (email == 'mohsin@gmail.com' && password == '1234') {
        print('Login successful');
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
      } else {
        print('Login failed');
        _nameKey.currentState?.validate();
        _passform.currentState?.validate();

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Incorrect E-mail and password'),
          backgroundColor: Colors.red,
        ));
      }
    }
  }
}
