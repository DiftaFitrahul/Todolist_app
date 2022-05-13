import 'package:flutter/cupertino.dart';
import 'package:todolist_app2/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Kimetsu no yaiba",
      description: "Movie terbaru",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch One Piece",
      description: "Episode 1000",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Naruto Shippuden",
      description: "Boruto di tingali lah",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Jujutsu no Kaisen",
      description: "Movine metu tahun iki",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Jujutsu no Kaisen",
      description: "Movine metu tahun iki",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Jujutsu no Kaisen",
      description: "Movine metu tahun iki",
    ),
    Todo(
      createdTime: DateTime.now(),
      title: "Watch Jujutsu no Kaisen",
      description: "Movine metu tahun iki",
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
