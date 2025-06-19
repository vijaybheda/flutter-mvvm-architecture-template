import 'package:flutter/material.dart';

class ConformationAlertDialog extends StatefulWidget {
  final String title;
  final String subTitle;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const ConformationAlertDialog({
    super.key,
    required this.title,
    required this.subTitle,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  State<ConformationAlertDialog> createState() =>
      _ConformationAlertDialogState();
}

class _ConformationAlertDialogState extends State<ConformationAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      title: Text(widget.title),
      content: Text(widget.subTitle),
      actions: [
        TextButton(
          onPressed: widget.onCancel,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
          ),
          child: Text(widget.cancelButtonText),
        ),
        ElevatedButton(
          onPressed: widget.onConfirm,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Theme.of(context).colorScheme.error,
            ),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          ),
          child: Text(widget.confirmButtonText),
        ),
      ],
    );
  }
}
