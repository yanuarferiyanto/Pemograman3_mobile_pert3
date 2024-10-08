import 'package:flutter/material.dart';
import 'package:latian2/beranda.dart';
import 'signup.dart';

class LoginPageState extends StatefulWidget {
  @override
  State<LoginPageState> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageState> {
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();

  void _tampil(){
    String email=_emailController.text;
    String pass=_passwordController.text;

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Data Akun"),
        content: Text("Email: $email, password: $pass")
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),  // Ikon untuk email
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),   // Ikon untuk password
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Forget password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                            // _tampil();
                           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        },
                        
                          // _tampil();
                      
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('Login'),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  SignupScreen()),
                              );  
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Colors.orange),
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
      ),
    );
  }
}
