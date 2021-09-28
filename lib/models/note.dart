class Note {
  //attribut
  String? _noteTitle;
  String? _noteContent;
  String? _timeStamp;

  Note(
    String? noteTitle,
    String? noteContent,
    String? timeStamp,
  ) {
    _noteTitle = noteTitle;
    _noteContent = noteContent;
    _timeStamp = timeStamp;
  }

  //getter and setter
  String? getNoteTitle() {
    return _noteTitle;
  }

  void setNoteTitle(String noteTitle) {
    _noteTitle = noteTitle;
  }

  String? getNoteContent() {
    return _noteContent;
  }

  void setNoteContent(String noteContent) {
    _noteContent = noteContent;
  }

  String? getTimeStamp() {
    return _timeStamp;
  }

  void setTimeStamp(String timeStamp) {
    _timeStamp = timeStamp;
  }
}
