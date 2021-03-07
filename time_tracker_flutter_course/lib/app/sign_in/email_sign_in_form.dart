import 'package:flutter/material.dart';

import 'common_widgets/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  String email;

  void _submit() {
    // TODO: print email and password
    print(
        "email: ${_emailcontroller.text} \n password: ${_passwordcontroller.text}");
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
        controller: _emailcontroller,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'abc@xyz.com',
        ),
        onChanged: (value) => email = value,
      ),
      SizedBox(height: 8.0),
      TextField(
          controller: _passwordcontroller,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true),
      SizedBox(height: 8.0),
      FormSubmitButton(
        text: ('Sign In'),
        onPressed: _submit,
      ),
      SizedBox(height: 8.0),
      FlatButton(
        child: Text('Need an account? Register'),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
