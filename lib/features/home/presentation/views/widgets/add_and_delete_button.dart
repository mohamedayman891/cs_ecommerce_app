import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAndDeleteButton extends StatelessWidget {
  const AddAndDeleteButton({super.key, required this.isTrash, this.onTap});
  // final String text;
  final VoidCallback? onTap;
  final bool isTrash;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        decoration: BoxDecoration(
          color: Color(0xffD9E6FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: isTrash
              ? Icon(CupertinoIcons.trash, color: Colors.red)
              : Icon(Icons.add, color: Color(0xff3F80FF)),
        ),
      ),
    );
  }
}
