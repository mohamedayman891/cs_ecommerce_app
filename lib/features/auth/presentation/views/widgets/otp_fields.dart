import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OTPFields extends StatefulWidget {
  final int length;
  final void Function(String) onCompleted;

  const OTPFields({super.key, this.length = 4, required this.onCompleted});

  @override
  State<OTPFields> createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  late List<TextEditingController> controller;
  late List<FocusNode> focusNode;

  @override
  void initState() {
    super.initState();
    controller = List.generate(widget.length, (_) => TextEditingController());
    focusNode = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var c in controller) {
      c.dispose();
    }
    for (var f in focusNode) {
      f.dispose();
    }
    super.dispose();
  }

  void onChanged(String value, int index) {
    setState(() {});
    if (value.length == 1 && index < widget.length - 1) {
      focusNode[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      focusNode[index - 1].requestFocus();
    }

    // جمع القيم كلها
    String otp = controller.map((c) => c.text).join();
    if (otp.length == widget.length) {
      widget.onCompleted(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(widget.length, (index) {
        bool isFilled = controller[index].text.isNotEmpty;
        return Container(
          width: 64,
          height: 64,
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 10,
                child: Container(
                  width: 22,
                  height: 2,
                  color: isFilled
                      ? AppColors.secondaryColor
                      : AppColors.navyColor,
                ),
              ),
              TextField(
                controller: controller[index],
                focusNode: focusNode[index],
                onChanged: (value) => onChanged(value, index),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.only(bottom: 13),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
