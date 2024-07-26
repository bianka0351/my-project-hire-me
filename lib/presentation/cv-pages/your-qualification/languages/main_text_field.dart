import 'package:flutter/material.dart';

class MainTextFormField extends StatefulWidget {
  const MainTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.width,
      this.height,
      this.contentPadding,
      this.fillColor,
      this.borderColor,
      this.labelStyle,
      this.hintStyle,
      this.borderRadius,
      this.controller});
  final String? label;
  final String? hint;
  final double? width;
  final double? height;
  final EdgeInsets? contentPadding;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final BorderRadius? borderRadius;
  final TextEditingController? controller;
  @override
  State<StatefulWidget> createState() => _MainTextFormFieldState();
}

class _MainTextFormFieldState extends State<MainTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.sizeOf(context).width,
      height: widget.height ?? 50,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        controller: widget.controller,

        decoration: InputDecoration(

          contentPadding: widget.contentPadding,
          labelStyle: widget.labelStyle,
          label: widget.label == null ? null : Text(widget.label!),
          filled: true,
          fillColor: Color(0xff1b1b1b),
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
        ),
      ),
    );
  }
}
