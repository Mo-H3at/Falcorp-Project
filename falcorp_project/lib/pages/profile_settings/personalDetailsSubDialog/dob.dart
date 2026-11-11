import 'package:flutter/material.dart';

class DateOfBirthDialog extends StatefulWidget {
  const DateOfBirthDialog({super.key,required this.currentDateOfBirth});

  final String currentDateOfBirth;

  @override
  State<DateOfBirthDialog> createState() => _DateOfBirthDialogState();
}

class _DateOfBirthDialogState extends State<DateOfBirthDialog> {
  late var currentDateOfBirth = widget.currentDateOfBirth;
  late final TextEditingController _dateOfBirthController ;
  late final FocusNode _dateOfBirthFocusNode;

  @override
  void initState() {
    _dateOfBirthController = TextEditingController();
    _dateOfBirthController.text = currentDateOfBirth.toString();
    _dateOfBirthFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _dateOfBirthController.dispose();
    _dateOfBirthFocusNode.dispose();
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
            const Text('Change Date of Birth', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _dateOfBirthController,
              focusNode: _dateOfBirthFocusNode,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'New Date of Birth',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentDateOfBirth = _dateOfBirthController.text;
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