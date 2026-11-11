import 'package:flutter/material.dart';

class MobileNumberDialog extends StatefulWidget {
  const MobileNumberDialog({super.key, required this.currentMobileNumber});

  final String currentMobileNumber;

  @override
  State<MobileNumberDialog> createState() => _MobileNumberDialogState();
}

class _MobileNumberDialogState extends State<MobileNumberDialog> {

  late var currentMobileNumber = widget.currentMobileNumber;
  late final TextEditingController _mobileNumberController ;
  late final FocusNode _mobileNumberFocusNode;

  @override
  void initState() {
    _mobileNumberController = TextEditingController();
    _mobileNumberController.text = currentMobileNumber;
    _mobileNumberFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _mobileNumberController.dispose();
    _mobileNumberFocusNode.dispose();
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
            const Text('Change Mobile Number', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _mobileNumberController,
              focusNode: _mobileNumberFocusNode,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'New Mobile Number',
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