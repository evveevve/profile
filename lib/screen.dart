import 'package:flutter/material.dart';
import 'package:profile/components/drawer_tile.dart';
import 'package:profile/components/navbar.dart';
import 'package:profile/components/drawr.dart';
import 'constants.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  double cursorX = 0;
  double cursorY = 0;
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    double width = screenWidth(context);
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      onHover: (event) => setState(() {
        cursorX = event.position.dx;
        cursorY = event.position.dy;
      }),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: backgroundColor,
            appBar:
                navBar(width > mobileWidth ? navbarActions('Resume') : null),
            endDrawer: width <= mobileWidth ? const Drawr() : null,
            body: ListView(
              children: const [
                Text('Hey, My name is',style: TextStyle(color: primaryColor),),
                Text('Himanshu', style: TextStyle(color: headingColor)),
                Text('I build cross-platform apps',
                    style: TextStyle(color: contentColor)),
                Text(
                  "Hi, i'm Himanshu, an app developer , build multiple aesthetic applications. My passion lies in creating visually appealing and user-friendly applications with efficient user interfaces. I have a keen eye for design",style: TextStyle(color: contentColor)
                ),
                MyButton(title: "Explore more about me."),Row(children: [DrawrTile(num: "01. ", text: "About me", size: 31)],)
              ],
            ),
          ),
          if (isHovering)
            Positioned(
              left: cursorX - 100, // Adjust position for centering
              top: cursorY - 100, // Adjust position for spacing
              child: IgnorePointer(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(colors: [
                      Color.fromARGB(55, 255, 255, 255),
                      Color.fromARGB(17, 255, 255, 255),
                      Colors.transparent
                    ]),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
