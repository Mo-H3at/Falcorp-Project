import 'package:flutter/material.dart';

class EmailAddressDialog extends StatefulWidget {
  const EmailAddressDialog({super.key, required this.currentEmail});

  final String currentEmail;

  @override
  State<EmailAddressDialog> createState() => _EmailAddressDialogState();
}

class _EmailAddressDialogState extends State<EmailAddressDialog> {

  late var currentEmail = widget.currentEmail;
  late final TextEditingController _emailController ;
  late final FocusNode _emailFocusNode;

  @override
  void initState() {
    _emailController = TextEditingController();
    _emailController.text = currentEmail;
    _emailFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }   

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Change Email Address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              focusNode: _emailFocusNode,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'New Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentEmail = _emailController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}