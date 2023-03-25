// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invest_video_app/fl_chart/expense_graph_design.dart';
import 'package:invest_video_app/information_bottomsheet_widget.dart';
import 'package:invest_video_app/information_detail_page/information_details_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:video_player/video_player.dart';
import '../home_page/home_page_widgets/content.dart';

class InformationScreen extends StatefulWidget {
  final String? media;

  InformationScreen({Key? key, this.media, required this.contents}) : super(key: key);
  Content contents;

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    print('video lai ne aav ne===${widget.contents}');
    _controller = VideoPlayerController.network(widget.contents.url)
      ..initialize()
      ..play()
      ..setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InformationDetailsScreen(),
                ),
              );
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height.h,
              width: MediaQuery.of(context).size.width.w,
              child: VideoPlayer(_controller),
            ),
          ),

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

          Positioned(top: 35.h, left: 160.w, child: Lottie.asset("assets/doller_bitcoin.json", height: 65.h, width: 65.w)),

          /// ====================== MP3 Video Container ======================
          Positioned(
            top: 40.h,
            right: 20.w,
            child: Container(
              height: 55.h,
              width: 57.w,
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp), color: Colors.pink),
              child: ClipRRect(borderRadius: BorderRadius.circular(20.sp), child: VideoPlayer(_controller)),
            ),
          ),

          /// ========== Add Icon ==========
          Positioned(
            top: 88.h,
            left: 303.w,
            child: Container(
              height: 16.h,
              width: 17.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF8bfd3d),
                    Color(0xFFf9fd09),
                  ],
                ),
              ),
              child: Icon(Icons.add, size: 17.5.sp),
            ),
          ),

          /// ====================== Comment Icon ======================
          Positioned(
            top: 120.h,
            right: 20.w,
            child: Icon(Icons.comment_rounded, size: 30.sp, color: const Color(0xFFe1e1e3)),
          ),

          /// ====================== SMS Icon ======================
          Positioned(
            top: 143.h,
            left: 290.w,
            child: Icon(Icons.sms, size: 30.sp, color: Colors.blue),
          ),

          /// ========== 31 ==========
          Positioned(
            top: 165.h,
            right: 20.w,
            child: Container(
              height: 17.h,
              width: 25.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.sp),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF8bfd3d),
                    Color(0xFFf9fd09),
                  ],
                ),
              ),
              child: Center(child: Text('31', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.sp))),
            ),
          ),

          /// ====================== Emoji Lottie Json ======================
          Positioned(
            top: 200.h,
            left: 290.w,
            child: Container(
              child: Lottie.asset("assets/emoji.json", height: 45.h, width: 45.w),
            ),
          ),

          /// ====================== 59 ======================
          Positioned(
            top: 236.h,
            right: 20.w,
            child: Container(
              height: 17.h,
              width: 25.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.sp),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF8bfd3d),
                    Color(0xFFf9fd09),
                  ],
                ),
              ),
              child: Center(child: Text('59', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.sp))),
            ),
          ),

          /// ====================== Chart ======================
          Positioned(
            top: 345.h,
            left: 1.w,
            right: 1.w,
            child: SizedBox(
              height: 200.h,
              child: const ExpenseGraphDesign(),
            ),
          ),

          /// ====================== @finnegan ======================
          Positioned(
            top: 475.h,
            right: 130.w,
            left: 135.w,
            child: Text(
              "@finnegan",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color(0xFF8bfd3d),
                      Color(0xFFf9fd09),
                    ],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
              ),
            ),
          ),

          /// ====================== $23,816 ======================
          Positioned(
            top: 487.h,
            right: 80.w,
            left: 80.w,
            child: RichText(
              text: TextSpan(
                text: '\$ ',
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold, color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: '23,816',
                    style: TextStyle(fontSize: 42.sp, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  TextSpan(
                    text: ' `00',
                    style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          /// ====================== Bitcoin Text ======================
          Positioned(
            top: 533.h,
            right: 150.w,
            left: 150.w,
            child: Text(
              "Bitcoin",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ),

          /// ============================================
          Positioned(
            top: 565.h,
            right: 30.w,
            left: 30.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// ====================== Bitcoin Icon ======================
                Container(
                  height: 30.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF8bfd3d),
                        Color(0xFFf9fd09),
                      ],
                    ),
                  ),
                  child: Icon(Icons.currency_bitcoin_sharp, size: 25.sp),
                ),

                /// ====================== $23816 ======================
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1ad365),
                        Color(0xFFf9fd09),
                      ],
                    ),
                  ),
                  child: Center(child: Text('\$23816', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp))),
                ),

                /// ====================== wifi_protected_setup_sharp Icon ======================
                Icon(Icons.wifi_protected_setup_sharp, color: Colors.grey, size: 25.sp),

                /// ====================== $26000 ======================
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    border: RDottedLineBorder.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                  child: Center(
                    child: Text(
                      '\$26,000',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: Colors.white),
                    ),
                  ),
                ),

                /// ====================== +9% ======================
                Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFf3ede9),
                        Color(0xFFcca94b),
                      ],
                    ),
                  ),
                  child: Center(child: Text('+9%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp))),
                ),
              ],
            ),
          ),

          /// ====================== BUY ======================
          Positioned(
            top: 555.h,
            left: 65.w,
            child: Container(
              height: 17.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.sp),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF8bfd3d),
                    Color(0xFFf9fd09),
                  ],
                ),
              ),
              child: Center(child: Text('BUY', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10.sp))),
            ),
          ),

          /// ====================== SELL ======================
          Positioned(
            top: 555.h,
            left: 185.w,
            child: Container(
              height: 17.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.sp),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFe44307),
                    Color(0xFFff9201),
                  ],
                ),
              ),
              child: Center(child: Text('SELL', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10.sp, color: Colors.white))),
            ),
          ),

          /// ====================== Bottom Sheet Widget ======================
          const InformationBottomSheetWidget(),
        ],
      ),
    );
  }
}
