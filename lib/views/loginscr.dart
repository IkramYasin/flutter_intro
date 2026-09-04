// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_basics/views/registerscr.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key, required this.title});

  final String title;

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Login Screen", style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
        backgroundColor: const Color.fromARGB(255, 0, 73, 157),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 57, 118),
      body: Center(
        child: Container(
          height: 1000,
          width: 700,
          child: Card(
            color: const Color.fromARGB(255, 0, 174, 255),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text('Welcome to the Initial Screen!', style: const TextStyle(color: Colors.white)),
               SizedBox(height: 50),
               
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                ),
                const SizedBox(height: 25),
            
                Text('Welcome Back! Please Login to Continue', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: 'Enter your name',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
            
                const SizedBox(height: 25),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
            
                const SizedBox(height: 25),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: 'Enter your password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  obscureText: true,
                ),
            
            
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 73, 157),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Make the button full width
                  ),
                  child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: const TextStyle(color: Colors.white, fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        // Navigate to the register screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register_Screen(title: 'Register Page')),
                        );
                      },
                      child: const Text('Register', style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
