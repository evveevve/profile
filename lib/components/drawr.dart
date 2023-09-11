import 'package:flutter/material.dart';
import 'package:profile/constants.dart';
import 'package:profile/components/drawer_tile.dart';

class Drawr extends StatelessWidget {
  const Drawr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: drawerColor,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              splashRadius: 1,
              icon: const Icon(
                Icons.arrow_back,
                color: contentColor,
              ),
            ),
          ),
        const  DrawrTile(
            num: "01.",
            text: "About",
            size: 21,
          ),
          const Spacer(),
          const DrawrTile(
            num: "02.",
            text: "Experience",
            size: 21,
          ),
          const Spacer(),
          const DrawrTile(
            num: "03.",
            text: "Projects",
            size: 21,
          ),
          const Spacer(),
          const DrawrTile(
            num: "04.",
            text: "Contact",
            size: 21,
          ),
          const Spacer(),
          TextButton(
            style: const ButtonStyle(
                foregroundColor: buttonColor, overlayColor: buttonOverlay),
            onPressed: () {},
            child: const Text(
              'Resume',
              style: TextStyle(fontSize: 21),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
