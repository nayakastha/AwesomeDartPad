import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlankCanvas(),
  ));
}

class BlankCanvas extends StatefulWidget {
  @override
  _BlankCanvasState createState() => _BlankCanvasState();
}

class _BlankCanvasState extends State<BlankCanvas> {
  List<Offset> _coordinates = <Offset>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _localPosition =
                  object.globalToLocal(details.globalPosition);
              _coordinates = List.from(_coordinates)..add(_localPosition);
            });
          },
          onPanEnd: (DragEndDetails details) => _coordinates.add(null),
          child: CustomPaint(
            painter: Draw(coordinates: _coordinates),
            size: Size.infinite,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        icon: const Icon(Icons.clear),
        label: const Text("Clear", style: TextStyle(color: Colors.white)),
        onPressed: () => _coordinates.clear(),
      ),
    );
  }
}

class Draw extends CustomPainter {
  List<Offset> coordinates;

  Draw({this.coordinates});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.green;
    paint.strokeWidth = 5.0;

    for (int i = 0; i < coordinates.length - 1; i++) {
      if (coordinates[i] != null && coordinates[i + 1] != null) {
        canvas.drawLine(coordinates[i], coordinates[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Draw oldDelegate) =>
      oldDelegate.coordinates != coordinates;
}
