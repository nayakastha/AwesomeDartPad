import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Postman(),
      ),
    );
  }
}

class Postman extends StatefulWidget {
  @override
  _PostmanState createState() => _PostmanState();
}

class _PostmanState extends State<Postman> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween<double>(begin: 0, end: 2).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear));

    animation.addListener(() {
      setState(() {});
    });

    animationController
        .forward()
        .whenComplete(() => animationController.repeat());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PostmanPainter(rotationFactor: animation.value),
    );
  }
}

class PostmanPainter extends CustomPainter {
  double rotationFactor;

  PostmanPainter({this.rotationFactor});

  @override
  void paint(Canvas canvas, Size size) {
    Offset centerOffset = Offset(size.width / 2, size.height / 2);

    Paint innerPaint = Paint()
      ..color = Colors.orange
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Paint outerPaint = Paint()
      ..color = Colors.orange
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double rotationAngle = rotationFactor * math.pi;
    double initialDisplacement = 0.75 * math.pi;

    canvas.drawCircle(centerOffset, 20.0, innerPaint);
    canvas.drawCircle(centerOffset, 40.0, outerPaint);
    canvas.drawCircle(centerOffset, 60.0, outerPaint);
    canvas.drawCircle(centerOffset, 80.0, outerPaint);
    canvas.drawCircle(
        Offset(
            size.width / 2 +
                40.0 * math.cos(initialDisplacement + rotationAngle * 4),
            size.height / 2 +
                40.0 * math.sin(initialDisplacement + rotationAngle * 4)),
        6.0,
        innerPaint);
    canvas.drawCircle(
        Offset(
            size.width / 2 +
                60.0 * math.cos(initialDisplacement + rotationAngle * 2),
            size.height / 2 +
                60.0 * math.sin(initialDisplacement + rotationAngle * 2)),
        6.0,
        innerPaint);
    canvas.drawCircle(
        Offset(
            size.width / 2 +
                80.0 * math.cos(initialDisplacement + rotationAngle),
            size.height / 2 +
                80.0 * math.sin(initialDisplacement + rotationAngle)),
        6.0,
        innerPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
