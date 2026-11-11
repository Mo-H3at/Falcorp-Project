import 'package:flutter/material.dart';

class FullNameDialog extends StatefulWidget {
  const FullNameDialog({super.key,required this.currentFullName});

  final String currentFullName;

  @override
  State<FullNameDialog> createState() => _FullNameDialogState();
}

class _FullNameDialogState extends State<FullNameDialog> {

  late var currentFullName = widget.currentFullName;
  late final TextEditingController _fullNameController ;
  late final FocusNode _fullNameFocusNode;

  @override
  void initState() {
    _fullNameController = TextEditingController();
    _fullNameController.text = currentFullName;
    _fullNameFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _fullNameFocusNode.dispose();
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
            const Text('Change Full Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _fullNameController,
              focusNode: _fullNameFocusNode,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'New Full Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentFullName = _fullNameController.text;
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