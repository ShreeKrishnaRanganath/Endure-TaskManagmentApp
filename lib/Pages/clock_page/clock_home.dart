import 'dart:async';
import 'dart:math';

import 'package:endure/Pages/clock_page/analogclock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class ClockHome extends StatefulWidget {
  const ClockHome({Key? key}) : super(key: key);

  @override
  State<ClockHome> createState() => _ClockHomeState();
}

class _ClockHomeState extends State<ClockHome> {
  Timer? timer;

  final now = new DateTime.now();
  late String formatter = DateFormat.yMMMMd('en_US').format(now);
  late String timezo = now.timeZoneName;

  // late Random rnd = new Random();
  // int randomnumber = rnd.nextInt(100);
  int intValue = Random().nextInt(20);
  List joke = [
    "“The elevator to success is out of order. You’ll have to use the stairs, one step at a time.” - Joe Girard ",
    " “If you think you are too small to make a difference, try sleeping with a mosquito.” - Dalai Lama",
    "“I didn’t fail the test. I just found 100 ways to do it wrong.” - Benjamin Franklin",
    "“Think like a proton. Always positive.”",
    " “Be happy – it drives people crazy.” ",
    "“The road to success is dotted with many tempting parking spaces.” - Will Rogers",
    "“Leadership is the art of getting someone else to do something you want done because he wants to do it.” - Dwight D. Eisenhower",
    "“A diamond is merely a lump of coal that did well under pressure.” ",
    "“Friendship is like peeing on yourself: everyone can see it, but only you get the warm feeling that it brings.” - Robert Bloch",
    "“Women who seek to be equal with men lack ambition.” - Marilyn Monroe",
    "“Happiness is just sadness that hasn’t happened yet.”",
    "“Dreams are like rainbows. Only idiots chase them.” ",
    "“If the world didn’t suck we’d all fly into space.” ",
    " “The light at the end of the tunnel has been turned off due to budget cuts.”",
    " “Age is of no importance unless you’re a cheese.” -Billie Burke",
    "“By working faithfully eight hours a day you may eventually get to be boss and work twelve hours a day.” - Robert Frost",
    " “The trouble with having an open mind, of course, is that people will insist on coming along and trying to put things in it.” - Terry Pratchett",
    "“When tempted to fight fire with fire, remember that the Fire Department usually uses water.”",
    " “I am so clever that sometimes I don’t understand a single word of what I am saying.” - Oscar Wilde",
    "“Life is like a sewer… what you get out of it depends on what you put into it.” - Tom Lehrer",
    "“You can’t have everything. Where would you put it?” - Steven Wright",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6FBF4),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(83, 153, 177, 156),
                  borderRadius: BorderRadius.only(
                      // bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(120))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        // "Your Dose of Motivation ",
                        "Your Dose of Motivation",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 13.0, left: 38.0, right: 38.0, bottom: 30.0),
                      child: Text(
                        "${joke[intValue]} ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 38.0, right: 38.0, bottom: 25.0),
                      child: Text(
                        "${formatter} ...   ${timezo}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: paintclock(),
            ),
            Container(
              height: 57.0,
            ),
          ],
        ),
      ),
    );
  }
}
