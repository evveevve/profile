import 'package:flutter/material.dart';
import 'package:profile/constants.dart';

AppBar navBar(List<Widget>? action) => AppBar(
      iconTheme: const IconThemeData(color: headingColor),
      elevation: 0.5,
      backgroundColor: backgroundColor,
      leading: Image.asset("assets/h_ring.png"),
      actions: action,
    );
