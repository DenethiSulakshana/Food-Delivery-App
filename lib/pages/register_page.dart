import 'package:flutter/material.dart';

import '../Components/my_button.dart';
import '../Components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();




  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),

                //msg app slogan
                Text("Let's create an account for you",
                  style:TextStyle(fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,),
                ),
                const SizedBox(height: 25),

                //email
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                MyTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ), //password

                //confirm password
                MyTextfield(
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  obscureText: true,
                ),



                //sign Up button
                MyButton(
                  text: "Sign Up",
                  onTap:(){},
                ),

                const SizedBox(height: 25),

                //already have an account? Login here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),

                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap ,
                      child: Text(
                        "Login now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        )
    );

  }
}
