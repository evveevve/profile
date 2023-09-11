import 'package:flutter/material.dart';
import 'package:profile/components/drawer_tile.dart';

const primaryColor = Color.fromRGBO(33, 222, 187, 1);
const backgroundColor = Color.fromRGBO(26, 26, 46, 1);
const headingColor = Color.fromRGBO(215, 225, 243, 1);
const contentColor = Color.fromRGBO(162, 169, 189, 1);
const drawerColor = Color.fromRGBO(22, 33, 62, 1);
const buttonOverlay = MaterialStatePropertyAll(Colors.transparent);
const buttonColor = MaterialStatePropertyAll(primaryColor);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double desktopWidth = 1000;
double mobileWidth = 768;

List<Widget> navbarActions(String title)=> [
  const DrawrTile(
    num: "01.",
    text: "About",
    size: 15,
    fontWeight: FontWeight.w400,
  ),
  const SizedBox(
    width: 10,
  ),
  const DrawrTile(
    num: "02.",
    text: "Experience",
    size: 15,
    fontWeight: FontWeight.w400,
  ),
  const SizedBox(
    width: 10,
  ),
  const DrawrTile(
    num: "03.",
    text: "Projects",
    size: 15,
    fontWeight: FontWeight.w400,
  ),
  const SizedBox(
    width: 10,
  ),
  const DrawrTile(
    num: "04.",
    text: "Contact",
    size: 15,
    fontWeight: FontWeight.w400,
  ),
  const SizedBox(
    width: 10,
  ),
  Padding(
    padding: const EdgeInsets.only(top: 9, bottom: 9, right: 20),
    child: MyButton(title: title,),
  ),
];

class MyButton extends StatelessWidget {
  const MyButton({ required this.title,
    super.key,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: buttonColor,
        side: const MaterialStatePropertyAll(
          BorderSide(color: primaryColor, width: 1.5),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: headingColor, width: 3),
          ),
        ),
      ),
      onPressed: () {},
      child:  Text(
       title,
        style:const  TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}
