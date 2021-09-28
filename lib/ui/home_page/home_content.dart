import 'package:flutter/material.dart';

import '/ui/create_note_page/create_note_page.dart';
import '/dummy_data/data.dart';
import '/models/note.dart';
import '/widgets/note_item.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        //data
        Note data = Data().getData().elementAt(index);
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CreateNotePage(
                    note: data,
                  );
                },
              ),
            );
          },
          child: NoteItem(
            noteTitle: data.getNoteTitle() ?? "",
            noteContent: data.getNoteContent() ?? "",
          ),
        );
      },
      itemCount: Data().getData().length,
    );
  }
}
