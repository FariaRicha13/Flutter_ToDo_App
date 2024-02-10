class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> toDoList() {
    return [
      ToDo(id: '03', todoText: 'Check Emails',),
      ToDo(id: '04', todoText: 'Clean MR',),
    ];
  }
}