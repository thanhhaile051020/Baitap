import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final String validateText;
  const InputWidget(
      {Key? key, required this.hintText, required this.validateText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(Dimensions.roundDynamic(15)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          )),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return validateText;
        }
        return null;
      },
    );
  }
}
