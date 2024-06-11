import 'package:flutter/material.dart';
import 'package:home_page/atoms/title/title_atom.dart';

class ProjectListItemMolecule extends StatelessWidget {
  final String title;
  final VoidCallback onClick;

  const ProjectListItemMolecule(
      {super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onClick(), child: TitleAtom(title: title));
  }
}
