// ignore: file_names
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 146, 104), // <-- Добавлено здесь
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset('images/peaple Welcome.png', 
                  fit: BoxFit.cover,
                  width: double.infinity, // <-- Добавлено для полной ширины
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 450,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 158, 146, 104),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          'Welcome to "our \n plans"!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 36,
                          ),
                        ),
                        SizedBox(height: 50,),
                        SizedBox(
                          width: 260,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                255,
                                217,
                                217,
                                217,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/googleLogo.png',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 50),
                                Text('Google', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 260,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                255,
                                217,
                                217,
                                217,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.people),
                                SizedBox(width: 50),
                                Text('Sign in', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('don`t have an account?', 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: (){}, 
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 114, 47, 20),
                                  fontSize: 15
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
