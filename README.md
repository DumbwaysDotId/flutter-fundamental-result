# Embedding Expression

> lib/screens/EmbedExpression.dart

```dart
class EmbedExpression extends StatelessWidget {
  const EmbedExpression({super.key});

  @override
  Widget build(BuildContext context) {
    var companyName = "Dumbways";
    var country = "Indonesia";

    return Container(
      child: Text("Welcome to ... ${companyName} $country"),
    );
  }
}
```
