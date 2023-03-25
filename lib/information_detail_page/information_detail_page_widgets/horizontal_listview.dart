import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

class HorizontalListview extends StatefulWidget {
  const HorizontalListview({super.key});

  @override
  State<HorizontalListview> createState() => _HorizontalListviewState();
}

class _HorizontalListviewState extends State<HorizontalListview> {
  final List<String> time = ['\$20', '\$40', '\$60', '\$70', 'MAX'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Container(
              height: 35.h,
              width: 64.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: Colors.transparent,
                border: RDottedLineBorder.all(width: 1, color: const Color(0xFFd5dcc0)),
              ),
              child: Center(child: Text(time[index], style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.bold))),
            ),
          );
        },
      ),
    );
  }
}
