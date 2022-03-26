import 'package:first_app/modules/tabs/AlarmScreen.dart';
import 'package:first_app/modules/tabs/ClockScreen.dart';
import 'package:first_app/modules/tabs/StopWatchScreen.dart';
import 'package:first_app/modules/tabs/TimerScreen.dart';
import 'package:flutter/material.dart';

class ClockApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 4,
      child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,
          title: Text('Clock App'),centerTitle: true, shadowColor: Colors.amber, elevation: 1,
      bottom:TabBar(

        tabs: [
          Tab(child:Text('Clock',style:TextStyle(color: Colors.amber)),
            icon:  Image.asset('images/clock.png',height: 30.0),),
          Tab(child:Text('Alarm',style:TextStyle(color: Colors.amber)),
              icon:  Image.asset('images/external-alarm-back-to-school-fauzidea-blue-fauzidea.png',height: 30.0)),
          Tab(child:Text('Timer',style:TextStyle(color: Colors.amber)),
              icon: Image.asset('images/timer.png',height: 30.0)),
          Tab(child:
          Center(child: Text('Stop Watch',style:TextStyle(color: Colors.amber),maxLines: 2,)),
            icon:  Image.asset('images/external-stopwatch-fitness-and-gym-justicon-lineal-justicon.png',height: 30.0),),



        ],
      ), ),

      body: TabBarView(
        children: [
          ClockScreen(),
          AlarmScreen(),
          TimerScreen(),
          StopWatchScreen(),

        ],
      ),


    )
  );
  }
}
