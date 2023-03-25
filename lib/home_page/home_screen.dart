import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invest_video_app/home_bottomsheet_widget.dart';
import 'package:invest_video_app/home_page/home_page_widgets/content.dart';
import 'package:invest_video_app/information_page/information_screen.dart';
import 'package:invest_video_app/home_page/home_page_widgets/swiper_screen.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Content connn = contents[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// ====================== Background Color ======================
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFce8f54),
              Color(0xFF41130a),
              Color(0xFF41130a),
            ],
          ),
        ),
        child: Stack(
          children: [
            /// ====================== 1,245 ======================
            Positioned(
              top: 40.h,
              left: 20.w,
              child: Container(
                height: 35.h,
                width: 90.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp), color: Colors.white24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.paid_outlined, color: Color(0xFFb2ff1e)),
                    Text('  1,245', style: TextStyle(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            /// ====================== Search Icon ======================
            Positioned(
              top: 40.h,
              right: 20.w,
              child: Container(
                height: 35.h,
                width: 45.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp), color: Colors.white24),
                child: const Icon(Icons.search, color: Colors.white),
              ),
            ),

            /// ====================== MP3 Video ======================
            Positioned(
              // top: 5.h,
              left: 10.w,
              right: 10.w,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(seconds: 6),
                      reverseDuration: const Duration(seconds: 6),
                      type: PageTransitionType.bottomToTopPop,
                      child: InformationScreen(contents: connn),
                    ),
                  );
                },
                child: SizedBox(
                  height: 820.h,
                  width: 480.w,
                  child: ClipRRect(borderRadius: BorderRadius.circular(30.sp), child: const SwiperScreen()),
                ),
              ),
            ),

            /// ====================== Coins NFT... ======================
            Positioned(
              top: 145.h,
              left: 20.w,
              right: 20.w,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InformationScreen(contents: connn),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      'COINS',
                      style: TextStyle(
                          fontSize: 65.sp,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.yellow),
                    ),
                    Text('NFT', style: TextStyle(color: Colors.white, fontSize: 70.sp, fontWeight: FontWeight.bold)),
                    Text('STOCKS FOREX ISO',
                        style: TextStyle(
                            fontSize: 65.sp,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.yellow),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),

            /// ====================== Bottom Sheet Widget ======================
            const HomeBottomSheetWidget(),
          ],
        ),
      ),
    );
  }
}
