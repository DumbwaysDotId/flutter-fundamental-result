# Local State

In order to implement State on Widgets, you need to create a stateful widget first. Then we will try to make addition and subtraction using state.

> lib/src/screens/LocalState.dart

```dart
class _LocalStateState extends State<LocalState> {
  int number = 0;

  void Add() {
    setState(() {
      number = number + 1;
    });
  }

  void Less() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "If you click the add button it will increase by one, vice versa if you click the less button it will decrease by one"),
          SizedBox(
            height: 50.0,
          ),
          Text(
            '${number}',
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: Add, child: Text('Add')),
              TextButton(onPressed: Less, child: Text('Less'))
            ],
          )
        ],
      )),
    );
  }
}
```
