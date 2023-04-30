import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldPassword extends StatefulWidget {
  CustomTextFieldPassword(
      {super.key, required this.title, required this.controller});
  final String title;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      width: width / 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: widget.controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Something';
                }

                // using regular expression
                if (!RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                    .hasMatch(value)) {
                  return "Please enter a valid password";
                }

                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.title,
                labelText: widget.title,
                floatingLabelStyle:
                    const TextStyle(color: Color.fromARGB(221, 255, 30, 30)),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.lock_open),
                ),
                prefixIconColor: Colors.black87,
                enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 31, 28, 28))),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'Hamed3267!',
                helperStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 34, 30, 30)),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
