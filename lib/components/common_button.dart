import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const CommonButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))),
          fixedSize: MaterialStateProperty.all(const Size(370, 70)),
          elevation: MaterialStateProperty.all(0)),
      child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}
