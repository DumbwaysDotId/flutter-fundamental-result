# Widget

**Widgets** are supporting components in Flutter such as _Buttons_, _Text_, _Icons_ and so on. Everything that is in the view of our application is called a Widget.

## Create Widget

- `Header` Widget

  > lib/src/widgets/header.dart

  ```dart
  class Header extends StatelessWidget {
    const Header({super.key});

    @override
    Widget build(BuildContext context) {
        return Container(
        child: Text('This is Header'),
        );
    }
  }
  ```

- `Content` Widget

  > lib/src/widgets/header.dart

  ```dart
  class Content extends StatelessWidget {
    const Content({super.key});

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Column(children: [
                Text("This Is Content"),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
            ]),
        );
    }
  }
  ```

## Import and Embed Widget

> lib/main.dart

- Import `Header` & `Content` Widget

  ```dart
  import 'src/widgets/header.dart';
  import 'src/widgets/content.dart';
  ```

- Embed `Header` & `Content` Widget to MyApp `Widget`

  ```dart
  void main() {
      runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
      const MyApp({super.key});

      @override
      Widget build(BuildContext context) {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
              child: Container(
              child: Column(children: [Header(), Content()]),
              ),
          )),
          );
      }
  }
  ```
