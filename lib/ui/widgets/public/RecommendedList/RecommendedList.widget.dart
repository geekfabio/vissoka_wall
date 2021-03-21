import 'package:flutter/material.dart';
import 'package:hello_word/models/recommended.model.dart';
import 'package:hello_word/ui/widgets/public/load_progress.dart';

import 'RecommendedCards.dart';

class RecommendedList extends StatelessWidget {
  final List<RecommendedModel> cards;

  const RecommendedList({Key key, this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: LoaderProgress(
        callback: getCards,
        object: cards,
      ),
    );
  }

  Widget getCards() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        scrollDirection: Axis.vertical,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          RecommendedModel item = cards[index];
          return Padding(
            padding: EdgeInsets.all(2),
            child: RecommendedCard(item: item),
          );
        });
  }
}
