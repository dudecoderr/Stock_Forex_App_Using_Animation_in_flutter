// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'content.dart';

class VideoWidget extends StatefulWidget {
  VideoWidget({Key? key, required this.con}) : super(key: key);
  Content con;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  ///====== video controller =============
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.con.url)
      ..initialize()
      ..play()
      ..setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 440.h,
          width: 500.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r), color: Colors.transparent),
        ),
        Container(
          height: 440.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r), color: Colors.transparent),
          width: 500.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
        ),
      ],
    );
  }
}
