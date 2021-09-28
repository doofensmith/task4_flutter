import 'package:flutter/material.dart';

import '/models/note.dart';
import '/widgets/custom_text_field.dart';

class CreateNoteContent extends StatefulWidget {
  //attr Note
  Note? note;
  //constru
  CreateNoteContent({
    Key? key,
    this.note,
  }) : super(key: key);

  @override
  State<CreateNoteContent> createState() => _CreateNoteContentState();
}

class _CreateNoteContentState extends State<CreateNoteContent> {
  //form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //text controller
  TextEditingController controllerTitle = TextEditingController();
  TextEditingController controllerContent = TextEditingController();
  //

  @override
  Widget build(BuildContext context) {
    //controller text
    controllerTitle.text = widget.note?.getNoteTitle() ?? "";
    controllerContent.text = widget.note?.getNoteContent() ?? "";
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            CustomTextField(
              controller: controllerTitle,
              maxLines: 1,
              maxLength: 30,
              hintText: "Add title to your note",
              labelText: "Title",
              textCapitalization: TextCapitalization.words,
            ),
            CustomTextField(
              controller: controllerContent,
              hintText: "Write your note...",
              labelText: "Note",
              textCapitalization: TextCapitalization.sentences,
            ),
          ],
        ),
      ),
    );
  }
}
