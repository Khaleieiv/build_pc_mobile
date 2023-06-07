import 'package:flutter/material.dart';

class CustomNoDataWidget extends StatelessWidget {
  final String text;

  const CustomNoDataWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 23),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
