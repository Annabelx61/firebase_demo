import 'package:flutter/material.dart';

import 'app_state.dart';
import 'src/widgets.dart';

class YesNoSelection extends StatelessWidget {
  const YesNoSelection(
      {super.key, required this.numberOfAttendees, required this.onSelection});
  final int numberOfAttendees;
  final void Function(int selection) onSelection;

  @override
  Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter number of attendees',
                  ),
                  onChanged: (context) {
                    final attendees = int.tryParse(context);
                    onSelection(attendees!);
                  }
                ),
              ),
              const SizedBox(width: 8),
              FilledButton(onPressed: () {
                onSelection(numberOfAttendees);
              }, 
              child: const Text('Ok')),
            ],
          ),
        );
    }
}