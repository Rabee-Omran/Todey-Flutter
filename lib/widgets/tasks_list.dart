import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.tasksCount,
          itemBuilder: (context, index) {
            final task = value.tasks[index];
            return TasksTile(
                longPressCallback: (){value.deleteTask(task);} ,
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (newValue) {
                  value.updateTask(task);
                });
          },
        );
      },
    );
  }
}
