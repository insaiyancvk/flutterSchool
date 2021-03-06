import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'custom_raised_buttons.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          height: 44.0,
          color: Colors.indigo,
          borderRaidus: 4.0,
          onPressed: onPressed,
        );
}
