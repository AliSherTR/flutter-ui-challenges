import 'package:flutter/material.dart';
import 'package:flutter_ui_challange/challenge_1/sign_up_one.dart';
import 'package:flutter_ui_challange/common/widgets/app_button.dart';
import 'package:flutter_ui_challange/common/widgets/form_divider.dart';
import 'package:flutter_ui_challange/common/widgets/social_auth_button.dart';

class LoginOne extends StatelessWidget {
  const LoginOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // form header
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/logo.png",
                    width: 40,
                    height: 40,
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.error,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.red
                          : Colors.redAccent,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Logo Ipsum",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Sign in to your Account",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              Text(
                "Enter your Email and Password to Sign in",
                style: Theme.of(context).textTheme.labelSmall,
              ),

              // form body
              SizedBox(height: 40),
              Text("Email", style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text("Password", style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.blue[800],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: AAppButton(buttonText: "Sign In"),
              ),
              SizedBox(height: 20),

              // form footer
              const AFormDivider(text: "Or login with"),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ASocialButton(
                    text: "Login with Google",
                  imagePath: "assets/icons/google.png",
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ASocialButton(
                  text: "Login with facebook",
                  imagePath: "assets/icons/facebook.png",
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpOne(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.blue[800],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
