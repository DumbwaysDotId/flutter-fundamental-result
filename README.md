# Event

For Example, Event on Flutter you can use `TextButton` Widget with `onPressed` property

> lib/screens/Event.dart

```dart
class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("If you press Click Here then an alert will appear"),
          TextButton(
              onPressed: (() {
                print("=> Hello Full-Stack Bootcamp Participants");
              }),
              child: Text("Click here")),
          Text("If you press Greeting then an alert will appear"),
          TextButton(
              onPressed: (() {
                print("=> Good Morning Everyone Have a Nice Day");
              }),
              child: Text("Greeting")),
        ],
      )),
    );
  }
}
```

But you can use another Widget, like `GestureDetector` [check here](https://docs.flutter.dev/development/ui/advanced/gestures#gestures) or [check here](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)
