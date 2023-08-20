import 'package:flutter/material.dart';
import 'package:timeline/components/my_timeline_tile.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children: const [
            //start timeline
            MyTimeLineTiLe(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventcard: Text('ORDER PLACED',style: TextStyle(
                color: Colors.white
              ),),
            ),

            //middle timeline
            MyTimeLineTiLe(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventcard: Text('ORDER SHIPPED',style: TextStyle(
                  color: Colors.white
              ),),
            ),

            //end timeline
            MyTimeLineTiLe(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventcard: Text('ORDER DELIVERED',style: TextStyle(
                  color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
