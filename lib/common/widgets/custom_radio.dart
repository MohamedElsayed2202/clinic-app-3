import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final Function(int?) onChange;

  const CustomRadio(
      {Key? key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 129,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title),
          Radio<int>(value: value, groupValue: groupValue, onChanged: onChange)
        ],
      ),
    );
  }
}
