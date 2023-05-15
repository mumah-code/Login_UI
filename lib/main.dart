import 'package:flutter/material.dart';
import 'package:login/components/form_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  // text_editing controller
  //final usernameController = TextEditingController();
  final passWord = TextEditingController();
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
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Icons.login,
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
            MyTextfield(
              controller: TextEditingController(),
              hintText: 'UserName',
              obscureText: false,
            ),
          ],
        )

            // text_form_field
            //forgot passwprd
            //
            ),
      ),
    );
  }
}
