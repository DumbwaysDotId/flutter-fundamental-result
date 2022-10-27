import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
