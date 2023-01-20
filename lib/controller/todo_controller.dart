

import 'package:post_and_get_data/models/todo.dart';
import 'package:post_and_get_data/repository/repository.dart';

class TodoController{
  final Repository _repository;
  TodoController(this._repository);

  Future<List<Todo>> fetchTodoList() async{
    return _repository.getTodoList();
  }

}