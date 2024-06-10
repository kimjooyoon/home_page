import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/button_atom.dart';
import 'package:home_page/atoms/status/small_text_atom.dart';
import 'package:home_page/atoms/status/status_atom.dart';
import 'package:home_page/atoms/tag/tag_atom.dart';
import 'package:home_page/atoms/text/date_text.dart';
import 'package:home_page/atoms/textfields/text_fields_atom.dart';
import 'package:home_page/atoms/title/title_atom.dart';

class ProjectWorkListsItemMolecule extends StatelessWidget {
  const ProjectWorkListsItemMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                // title atom
                TitleAtom(), // fixme: work.TitleInfo
                Row(
                  children: [
                    // fixme: iterator by work.Tags { icon_url:"", text:"", action:()=>{} }
                    TagAtom()
                  ],
                )
              ],
            ),
            Row(
              children: [
                DateText(),
                Row(
                  children: [StatusAtom(), SmallTextAtom()],
                )
              ],
            )
          ],
        ),
        TextFieldsAtom(),
        // todo: <<actor: only admin>>
        Column(
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
