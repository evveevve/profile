
import 'package:flutter/material.dart';
import 'package:profile/constants.dart';

class DrawrTile extends StatefulWidget {
  const DrawrTile(
      {required this.num,
      required this.text,
      required this.size,
      this.fontWeight,
      this.color = headingColor,
      super.key});
  final String num;
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color color;
 



  @override
  State<DrawrTile> createState() => _DrawrTileState(color);
}

class _DrawrTileState extends State<DrawrTile> {
  _DrawrTileState(this._color);
  Color _color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:(){},
      onHover: (e) {
        if (e) {
          setState(() {
            _color = primaryColor;
          });
        } else {
          setState(() {
            _color = widget.color;
          });
        }
      },
      style: const ButtonStyle(overlayColor: buttonOverlay),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.num,
            style: TextStyle(
                color: primaryColor,
                fontSize: widget.size - 1,
                fontWeight: widget.fontWeight),
          ),
          Text(
            widget.text,
            style: TextStyle(
                color: _color,
                fontSize: widget.size,
                fontWeight: widget.fontWeight),
          ),
        ],
      ),
    );
  }
}
