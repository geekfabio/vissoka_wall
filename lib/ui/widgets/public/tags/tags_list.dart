import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hello_word/models/tags.model.dart';
import 'package:hello_word/ui/widgets/public/load_progress.dart';
import 'package:hello_word/ui/widgets/public/tags/tags_card.dart';

class TagsList extends StatelessWidget {
  final List<TagsModel> tags;

  const TagsList({Key key, this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 405,
      child: LoaderProgress(
        object: tags,
        callback: buildCarouselSlider,
      ),
    );
  }

  Swiper buildCarouselSlider() {
    return Swiper(
      itemBuilder: (context, index) {
        TagsModel item = tags[index];
        return TagsCard(
          item: item,
        );
      },
      itemCount: tags.length,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
    );
  }
}
