class TodoModel {
  String title;
  String description;

  TodoModel({
    required this.title,
    required this.description,
  });
}

List<TodoModel> todosList = [];

void createTodo({required int index, required TodoModel data}) {
  todosList[index] = TodoModel(
    title: data.title,
    description: data.description,
  );
}
