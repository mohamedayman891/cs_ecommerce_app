import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAndDeleteButton extends StatelessWidget {
  const AddAndDeleteButton({
    super.key,
    required this.isTrash,
    this.onTap,
    required this.onChanged,
  });
  // final String text;
  final VoidCallback? onTap;
  final bool isTrash;
  final Function(int) onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
