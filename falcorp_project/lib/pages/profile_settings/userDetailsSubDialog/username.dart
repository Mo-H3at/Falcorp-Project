import 'package:flutter/material.dart';

class UsernameDialog extends StatefulWidget {
  const UsernameDialog({super.key, required this.currentUsername});

  final String currentUsername;

  @override
  State<UsernameDialog> createState() => _UsernameDialogState();
}

class _UsernameDialogState extends State<UsernameDialog> {
  late var currentUsername = widget.currentUsername;
  late final TextEditingController _usernameController ;
  late final FocusNode _usernameFocusNode;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _usernameController.text = currentUsername;
    _usernameFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _usernameFocusNode.dispose();
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
            const Text('Change Username', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              focusNode: _usernameFocusNode,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'New Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentUsername = _usernameController.text;
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