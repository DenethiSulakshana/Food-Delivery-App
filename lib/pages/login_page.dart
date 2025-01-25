import 'package:flutter/material.dart';
import 'package:futter_food/Components/my_button.dart';
import 'package:futter_food/Components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {  // Change to StatefulWidget
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage>{
  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login(){
    /*
    fill out authentication here..
     */

    // navigate to the home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> const HomePage(),
      ),
    );
  }




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
            Text("Taste Treasures Food delivery app",
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


      //sign in button
            MyButton(
                text: "Sign In",
                onTap: login,
            ),

            const SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
                ),

                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap ,
                  child: Text(
                    "Register now",
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