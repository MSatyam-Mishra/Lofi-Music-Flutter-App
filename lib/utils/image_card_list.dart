import 'package:flutter/material.dart';
import 'package:lofi_music/utils/image_card_widget.dart';

import '../constants/constants.dart';

class ImageCardList extends StatefulWidget {
  ImageCardList({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  State<ImageCardList> createState() => _ImageCardListState();
}

class _ImageCardListState extends State<ImageCardList> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenOrientation = MediaQuery.of(context).orientation;
    return screenOrientation == Orientation.portrait
        ? PageView.builder(
            physics: AlwaysScrollableScrollPhysics(parent: ScrollPhysics()),
            itemCount: cardList.length,
            controller: widget._pageController,
            itemBuilder: (context, index) {
              return ImageCardWidget(cardDetails: cardList[index]);
            },
          )
        : Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GridView.builder(
              itemCount: cardList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 25, crossAxisSpacing: 25),
              itemBuilder: (context, index) {
                return ImageCardWidget(cardDetails: cardList[index]);
              },
            ),
          );
  }
}
