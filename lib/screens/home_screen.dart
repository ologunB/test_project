import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_project/components/button.dart';
import 'package:test_project/components/colors.dart';
import 'package:test_project/components/tab_widget.dart';
import 'package:test_project/components/title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile = sizingInformation.isMobile ||
            sizingInformation.screenSize.width < 870;

        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: !isMobile
              ? null
              : Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.1,
                        offset: Offset(0, -10),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 26),
                      child: CustomButton(),
                    ),
                  ),
                ),
          appBar: PreferredSize(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff319795), Color(0xff3182CE)],
                    ),
                  ),
                ),
                Container(
                    height: kToolbarHeight - 5,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            preferredSize: Size.fromHeight(kToolbarHeight),
          ),
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              isMobile
                  ? Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffE6FFFA), Color(0xffEBF4FF)],
                        ),
                      ),
                      child: Column(
                        children: [
                          TitleWidget(),
                          Image.asset(
                            'assets/images/agreement.png',
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffE6FFFA), Color(0xffEBF4FF)],
                        ),
                      ),
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              TitleWidget(),
                              Container(width: 320, child: CustomButton()),
                            ],
                          ),
                          SizedBox(width: 30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(450),
                            child: Container(
                              color: Colors.white,
                              child: Image.asset(
                                'assets/images/agreement.png',
                                width: 450,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 38.0, bottom: 27),
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: isMobile
                              ? MediaQuery.of(context).size.width
                              : 480,
                          child: TabWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Text(
                  'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                  ),
                ),
              ),
              isMobile
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 100.0, bottom: 60),
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 220,
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: text('1'),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text('1'),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0, bottom: 60),
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 220,
                          ),
                        ),
                      ],
                    ),
              CustomPaint(
                painter: DemoPainter(),
                child: Container(
                  /*    decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffE6FFFA), Color(0xffEBF4FF)],
                    ),
                  ),*/
                  padding: EdgeInsets.only(top: 100, left: 40),
                  child: isMobile
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            text('2'),
                            Padding(
                              padding: EdgeInsets.only(left: 100.0, bottom: 60),
                              child: Image.asset('assets/images/task.png',
                                  width: 220),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 100.0, bottom: 60),
                              child: Image.asset('assets/images/task.png',
                                  width: 220),
                            ),
                            SizedBox(width: 50),
                            text('2'),
                          ],
                        ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 100, left: 40),
                child: isMobile
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          text('3'),
                          Padding(
                            padding: EdgeInsets.only(left: 100.0, bottom: 60),
                            child: Image.asset(
                              'assets/images/person.png',
                              width: 220,
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text('3'),
                          Padding(
                            padding: EdgeInsets.only(left: 100.0, bottom: 60),
                            child: Image.asset(
                              'assets/images/person.png',
                              width: 220,
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget text(String a) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Text(
                '$a.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 0,
                  fontSize: 130,
                  color: Color(0xff718096),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Erstellen dein Lebenslauf',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 0,
                      fontSize: 15.75,
                      color: Color(0xff718096),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffE6FFFA)
      ..style = PaintingStyle.fill;

    final path = new Path()
      ..moveTo(size.width * .6, 0)
      ..quadraticBezierTo(
        size.width * .7,
        size.height * .108,
        size.width * .9,
        size.height * .05,
      )
      ..arcToPoint(
        Offset(
          size.width * .93,
          size.height * .85,
        ),
        radius: Radius.circular(size.height * .05),
        largeArc: true,
      )
      ..cubicTo(
        size.width * .5,
        size.height * .84,
        size.width * .5,
        size.height * .86,
        0,
        size.height * .93,
      )
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
