// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:invest_video_app/home_page/home_page_widgets/video_widget.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'content.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  State<SwiperScreen> createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> with TickerProviderStateMixin {
  late List<SwipeItem> _SwipeItems;
  Content connn = contents[0];
  AnimationController? animationController;
  bool isLike = false;

  ///============ intestate ==========================

  @override
  void initState() {
    reset();
    animationController = AnimationController(vsync: this);
    animationController!.addStatusListener((status) {
      print("Listener Value After Tap :: $status");
      if (status == AnimationStatus.completed) {
        isLike = false;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  ///============== reset option class ========
  void reset() {
    _SwipeItems = [];
    for (var content in contents) {
      var swipeItem = SwipeItem(content: content);
      _SwipeItems.add(swipeItem);
    }
  }

  double height = 80.0;
  double width = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Swiper(
          autoplay: true,
          duration: 500,
          itemBuilder: (context, index) {
            return VideoWidget(con: connn);
          },
          onIndexChanged: (value) {
            connn = Content(contents[value].url);
          },
          itemCount: 3,
          itemWidth: 480.0,
          itemHeight: 820.0,
          layout: SwiperLayout.TINDER),
    );
  }
}
