import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeInput extends StatelessWidget {
  const AdaptativeInput({
    super.key,
    required this.controller,
    required this.onSubmitted,
    required this.label,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final Function(String) onSubmitted;
  final TextInputType? keyboardType;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: controller,
              onChanged: onSubmitted,
              keyboardType: keyboardType,
              placeholder: label,
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            keyboardType: keyboardType,
            decoration: InputDecoration(labelText: label),
          );
  }
}
