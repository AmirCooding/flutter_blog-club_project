import 'package:flutter/material.dart';
import '../../carousel_files/carousel_slider.dart';
import '../../main/data.dart';
import 'categoryItem.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index, realIndex) => CategoryItemes(
              left: index == 0 ? 32 : 8,
              right: index == categories.length - 1 ? 32 : 8,
              category: categories[index],
            ),
        options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.8,
            aspectRatio: 1.2, //Determining the size ratio of the slides
            initialPage: 0, //show iteme 0
            disableCenter: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            enlargeStrategy:
                CenterPageEnlargeStrategy.height)); //shows itemes as a loop
  }
}
