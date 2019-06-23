import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sawari/src/assets/assets.dart';
import 'package:sawari/src/widgets/card_widget/card_widget.dart';
import 'package:sawari/src/widgets/logo/logo.dart';

class Bookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Logo(
          color: Color(AppColors.PINK),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(AppColors.PINK),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(10),
          left: ScreenUtil().setWidth(10),
          right: ScreenUtil().setWidth(10),
        ),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return CardWidget(
              height: 140,
              width: 340,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Mahindra KUV 100',
                        style: TextStyle(
                          fontSize: FontSize.fontSize14,
                        ),
                      ),
                      Text(
                        '24 Jan, 2019',
                        style: TextStyle(
                          fontSize: FontSize.fontSize14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        Images.mahindra,
                        width: ScreenUtil().setWidth(160),
                        height: ScreenUtil().setHeight(100),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: ScreenUtil().setWidth(15)),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('From: Jadibuti, Kathmandu'),
                            SizedBox(
                              height: ScreenUtil().setHeight(5),
                            ),
                            Text('To: Bagbazar, Kathmandu'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
