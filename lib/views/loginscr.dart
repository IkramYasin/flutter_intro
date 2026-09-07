// // ignore_for_file: camel_case_types, sized_box_for_whitespace

// import 'package:flutter/material.dart';
// import 'package:flutter_basics/views/registerscr.dart';

// class Login_Page extends StatefulWidget {
//   const Login_Page({super.key, required this.title});

//   final String title;

//   @override
//   State<Login_Page> createState() => _Login_PageState();
// }



// class _Login_PageState extends State<Login_Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Center(child: Text("Login Screen", style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
//         backgroundColor: const Color.fromARGB(255, 0, 73, 157),
//       ),
//       backgroundColor: const Color.fromARGB(255, 0, 57, 118),
//       body: Center(
//         child: Container(
//           height: 1000,
//           width: 700,
//           child: Card(
//             color: const Color.fromARGB(255, 0, 174, 255),
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Text('Welcome to the Initial Screen!', style: const TextStyle(color: Colors.white)),
//                SizedBox(height: 50),
               
//                 const CircleAvatar(
//                   radius: 100,
//                   backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
//                 ),
//                 const SizedBox(height: 25),
            
//                 Text('Welcome Back! Please Login to Continue', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
//                 const SizedBox(height: 25),
                
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: "Name",
//                     hintText: 'Enter your name',
//                     filled: true,
//                     fillColor: Color.fromARGB(255, 255, 255, 255),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                 ),
            
//                 const SizedBox(height: 25),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: "Email",
//                     hintText: 'Enter your email',
//                     filled: true,
//                     fillColor: Color.fromARGB(255, 255, 255, 255),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                 ),
            
//                 const SizedBox(height: 25),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: "Password",
//                     hintText: 'Enter your password',
//                     filled: true,
//                     fillColor: Color.fromARGB(255, 255, 255, 255),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                   obscureText: true,
//                 ),
            
            
//                 const SizedBox(height: 50),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 0, 73, 157),
//                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     minimumSize: const Size(double.infinity, 50), // Make the button full width
//                   ),
//                   child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16)),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Don't have an account?", style: const TextStyle(color: Colors.white, fontSize: 16)),
//                     TextButton(
//                       onPressed: () {
//                         // Navigate to the register screen
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const Register_Screen(title: 'Register Page')),
//                         );
//                       },
//                       child: const Text('Register', style: TextStyle(color: Colors.white, fontSize: 16)),
//                     ),
//                   ],
//                 ),
            
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: avoid_print, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_basics/views/registerscr.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key, required this.title});

  final String title;

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  // 1. Create text editing controllers to capture inputs
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 2. State variables to hold python-style error strings
  String? _nameError;
  String? _emailError;
  String? _passwordError;

  // 3. Isolated function called only on button click to handle custom validation rules
  void _validateAndSubmit() {
    // Reset all error displays first
    setState(() {
      _nameError = null;
      _emailError = null;
      _passwordError = null;
    });

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    bool isValid = true;
    String? localNameError;
    String? localEmailError;
    String? localPasswordError;

    // Validate Name Field
    if (name.isEmpty) {
      localNameError = 'Name field cannot be left blank';
      isValid = false;
    }

    // Validate Email Field
    if (email.isEmpty) {
      localEmailError = 'Email address cannot be blank';
      isValid = false;
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(email)) {
      localEmailError = 'Please enter a valid format (e.g. user@example.com)';
      isValid = false;
    }

    // Validate Password Field
    if (password.isEmpty) {
      localPasswordError = 'Password field cannot be blank';
      isValid = false;
    } else if (password.length < 6) {
      localPasswordError = 'Your security password must be at least 6 characters';
      isValid = false;
    }

    // 4. Update widget state with error variables if validation failed
    setState(() {
      _nameError = localNameError;
      _emailError = localEmailError;
      _passwordError = localPasswordError;
    });

    // 5. If everything evaluates cleanly, run the authentication tasks
    if (isValid) {
      print('Form input data is fully verified!');
      print('Name: $name, Email: $email');
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Successfully authenticated $name!')),
      );
    }
  }

  @override
  void dispose() {
    // Clear memory components when leaving the screen
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Login Screen",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold))),
        backgroundColor: const Color.fromARGB(255, 0, 73, 157),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 57, 118),
      body: Center(
        child: Container(
          height: 1000,
          width: 700,
          child: Card(
            color: const Color.fromARGB(255, 0, 174, 255),
            child: SingleChildScrollView( // Prevents bottom layout overflow on smaller layouts
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                  ),
                  const SizedBox(height: 25),
                  Text('Welcome Back! Please Login to Continue',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 25),
                  
                  // Name Field
                  TextFormField(
                    controller: _nameController, // Attached Controller
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: 'Enter your name',
                      errorText: _nameError, // Connected error text variable
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  
                  // Email Field
                  TextFormField(
                    controller: _emailController, // Attached Controller
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: 'Enter your email',
                      errorText: _emailError, // Connected error text variable
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  
                  // Password Field
                  TextFormField(
                    controller: _passwordController, // Attached Controller
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: 'Enter your password',
                      errorText: _passwordError, // Connected error text variable
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 50),
                  
                  // Login Button calls the custom validation function directly
                  ElevatedButton(
                    onPressed: _validateAndSubmit, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 73, 157),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register_Screen(
                                    title: 'Register Page')),
                          );
                        },
                        child: const Text('Register',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
