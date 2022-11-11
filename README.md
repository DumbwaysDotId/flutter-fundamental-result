# ListView

For loop your all data, we can use ListView like this below code

> lib/src/screens/ListView.dart

```dart
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Todo {
  String title;
  bool isDone;

  Todo({required this.title, required this.isDone});
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    List<Todo> todoData = [
      Todo(title: "Sarapan", isDone: false),
      Todo(title: "Mandi", isDone: true),
      Todo(title: "Olah raga", isDone: true),
      Todo(title: "Makan Siang", isDone: false),
    ];

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: todoData.length,
          itemBuilder: (context, index) {
            var title = todoData[index].title;
            var isDone = todoData[index].isDone;
            var color = isDone ? Colors.green : Colors.grey;
            var icon = isDone ? Icons.check : Icons.hourglass_bottom;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: color,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${title}',
                        style: TextStyle(
                            color: isDone ? Colors.white : Colors.black,
                            fontWeight:
                                isDone ? FontWeight.bold : FontWeight.normal),
                      ),
                      Icon(
                        icon,
                        color: isDone ? Colors.white : Colors.black,
                      )
                    ],
                  )),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            );
          },
        ),
      )),
    );
  }
}

```
