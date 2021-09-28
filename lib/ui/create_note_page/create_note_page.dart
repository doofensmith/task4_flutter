import 'package:flutter/material.dart';

import '/models/note.dart';
import '/ui/create_note_page/create_note_content.dart';

class CreateNotePage extends StatelessWidget {
  //note
  Note? note;
  CreateNotePage({
    Key? key,
    this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Note Editor",
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.all(8),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: CreateNoteContent(
        note: note,
      ),
    );
  }
}
