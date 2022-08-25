import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          children:  [
             const Text('Add Task', style: TextStyle(
              color: Colors.cyan,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),),
            const SizedBox(height: 20,),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.cyan,
                child: const Text('ADD', style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),),
              ),
              onTap: (){
                null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
