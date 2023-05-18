import 'package:flutter/material.dart';
import 'package:login/components/form_field.dart';
import 'package:login/components/button.dart';
import 'package:login/components/square_tile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your applicatio
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Login',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final usernameController = TextEditingController();
  final passWord = TextEditingController();
  MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // icon
              const Icon(
                Icons.person_2,
                size: 100,
              ),
              // welcome_text
              const Text(
                'Welcome to Our Page',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30,
                ),
              ),
              // user name field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyTextfield(
                  controller: usernameController,
                  hintText: 'UserName',
                  obscureText: false,
                ),
              ),
              // password field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyTextfield(
                  controller: passWord,
                  hintText: 'Enter Password',
                  obscureText: true,
                ),
              ),
              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Passwprd?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Button(),
              // or continue with
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 5,
                      ),
                    ),
                    Text('Or Cotinue With'),
                    Expanded(
                      child: Divider(
                        thickness: 5,
                      ),
                    ),
                  ],
                ),
              ),
              // google or facebook sign-in
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Square(imagePath: 'lib/images/download_google.png'),
                  const SizedBox(width: 8.0),
                  Square(imagePath: 'lib/images/download_facebook.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
