import 'package:flutter/material.dart';

class PasswordDialog extends StatefulWidget {
  const PasswordDialog({super.key,required this.currentPassword});

  final String currentPassword;

  @override
  State<PasswordDialog> createState() => _PasswordDialogState();
}

class _PasswordDialogState extends State<PasswordDialog> {

  late var currentPassword = widget.currentPassword;
  late final TextEditingController _passwordController ;
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _passwordController.text = currentPassword;
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordFocusNode.dispose();
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
              const Text('Change Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
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