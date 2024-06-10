import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownMenu].

// const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropDownAtom extends StatelessWidget {
  final List<String> options;

  const DropDownAtom({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return DropdownMenuWidget(
      options: options,
    );
  }
}

class DropdownMenuWidget extends StatefulWidget {
  final List<String> options;

  const DropdownMenuWidget({super.key, required this.options});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: widget.options.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          widget.options.first = value!;
        });
      },
      dropdownMenuEntries:
          widget.options.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
