import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleTextBoxState: (bool? checkBoxState) {
        setState(() {
          isChecked = checkBoxState ?? true;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleTextBoxState;

  const TaskCheckBox({Key? key, required this.checkBoxState, required this.toggleTextBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.cyan,
      value: checkBoxState,
      onChanged: toggleTextBoxState,
    );
  }
}
