import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/button_atom.dart';
import 'package:home_page/atoms/status/small_text_atom.dart';
import 'package:home_page/atoms/status/status_atom.dart';
import 'package:home_page/atoms/tag/tag_atom.dart';
import 'package:home_page/atoms/text/date_text.dart';
import 'package:home_page/atoms/textfields/text_fields_atom.dart';
import 'package:home_page/atoms/title/title_atom.dart';

class ProjectWorkListsItemMolecule extends StatelessWidget {
  final String title;

  const ProjectWorkListsItemMolecule({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                // title atom
                TitleAtom(title: title,), // fixme: work.TitleInfo
                const Row(
                  children: [
                    // fixme: iterator by work.Tags { icon_url:"", text:"", action:()=>{} }
                    TagAtom()
                  ],
                )
              ],
            ),
            const Row(
              children: [
                DateText(),
                Row(
                  children: [StatusAtom(), SmallTextAtom()],
                )
              ],
            )
          ],
        ),
        const TextFieldsAtom(),
        // todo: <<actor: only admin>>
        const Column(
          children: [
            TextFieldsAtom(),
            Row(
              children: [
                // fixme: Work.Action.[]
                ButtonAtom(),
                ButtonAtom()
              ],
            )
          ],
        )
      ],
    );
  }
}
