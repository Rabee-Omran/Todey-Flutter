import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;

  TasksTile({this.taskTitle, this.isChecked, this.checkBoxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallback
        ));
  }
}

