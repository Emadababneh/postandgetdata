

import 'package:post_and_get_data/models/todo.dart';
import 'package:post_and_get_data/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class TodoRepository implements Repository{
  //url
  String dataUrl="https://jsonplaceholder.typicode.com";

  @override
  Future<String> deletedTodo(todo) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList=[];
    //https://jsonplaceholder.typicode.com/todos
    var url=Uri.parse("$dataUrl/todos");
    var response=await http.get(url);
    print('status code ${response.statusCode}');
    var body=json.decode(response.body);
    //parse

    for(var i=0;i < body.length;i++ ){
      todoList.add(Todo.fromJson(body[i]));
    }
   return todoList;

  }

  @override
  Future<String> patchCompleted(todo) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> postTodo(todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(todo) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }


}