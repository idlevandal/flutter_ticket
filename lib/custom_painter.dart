import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  final Color colourA;
  final Color colourB;
  final Color colourC;

  RPSCustomPainter({this.colourA, this.colourB, this.colourC});

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          colourA,
          colourB,
        ],
      ).createShader(Offset.zero & size)
      ..style = PaintingStyle.fill;
      // ..strokeWidth = 1;

    Paint paint_1 = new Paint()
      ..color = colourC
      ..style = PaintingStyle.fill;


    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.1000000);
    path_0.quadraticBezierTo(size.width*-0.0016417,size.height*-0.0036800,size.width*0.0416667,0);
    path_0.cubicTo(size.width*0.2708333,0,size.width*0.7291667,0,size.width*0.9583333,0);
    path_0.quadraticBezierTo(size.width*1.0012167,size.height*-0.0039000,size.width,size.height*0.1000000);
    path_0.quadraticBezierTo(size.width,size.height*0.3250000,size.width,size.height*0.4000000);
    path_0.cubicTo(size.width*0.9331333,size.height*0.4001800,size.width*0.9336667,size.height*0.5997800,size.width,size.height*0.6000000);
    path_0.cubicTo(size.width,size.height*0.6750000,size.width,size.height*0.8250000,size.width,size.height*0.9000000);
    path_0.quadraticBezierTo(size.width*1.0015000,size.height*1.0034000,size.width*0.9583333,size.height);
    path_0.quadraticBezierTo(size.width*0.2708333,size.height,size.width*0.0416667,size.height);
    path_0.quadraticBezierTo(size.width*-0.0012917,size.height*1.0036200,0,size.height*0.9000000);
    path_0.quadraticBezierTo(0,size.height*0.6750000,0,size.height*0.6000000);
    path_0.cubicTo(size.width*0.0668333,size.height*0.6003000,size.width*0.0664833,size.height*0.4000800,0,size.height*0.4000000);
    path_0.quadraticBezierTo(0,size.height*0.3250000,0,size.height*0.1000000);
    path_0.close();

    // 2
    Path path_1 = Path();
    path_1.moveTo(0,size.height*0.1000000);
    path_1.quadraticBezierTo(size.width*-0.0012500,size.height*-0.0041600,size.width*0.0416667,0);
    path_1.quadraticBezierTo(size.width*0.0729167,0,size.width*0.1666667,0);
    path_1.lineTo(size.width*0.1666667,size.height);
    path_1.lineTo(size.width*0.0416667,size.height);
    path_1.quadraticBezierTo(size.width*-0.0015250,size.height*1.0031200,0,size.height*0.9000000);
    path_1.cubicTo(0,size.height*0.8250000,0,size.height*0.6750000,0,size.height*0.6000000);
    path_1.cubicTo(size.width*0.0668333,size.height*0.6003000,size.width*0.0664833,size.height*0.4000800,0,size.height*0.4000000);
    path_1.quadraticBezierTo(0,size.height*0.3250000,0,size.height*0.1000000);
    path_1.close();

    canvas.drawShadow(path_0, Colors.grey.withAlpha(70), 5.0, false);
    canvas.drawPath(path_0, paint_0);
    canvas.drawPath(path_1, paint_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
