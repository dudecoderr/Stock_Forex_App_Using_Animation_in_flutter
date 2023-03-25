import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invest_video_app/home_page/home_page_widgets/content.dart';
import 'package:invest_video_app/information_page/information_screen.dart';

class HomeBottomSheetWidget extends StatefulWidget {
  const HomeBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<HomeBottomSheetWidget> createState() => _HomeBottomSheetWidgetState();
}

class _HomeBottomSheetWidgetState extends State<HomeBottomSheetWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  Content connn = contents[0];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) _animationController.forward(from: 0);
    });
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 600.h,
      left: 40.w,
      right: 40.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ====================== Video Icon ======================
          Container(
            height: 54.h,
            width: 57.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.sp),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF6e9549),
                  Color(0xFFababa8),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 6.h),
                Icon(Icons.videocam, color: Colors.white, size: 25.sp),
                Text('•', style: TextStyle(fontSize: 20.sp, color: const Color(0xFFb2ff1e))),
              ],
            ),
          ),

          /// ====================== Buy Button ======================
          Container(
            height: 65.h,
            width: 67.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.sp),
                gradient: SweepGradient(
                    startAngle: 1,
                    colors: const [Colors.purple, Colors.cyan, Colors.blue, Colors.green, Colors.yellow, Colors.orange, Colors.red],
                    transform: GradientRotation(_animationController.value * 1))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InformationScreen(contents: connn),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.sp), color: Colors.white),
                  child: const Center(child: Text("BUY", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ),

          /// ====================== Dashboard Icon ======================
          Container(
            height: 54.h,
            width: 57.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.sp),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF8e8f6b),
                  Color(0xFFababa8),
                ],
              ),
            ),
            child: Icon(Icons.dashboard, color: Colors.white, size: 25.sp),
          ),
        ],
      ),
    );
  }
}
