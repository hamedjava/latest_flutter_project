import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, required this.title, required this.controller});
  final String title;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
              style: const TextStyle(color: Color.fromARGB(255, 34, 27, 27)),
              controller: widget.controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Something';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                labelText: widget.title,
                floatingLabelStyle:
                    const TextStyle(color: Color.fromARGB(221, 255, 30, 30)),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.account_circle),
                ),
                prefixIconColor: Colors.black87,
                enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 42, 36, 36))),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'example@gmail.com',
                helperStyle: const TextStyle(color: Colors.white),
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                hintStyle: const TextStyle(
                  color: Colors.black87,
                ),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
