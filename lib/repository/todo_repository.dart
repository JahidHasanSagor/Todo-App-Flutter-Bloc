import 'package:todo_list_bloc/dao/todo_dao.dart';
import 'package:todo_list_bloc/model/todo.dart';

class TodoRepository {
  final todoDao = TodoDao();

  Future getAllTodos({String query}) {
    return todoDao.getTodos(query: query);
  }

  Future insertTodo(Todo todo) {
    return todoDao.createTodo(todo);
  }

  Future updateTodo(Todo todo) {
    return todoDao.updateTodo(todo);
  }

  Future deleteTodoById(int id) {
    return todoDao.deleteTodo(id);
  }


  // Future deleteAllTodos() => todoDao.deleteAllTodos();
}
