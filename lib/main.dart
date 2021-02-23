import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_painter.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget {

  final double spacing = 24.0;

  @override
  Widget build(BuildContext context, ScopedReader watch) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Discount Cards'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '32',
                colours:  [Color.fromRGBO(162, 196, 247, 1), Color.fromRGBO(203, 196, 247, 1), Color.fromRGBO(196, 150, 212, 1)],
              ),
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '12',
                colours:  [Color.fromRGBO(237, 136, 151, 1), Color.fromRGBO(243, 185, 155, 1), Color.fromRGBO(246, 205, 139, 1)],
              ),
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '25',
                colours:  [Color.fromRGBO(143, 239, 205, 1), Color.fromRGBO(97, 158, 238, 1), Color.fromRGBO(157, 200, 244, 1)],
              ),
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '32',
                colours:  [Color.fromRGBO(162, 196, 247, 1), Color.fromRGBO(203, 196, 247, 1), Color.fromRGBO(196, 150, 212, 1)],
              ),
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '12',
                colours:  [Color.fromRGBO(237, 136, 151, 1), Color.fromRGBO(243, 185, 155, 1), Color.fromRGBO(246, 205, 139, 1)],
              ),
              SizedBox(height: spacing,),
              DiscountTicket(
                discountAmount: '25',
                colours:  [Color.fromRGBO(143, 239, 205, 1), Color.fromRGBO(97, 158, 238, 1), Color.fromRGBO(157, 200, 244, 1)],
              ),
              SizedBox(height: spacing,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //
        },
      ),
    );
  }
}

class DiscountTicket extends StatelessWidget {

  DiscountTicket({@required this.discountAmount, @required this.colours});

  final String discountAmount;
  final List<Color> colours;

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return FittedBox(
      child: Stack(
        children: [
          CustomPaint(
            size: Size(screenWidth, (screenWidth*0.45).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(
              colourA: colours[0],
              colourB: colours[1],
              colourC: colours[2],
            ),
          ),
          Positioned.fill(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: RotatedBox(
                          child: Text(
                              'DISCOUNT',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                fontSize: 23.0
                            ),
                          ),
                          quarterTurns: 3,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    '$discountAmount%',
                                    style: TextStyle(
                                        fontSize: 64.0,
                                        color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoCondensed',
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 6.0,
                                          color: Color.fromRGBO(0, 0, 0, .18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'At selected outlets. Terms and conditions apply',
                                  style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.barcode, size: 60.0,),
                                          FaIcon(FontAwesomeIcons.barcode, size: 60.0,),
                                        ],
                                      ),
                                      Text('1234567890'),
                                    ],
                                  )
                                ),
                              ),
                              Expanded(child: Container()
                                // child: Container(
                                //   height: 76,
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //     crossAxisAlignment: CrossAxisAlignment.end,
                                //     children: [
                                //       Text('VIEW', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
                                //       Text('REDEEM', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
                                //     ],
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ],
                      )
                  )
                ],
              )
          ),
          Positioned(
            bottom: 10.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('VIEW', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
                SizedBox(width: 26.0,),
                Text('REDEEM', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
              ],
            ),
          )
        ],
      ),
    );
  }
}


