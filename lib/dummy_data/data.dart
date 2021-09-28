import '/models/note.dart';

class Data {
  //attr
  List<Note> noteData = [];

  Data() {
    noteData = ([
      Note("asd", "asd", "asd"),
      Note("noteTitle", "noteContent", "timeStamp"),
      Note("test", "test\ntest", "timeStamp"),
    ]);
  }

  List<Note> getData() {
    return noteData;
  }

  void addData() {
    noteData.add(
      Note("noteTitle", "noteContent", "timeStamp"),
    );
  }
}
