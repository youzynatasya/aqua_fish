import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class kontrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        kontrolpH(),
        kontrolSuhu(),
      ],
    ));
  }
}

class kontrolpH extends StatelessWidget {
  const kontrolpH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            width: 165,
            height: 165,
            // padding: const EdgeInsets.symmetric(vertical: 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  color: Colors.white,
                )
              ],
            ),
            child: SfRadialGauge(
                //title: GaugeTitle(text: "Speed Meter"), //title for guage
                //enableLoadingAnimation:
                //    true, //show meter pointer movement while loading
                //animationDuration: 4500, //pointer movement speed
                axes: <RadialAxis>[
                  //Radial Guage Axix, use other Guage type here
                  RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                    //Guage Ranges
                    GaugeRange(
                        startValue: 0,
                        endValue: 50, //start and end point of range
                        color: Colors.green,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 50,
                        endValue: 100,
                        color: Colors.orange,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 100,
                        endValue: 150,
                        color: Colors.red,
                        startWidth: 10,
                        endWidth: 10)
                    //add more Guage Range here
                  ], pointers: <GaugePointer>[
                    NeedlePointer(
                      value: 80,
                    ) //add needlePointer here
                    //set value of pointer to 80, it will point to '80' in guage
                  ], annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: Text('80.0',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.5),
                    //add more annotations 'texts inside guage' here
                  ])
                ]),
          ),
        ],
      ),
    );
  }
}

class kontrolSuhu extends StatelessWidget {
  const kontrolSuhu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            width: 165,
            height: 165,

            // padding: const EdgeInsets.symmetric(vertical: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  color: Colors.white,
                )
              ],
            ),
            child: SfRadialGauge(
                //title: GaugeTitle(text: "Speed Meter"), //title for guage
                //enableLoadingAnimation:
                //    true, //show meter pointer movement while loading
                //animationDuration: 4500, //pointer movement speed
                axes: <RadialAxis>[
                  //Radial Guage Axix, use other Guage type here
                  RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                    //Guage Ranges
                    GaugeRange(
                        startValue: 0,
                        endValue: 50, //start and end point of range
                        color: Colors.green,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 50,
                        endValue: 100,
                        color: Colors.orange,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 100,
                        endValue: 150,
                        color: Colors.red,
                        startWidth: 10,
                        endWidth: 10)
                    //add more Guage Range here
                  ], pointers: <GaugePointer>[
                    NeedlePointer(
                      value: 80,
                    ) //add needlePointer here
                    //set value of pointer to 80, it will point to '80' in guage
                  ], annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: Text('80.0',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.5),
                    //add more annotations 'texts inside guage' here
                  ])
                ]),
          ),
        ],
      ),
    );
  }
}
