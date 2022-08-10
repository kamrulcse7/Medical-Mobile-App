import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    Key? key,
    required this.ontap,
    this.text,
    this.textColor,
    this.bgColor,
  }) : super(key: key);
  final VoidCallback ontap;
  final Color? bgColor;
  final String? text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 40.0,
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -22,
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 40.0,
                  // color: Color(0xFF0052A6),
                  color: bgColor,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "$text",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
