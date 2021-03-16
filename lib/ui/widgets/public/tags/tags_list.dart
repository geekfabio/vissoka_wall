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
      height: 250,
      child: LoaderProgress(
        object: tags,
        callback: buildCarouselSlider,
      ),
    );
  }

  Widget buildCarouselSlider() {
    return Center(
      child: Swiper(
        autoplay: true,
        autoplayDisableOnInteraction: true,
        containerHeight: 200,
        duration: 2000,
        viewportFraction: 1.5,
        scale: 1.9,
        itemCount: tags.length,
        pagination: new SwiperPagination(),
        itemBuilder: (context, index) {
          TagsModel item = tags[index];
          return Container(
            child: TagsCard(
              item: item,
            ),
          );
        },
      ),
    );
  }
}
