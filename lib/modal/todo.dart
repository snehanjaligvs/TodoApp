class Todo {
  String? id;
  String todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList(){
    return [
      Todo(id: '01', todoText: 'Exercise', isDone: true),
      Todo(id: '02', todoText: 'Collect my Order', isDone: true ),
      Todo(id: '03', todoText: 'Check Emails', ),
      Todo(id: '04', todoText: 'Work on project for 3 hr min', ),
      Todo(id: '05', todoText: 'Team meeting', ),
      Todo(id: '06', todoText: 'Walk with Baby', ),

      
    ];
  }
}
