import 'package:flutter/cupertino.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoFormSection.insetGrouped(
            header: const Text('Login'),
            children: [
              CupertinoTextFormFieldRow(
                prefix: const Text('Email address:'),
                placeholder: 'enter email',
                keyboardType: TextInputType.emailAddress,
                decoration: BoxDecoration(),
              ),
              CupertinoTextFormFieldRow(
                prefix: const Text('Username'),
              ),
              CupertinoTextFormFieldRow(
                obscureText: true,
                prefix: const Text('Password'),
              ),
              CupertinoButton(
                child: const Text('Login'),
                onPressed: () {},
              ),
              CupertinoButton.filled(
                child: const Text('Create new account'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
