import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  Duration get loginTime =>
      Duration(milliseconds: 2250); // 2.25 seconds to wait
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sing In',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2699FB)),
                ),
                Row(
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 16, color: Color(0xff2699FB)),
                    ),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2699FB)),
                      ),
                      onPressed: () {
                        print('Sign up button pressed');
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      icon: Icon(Icons.email),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                    )),
              ],
            ),
            Column(children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Image(
                      image: AssetImage('assets/logos/gg.png'),
                    ),
                    Image(
                      image: AssetImage('assets/logos/fb.png'),
                    ),
                    Image(
                      image: AssetImage('assets/logos/tw.png'),
                    )
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Forgot password?',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2699FB)),
                      ),
                      TextButton(
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2699FB)),
                        ),
                        onPressed: () {
                          print('recover password');
                        },
                      )
                    ],
                  ))
            ]),
          ],
        ),
      )),
    );
  }
}