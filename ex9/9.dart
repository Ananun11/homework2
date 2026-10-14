Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));

  return "Task $name completed";
}

Future<List<String>> runTasks() async {
  List<Future<String>> tasks = [
    runTask("A", 100),
    runTask("B", 50),
    runTask("C", 150)
  ];

  List<String> result = await Future.wait(tasks);

  return result;
}

void main() async {
  print(await runTasks());
}