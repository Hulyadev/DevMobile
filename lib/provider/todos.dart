import 'package:flutter/cupertino.dart';
import 'package:hulya_todolist/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'regarder netflix',
      description: '''- breaking bad 
- arsene lupin 
- stranger things''',
    ),

    Todo(
      createdTime: DateTime.now(),
      title: 'faire du sport',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'bosser un peu quand même',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'coiffeur',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'courses',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Shopping',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Faire le tour du monde',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Soirée',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Acheter un lapin ',
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
