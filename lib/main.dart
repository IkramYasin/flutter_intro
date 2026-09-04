// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const register_screen(title: 'Register Page'),
      // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
      else {
        // Optionally, you can show a message or handle the case when the counter is already at 0.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Counter cannot go below 0')),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 0, 73, 157),
        // Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 174, 255),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:',
                style: TextStyle(color: Colors.white)),
            Text(
              '$_counter',
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 30),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
      
    );
  }
}

class initial_screen extends StatefulWidget {
  const initial_screen({super.key, required this.title});

  final String title;

  @override
  State<initial_screen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<initial_screen> {
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
                          MaterialPageRoute(builder: (context) => const register_screen(title: 'Register Page')),
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


class register_screen extends StatefulWidget {
  const register_screen({super.key, required this.title});

  final String title;

  @override
  State<register_screen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<register_screen> {
  bool isChecked = true; // Variable to track checkbox state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
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
                 SizedBox(height: 25),
                 
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                  ),
                  const SizedBox(height: 15),
              
                  Text('Welcome! Please Register', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  
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
              
                  const SizedBox(height: 15),
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
              
                  const SizedBox(height: 15),
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
          
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      hintText: 'Enter your password again',
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    obscureText: true,
                  ),
          
                  CheckboxListTile(
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("I agree to the ", style: TextStyle(color: Colors.white, fontSize: 16)),
                        TextButton(
                          onPressed: () {},
                          child: Text("Terms and Conditions", style: TextStyle(color: Colors.white, fontSize: 16, decoration: TextDecoration.underline)),
                        ),
                      ],
                    ),
                    value: isChecked, 
                    onChanged: (bool? value) {
                      setState(() {
                        // Handle checkbox state change
                        isChecked = value ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),          
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      // Handle register button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 73, 157),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(double.infinity, 50), // Make the button full width
                    ),
                    child: const Text('Register', style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
          
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: const TextStyle(color: Colors.white, fontSize: 16)),
                      TextButton(
                        onPressed: () {
                          // Navigate to the login screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const initial_screen(title: 'Login Page')),
                          );
                        },
                        child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ],
                  ),
              
                ],
              ),
            ),
        ),
      )
    );
  }
}