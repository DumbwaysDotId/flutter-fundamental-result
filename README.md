# Widget

**Widgets** are supporting components in Flutter such as _Buttons_, _Text_, _Icons_ and so on. Everything that is in the view of our application is called a Widget.

## Stateless & Stateful Widget

**Stateless** widgets are static widgets where all the configurations contained in them are initialized from the start. On the other hand, **Stateful** widgets do the opposite where they are dynamic, so they can be updated whenever needed based on user actions or when data changes.

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
