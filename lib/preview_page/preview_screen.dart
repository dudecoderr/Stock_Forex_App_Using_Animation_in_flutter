import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:invest_video_app/home_page/home_screen.dart';
import 'package:invest_video_app/information_detail_page/information_detail_page_widgets/horizontal_listview.dart';
import 'package:lottie/lottie.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slider_button/slider_button.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final List<String> dail = ['1', '2', '3'];
  final List<String> dail1 = ['4', '5', '6'];
  final List<String> dail2 = ['7', '8', '9'];
  final List<String> dail3 = ['.', '0'];

  final controller = PageController(initialPage: 0);

  bool pageView = true;

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
              duration: const Duration(seconds: 2),
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

                      Positioned(top: 30.h, left: 160.w, child: Lottie.asset("assets/doller_bitcoin.json", height: 65.h, width: 65.w)),

                      /// ====================== $ Icon ======================
                      Positioned(
                        top: 40.h,
                        right: 20.w,
                        child: Icon(Icons.expand_more, color: Colors.white, size: 30.sp),
                      ),

                      /// ============================================
                      Positioned(
                        top: 100.h,
                        left: 15.w,
                        right: 15.w,
                        child: Container(
                          padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                          height: 200.h,
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
                                    Shimmer.fromColors(
                                      baseColor: const Color(0xFF939285),
                                      highlightColor: Colors.white,
                                      child: Text(
                                        '> >',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
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

                      /// ====================== TabBar Slider ======================
                      Positioned(
                          top: 310.h,
                          left: 15.w,
                          right: 15.w,
                          child: SizedBox(
                            height: 450,
                            width: 100,
                            child: PageView.builder(
                              controller: controller,
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return pageView
                                    ? Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// ====================== HorizontalListview ======================
                                          const HorizontalListview(),
                                          SizedBox(
                                            height: 60.h,
                                            child: ListView.builder(
                                              itemCount: 3,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                  child: Container(
                                                    height: 60.h,
                                                    width: 106.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40.sp),
                                                      color: const Color(0xFF919183),
                                                    ),
                                                    child: Center(
                                                        child: Text(dail[index],
                                                            style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold))),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                            child: ListView.builder(
                                              itemCount: 3,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                  child: Container(
                                                    height: 60.h,
                                                    width: 106.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40.sp),
                                                      color: const Color(0xFF919183),
                                                    ),
                                                    child: Center(
                                                        child: Text(dail1[index],
                                                            style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold))),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                            child: ListView.builder(
                                              itemCount: 3,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                  child: Container(
                                                    height: 60.h,
                                                    width: 106.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40.sp),
                                                      color: const Color(0xFF919183),
                                                    ),
                                                    child: Center(
                                                        child: Text(dail2[index],
                                                            style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold))),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                child: Container(
                                                  height: 60.h,
                                                  width: 106.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(40.sp),
                                                    color: const Color(0xFF919183),
                                                  ),
                                                  child: Center(
                                                      child: Text('.',
                                                          style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold))),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                child: Container(
                                                  height: 60.h,
                                                  width: 106.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(40.sp),
                                                    color: const Color(0xFF919183),
                                                  ),
                                                  child: Center(
                                                      child: Text('0',
                                                          style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold))),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                                child: Container(
                                                  height: 60.h,
                                                  width: 106.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(40.sp),
                                                    color: const Color(0xFF919183),
                                                  ),
                                                  child: Center(child: Icon(Icons.backspace, color: Colors.white, size: 23.sp)),
                                                ),
                                              ),
                                            ],
                                          ),

                                          /// ====================== Preview Button ======================
                                          SizedBox(
                                            height: 57.h,
                                            width: MediaQuery.of(context).size.width.w,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(30.r), side: const BorderSide(color: Color(0xFFd5dcc0))),
                                                    backgroundColor: const Color(0xFF888d87),
                                                    elevation: 0),
                                                onPressed: () {
                                                  pageView = false;
                                                  controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                                                },
                                                child: Text('PREVIEW', style: TextStyle(fontSize: 18.sp))),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Summary', style: TextStyle(fontSize: 23.sp, color: Colors.white, fontWeight: FontWeight.bold)),

                                          /// ====================== 1 Bitcoin ======================
                                          ListTile(
                                            title: Text('1 Bitcoin',
                                                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: const Color(0xFFcfcebf))),
                                            leading: Container(
                                              height: 36.h,
                                              width: 38.w,
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
                                            trailing: Text('\$23,816.01',
                                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: const Color(0xFFf3e9d7))),
                                          ),

                                          /// ====================== Spread (Inc.) ======================
                                          ListTile(
                                            title: Text('Spread (Inc.)',
                                                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: const Color(0xFFcfcebf))),
                                            leading: Container(
                                              height: 28.h,
                                              width: 30.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.sp),
                                                  color: Colors.transparent,
                                                  border: Border.all(color: Colors.white)),
                                              child: Icon(Icons.attach_money, color: Colors.white, size: 25.sp),
                                            ),
                                            trailing: Text('\$1.01',
                                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: const Color(0xFFf3e9d7))),
                                          ),

                                          /// ====================== Commission ======================
                                          ListTile(
                                            title: Text('Commission',
                                                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: const Color(0xFFcfcebf))),
                                            leading: Container(
                                              height: 28.h,
                                              width: 30.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.sp),
                                                  color: Colors.transparent,
                                                  border: Border.all(color: Colors.white)),
                                              child: Icon(Icons.attach_money, color: Colors.white, size: 25.sp),
                                            ),
                                            trailing: Text('\$0,24',
                                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: const Color(0xFFf3e9d7))),
                                          ),

                                          /// ====================== Tips for@finnegan ======================
                                          ListTile(
                                            title: RichText(
                                              text: TextSpan(
                                                text: 'Tips for',
                                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFFcfcebf)),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '@finnegan',
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
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
                                                ],
                                              ),
                                            ),
                                            leading: SizedBox(
                                              height: 30.h,
                                              width: 32.w,
                                              child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.sp),
                                                  child: Image.network(
                                                      'https://img.etimg.com/thumb/msid-96128416,width-640,resizemode-4,imgsize-44830/know-the-value-of-your-investment.jpg',
                                                      fit: BoxFit.fill)),
                                            ),
                                            trailing: Text('\$12.00',
                                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: const Color(0xFFf3e9d7))),
                                          ),

                                          /// ====================== Total ======================
                                          ListTile(
                                            title: Text('Total', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500, color: Colors.white)),
                                            leading: const SizedBox(),
                                            trailing: Text('\$1,245.00',
                                                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, color: Colors.white)),
                                          ),

                                          /// ====================== Slide to Pay Button ======================
                                          SizedBox(
                                            height: 57.h,
                                            width: MediaQuery.of(context).size.width.w,
                                            child: SliderButton(
                                                action: () {
                                                  _scaleDialog();
                                                },
                                                label: const Text(
                                                  ">>> SLIDE TO PAY >>>      ",
                                                  style: TextStyle(color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
                                                ),
                                                icon: Center(child: Text('PAY', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold))),
                                                boxShadow: const BoxShadow(color: Colors.black, blurRadius: 4),
                                                shimmer: true,
                                                vibrationFlag: true,
                                                width: 300,
                                                radius: 40.r,
                                                buttonColor: const Color(0xff9aff35),
                                                backgroundColor: const Color(0xff65645b),
                                                highlightedColor: Colors.white,
                                                baseColor: Colors.grey),
                                          ),
                                        ],
                                      );
                              },
                            ),
                          )),
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

  void _scaleDialog() {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            child: Stack(
              children: [
                Container(
                  height: 350.h,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      SizedBox(height: 60.h),
                      Container(
                        padding: EdgeInsets.all(10.sp),
                        height: 230.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFfefe34),
                              Color(0xFFfefeb5),
                              Color(0xFFfffffe),
                              Color(0xFFfffffe),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 55.h),
                            Text('Congratulations', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                            SizedBox(height: 15.h),
                            RichText(
                                text: TextSpan(
                                  text: 'You Buy ',
                                  style: TextStyle(fontSize: 16.9.sp, fontWeight: FontWeight.bold, color: const Color(0xff9c9b73)),
                                  children: <TextSpan>[
                                    TextSpan(text: '0,054 ', style: TextStyle(fontSize: 16.9.sp, fontWeight: FontWeight.bold, color: Colors.black)),
                                    TextSpan(
                                        text: 'Bitcoin and pay ',
                                        style: TextStyle(fontSize: 16.9.sp, fontWeight: FontWeight.bold, color: const Color(0xff9c9b73))),
                                    TextSpan(
                                        text: '\$1,245.00', style: TextStyle(fontSize: 16.9.sp, fontWeight: FontWeight.bold, color: Colors.black)),
                                  ],
                                ),
                                textAlign: TextAlign.center),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      border: RDottedLineBorder.all(width: 1, color: const Color(0xFFd5dcc0)),
                                    ),
                                    child: Center(
                                        child: Text('SELL', style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold))),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomeScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r), color: Colors.black),
                                    child: Center(
                                        child: Text('OK', style: TextStyle(color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 220.h,
                  left: 50.w,
                  right: 50.w,
                  child: Container(
                    child: Lottie.asset("assets/bitcoin.json", height: 150.h, width: 150.w),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
