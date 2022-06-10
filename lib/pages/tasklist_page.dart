import 'package:flutter/material.dart';
import 'package:tasklist/widgets/task_list_item.dart';

class TaskListPage extends StatefulWidget {
  TaskListPage({Key? key}) : super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<String> tasks = [];

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: taskController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Adicione uma Task",
                            hintText: "Ex.: Tafera FOL-3278"),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: adicionar,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding: const EdgeInsets.all(14),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (String task in tasks)
                        TaskListItem(
                          taskText: task,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                     Expanded(
                      child: Text(
                        "Você possui ${tasks.length} tarefas pendentes",
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: limparTudo,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding: const EdgeInsets.all(14),
                      ),
                      child: const Text("Limpar Tudo"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void adicionar() {
    String text = taskController.text;
    setState(() {
      tasks.add(text);
    });
    taskController.clear();
    print(tasks);
  }

  void limparTudo() {
    print("Limpar!");
  }
}
