import 'package:flutter/material.dart';


class YesNoSelection extends StatefulWidget {
  const YesNoSelection(
      {super.key, required this.onSelection, required this.currentAttendees});

  final void Function(int selection) onSelection;
  final int currentAttendees;

  @override
  _YesNoSelectionState createState() => _YesNoSelectionState();
}

class _YesNoSelectionState extends State<YesNoSelection> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter number of attendees',
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              final attendees = int.tryParse(_controller.text);
              widget.onSelection(widget.currentAttendees + attendees!);
            }, 
          child: const Text('Ok')),
        ],
      ),
    );
  }
}