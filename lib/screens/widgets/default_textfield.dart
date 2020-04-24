import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digital_wallet/shared/styles.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:digital_wallet/size_config.dart';

class DefaultTextField extends StatefulWidget {
  final String initialValue;
  final String labelText;
  final String hintText;
  final fieldStyle;
  final bool inline;
  final String prefixText;
  final inputFormatters;
  final contentPadding;
  final keyboardType;
  bool obscureText;
  final Function onChanged;
  final bool autofocus;
  bool wrong;
  Icon prefixIcon;
  Function validator;
  final TextEditingController controller;
  final TextStyle style;

  DefaultTextField({
    this.labelText,
    this.hintText,
    this.fieldStyle,
    this.inline = false,
    this.prefixText,
    this.inputFormatters,
    this.contentPadding,
    this.keyboardType,
    this.obscureText,
    @required this.onChanged,
    this.initialValue,
    this.autofocus = false,
    this.wrong = false,
    this.prefixIcon,
    this.validator, this.controller, this.style
  });

  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  Color colorBorder(){
    if(widget.obscureText != null) {
      if (widget.obscureText && widget.wrong) {
        return Colors.red;
      } else {
        return Colors.blue;
      }
    }else {
      return Colors.blue;
    }
  }

  @override

  @override
  Widget build(BuildContext context) {
    return widget.inline
        ? TextFormField(
            controller: widget.controller,
            autofocus: widget.autofocus,
            initialValue: widget.initialValue,
            obscureText:
                widget.obscureText != null ? widget.obscureText : false,
            keyboardType: widget.keyboardType,
            maxLines: 1,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText != null
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.obscureText = !widget.obscureText;
                        });
                      },
                      child: Icon(widget.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off))
                  : null,
              focusedBorder: UnderlineInputBorder(
                  borderSide: widget.wrong? BorderSide(color: Colors.red) : BorderSide(color: Colors.blue)),
              hintStyle: kHintText,
              labelStyle: kLabelText,
              labelText: widget.labelText,
              hintText: widget.hintText,
            ),
          )
        : TextFormField(
            style: widget.style,
            controller: widget.controller,
            validator: widget.validator,
            onChanged: widget.onChanged,
            autofocus: widget.autofocus,
            initialValue: widget.initialValue,
            obscureText:
                widget.obscureText != null ? widget.obscureText : false,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffix: widget.obscureText != null
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.obscureText = !widget.obscureText;
                        });
                      },
                      child: Icon(widget.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off))
                  : null,
              contentPadding: widget.contentPadding,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorBorder(),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //borderSide: BorderSide.none,
              ),
              hintStyle: kHintText,
              labelStyle: kLabelText,
              labelText: widget.labelText,
              hintText: widget.hintText,
              prefixText: widget.prefixText,
              prefixStyle: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5 , color: Colors.grey),
            ),
          );
  }
}
