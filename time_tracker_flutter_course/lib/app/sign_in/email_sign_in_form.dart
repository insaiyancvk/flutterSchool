import 'package:flutter/material.dart';

import 'common_widgets/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {
  void _submit() {
    // TODO: print email and password
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
          decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'abc@xyz.com',
      )),
      SizedBox(height: 8.0),
      TextField(
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true),
      SizedBox(height: 8.0),
      FormSubmitButton(
        text: ('Sign In'),
        onPressed: () {},
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
