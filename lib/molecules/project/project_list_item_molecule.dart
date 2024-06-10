import 'package:flutter/material.dart';
import 'package:home_page/atoms/title/title_atom.dart';

class ProjectListItemMolecule extends StatelessWidget {
  final String title;
  
  const ProjectListItemMolecule({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TitleAtom(title: title);
  }

}

