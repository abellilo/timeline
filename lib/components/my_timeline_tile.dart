import 'package:flutter/material.dart';
import 'package:timeline/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTiLe extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventcard;

  const MyTimeLineTiLe({Key? key,
    required this.isFirst,
    required this.isLast,
    required this.eventcard,
    required this.isPast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //gap between events
      height: 200,
      child: TimelineTile(
        isLast: isLast,
        isFirst: isFirst,
        //decorate the line
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100),
        //decorate icon
        indicatorStyle: IndicatorStyle(
            width: 30,
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
            iconStyle: IconStyle(
                iconData: Icons.done,
                color: isPast ? Colors.white : Colors.deepPurple.shade100)),
        //event card
        endChild: EventCard(
          isPast: isPast,
          child: eventcard,
        ),
      ),
    );
  }
}
