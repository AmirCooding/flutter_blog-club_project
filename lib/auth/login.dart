import 'package:blog_club/auth/password.dart';
import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/main/MainScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: themeData.textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Sign in with your account',
          style: themeData.textTheme.bodyMedium!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Username')),
        ),
        const PasswordTextField(),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 60),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
          child: Text(
            'Login'.toUpperCase(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forgot your password?'),
            const SizedBox(
              width: 8,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Reset here'),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            'OR SIGN IN WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.google.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.facebook.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(width: 36, height: 36),
          ],
        )
      ],
    );
  }
}
