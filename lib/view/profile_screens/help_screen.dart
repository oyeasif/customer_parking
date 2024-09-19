import 'package:customer_parking_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/text_widget.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Help',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .04),
                        decoration: BoxDecoration(
                            color: MyColors.grey10,
                            border: Border.all(color: Colors.lightBlue),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            )),
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .04,
                            vertical: MediaQuery.of(context).size.width * .01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, I’m ParkBot! 👋 I’m your personal parking assistant. How can I help you?',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .04),
                        decoration: BoxDecoration(
                            color: MyColors.redLight,
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                              bottomLeft: Radius.circular(20.r),
                            )),
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .04,
                            vertical: MediaQuery.of(context).size.width * .01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Help me in finding parking',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Card(
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: TextEditingController(),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.w, right: 10.w,),
                            border: InputBorder.none,
                            hintText: 'Type a message'),
                      )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
