import 'package:flutter/material.dart';
import 'package:home_page/atoms/drop_down/drop_down_atom.dart';
import 'package:home_page/atoms/search/search_bar_atom.dart';

class ProjectSearchMolecule extends StatelessWidget {
  final List<String> options;

  const ProjectSearchMolecule({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // todo: search.Option
        DropDownAtom(options: options),
        const SearchBarAtom()
      ],
    );
  }
}
