import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  Widget build(BuildContext context) {

    Future signIn() async{
      try {
        print(emailcontroller.text.trim());

        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        print('Login Failed');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Invalid Credentials"),
        ));
      }
    }

    @override
    void dispose() {
      emailcontroller.dispose();
      passwordcontroller.dispose();

      super.dispose();
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Login / SignUp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/loginback.jpeg"),
              fit: BoxFit.fill,
            )
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: emailcontroller,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(labelText: 'Email',
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,

                  decoration: InputDecoration(labelText: 'Password',
                    hintText: 'Enter your Password',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(

                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),

                ),
                icon: Icon(Icons.lock_open, size: 22),
                label: Text(
                  'Login / Sign In',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: signIn,
              ),

            ],
          ),
        )
    );
  }
}