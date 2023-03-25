import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:invest_video_app/fl_chart/fl_chart_second_screen.dart';
import 'package:invest_video_app/preview_page/preview_screen.dart';
import 'package:invest_video_app/information_detail_page/information_detail_page_widgets/horizontal_listview.dart';
import 'package:lottie/lottie.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:shimmer/shimmer.dart';

class InformationDetailsScreen extends StatefulWidget {
  const InformationDetailsScreen({Key? key}) : super(key: key);

  @override
  State<InformationDetailsScreen> createState() => _InformationDetailsScreenState();
}

class _InformationDetailsScreenState extends State<InformationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87753e),
              Color(0xFF919173),
              Color(0xFF898c89),
            ],
          ),
        ),
        child: AnimationLimiter(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(seconds: 3),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: MediaQuery.of(context).size.height / 2,
                child: FadeInAnimation(child: widget),
              ),
              children: [
                SizedBox(
                  height: 690.h,
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

                      Positioned(top: 35.h, left: 160.w, child: Lottie.asset("assets/doller_bitcoin.json", height: 65.h, width: 65.w)),

                      /// ====================== $ Icon ======================
                      Positioned(
                        top: 40.h,
                        right: 20.w,
                        child: Icon(Icons.expand_more, color: Colors.white, size: 30.sp),
                      ),

                      /// ====================== $ Icon ======================
                      Positioned(
                        top: 90.h,
                        left: 1.w,
                        right: 1.w,
                        child: SizedBox(
                          height: 240.h,
                          child: const FlChartSecondScreen(),
                        ),
                      ),

                      /// ====================== @finnegan ======================
                      Positioned(
                        top: 285.h,
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
                        top: 303.h,
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
                        top: 350.h,
                        right: 150.w,
                        left: 150.w,
                        child: Text(
                          "Bitcoin",
                          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                      ),

                      /// ============================================
                      Positioned(
                        top: 385.h,
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
                        top: 375.h,
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
                        top: 375.h,
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

                      /// ============================================
                      Positioned(
                        top: 430.h,
                        left: 15.w,
                        right: 15.w,
                        child: Container(
                          padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                          height: 150.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFFceee72),
                                  Color(0xFFa2a391),
                                  Color(0xFF9ea4a2),
                                ],
                              ),
                              border: Border.all(color: const Color(0xFFdbe5df))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// ====================== You Pay ======================
                              Text('You Pay', style: TextStyle(color: const Color(0xFFd5dcc0), fontSize: 15.sp)),

                              /// ====================== $00 ======================
                              Text('\$00', style: TextStyle(color: Colors.white, fontSize: 38.sp, fontWeight: FontWeight.bold)),

                              /// ====================== For 0.0 BTC ======================
                              RichText(
                                text: TextSpan(
                                  text: 'FOR ',
                                  style: TextStyle(color: const Color(0xFFd5dcc0), fontSize: 25.sp, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: '0.0', style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: ' BTC', style: TextStyle(color: const Color(0xFFd5dcc0), fontSize: 25.sp, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),

                              /// ====================== Dotted Line ======================
                              const DottedLine(dashColor: Colors.white, lineThickness: 1, dashLength: 6),

                              /// ============================================
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 32.h,
                                      width: 34.w,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp), color: Colors.white24),
                                      child: Icon(Icons.attach_money, color: Colors.white, size: 25.sp),
                                    ),

                                    // Icon(Icons.keyboard_double_arrow_right, color: Colors.white, size: 30.sp),
                                    Shimmer.fromColors(
                                      baseColor: const Color(0xFF939285),
                                      highlightColor: Colors.white,
                                      child: Text(
                                        '> > >',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                                      ),
                                    ),

                                    Container(
                                      height: 32.h,
                                      width: 34.w,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /// ====================== Horizontal ListView ======================
                      Positioned(top: 590.h, left: 10.w, right: 10.w, child: const HorizontalListview()),

                      /// ====================== Preview Button ======================
                      Positioned(
                        top: 635.h,
                        left: 15.w,
                        right: 15.w,
                        child: SizedBox(
                          height: 45.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.r), side: const BorderSide(color: Color(0xFFd5dcc0))),
                                  backgroundColor: const Color(0xFF888d87),
                                  elevation: 0),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PreviewScreen(),
                                  ),
                                );
                              },
                              child: Text('PREVIEW', style: TextStyle(fontSize: 18.sp))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
