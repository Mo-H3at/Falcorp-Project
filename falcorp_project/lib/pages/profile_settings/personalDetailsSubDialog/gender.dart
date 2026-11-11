import 'package:flutter/material.dart';

class GenderDialog extends StatefulWidget {
  const GenderDialog({super.key, required this.currentGender});

  final String currentGender;

  @override
  State<GenderDialog> createState() => _GenderDialogState();
}

class _GenderDialogState extends State<GenderDialog> {

late var currentGender = widget.currentGender;
  late final TextEditingController _genderController ;
  late final FocusNode _genderFocusNode;

  @override
  void initState() {
    _genderController = TextEditingController();
    _genderController.text = currentGender;
    _genderFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _genderController.dispose();
    _genderFocusNode.dispose();
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
            const Text('Change Gender', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _genderController,
              focusNode: _genderFocusNode,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'New Gender',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentGender = _genderController.text;
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