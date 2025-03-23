import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 158, 146, 104),
              Color.fromARGB(255, 132, 89, 44),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  SizedBox(width: 85),
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        _buildTextField('Username'),
                        const SizedBox(height: 100),
                        _buildTextField('Email'),
                        const SizedBox(height: 100),
                        _buildTextField('Password', isPassword: true),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 250,
                  left: 90,
                  right: 90,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 132, 89, 44),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField(String hint, {bool isPassword = false}) {
  return SizedBox(
    height: 75,
    width: 370,
    child: TextField(
      style: TextStyle(color: Colors.white),
      obscureText: isPassword,
      decoration: InputDecoration(
        border: InputBorder.none,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}
