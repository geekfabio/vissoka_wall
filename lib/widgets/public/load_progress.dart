import 'package:flutter/widgets.dart';
import 'package:hello_word/widgets/public/loadIndicator.dart';

class LoaderProgress extends StatelessWidget {
  final object;
  final Function callback;

  LoaderProgress({@required this.object, @required this.callback});

  @override
  Widget build(BuildContext context) {
    if (object == null)
      return Center(
        child: LoadProgressIndicator(),
      );

    if (object.length == 0)
      return Center(
        child: Text("Nenhum item encontrado"),
      );

    return callback();
  }
}
